// xc_work/v/2.sv
// /home/ibarry/Project-Zipline-master/dv/agents/apb/apb_xactor.v:10
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
module apb_xactor(psel,penable,paddr,pwdata,pwrite,clk,reset_n,prdata,pready,pslverr);
// exported object:  (scope) read 
// exported object:  (scope) write 
// exported object:  (var) _zyixc_port_0_0_isf (R)  
// exported object:  (var) _zyixc_port_0_0_osf (R)  
// exported object:  (var) _zyixc_port_0_1_isf (R)  
// exported object:  (var) _zyixc_port_0_1_osf (R)  
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
bit [7:0] _zyixc_port_0_0_h2s ;
bit [95:0] _zyixc_port_0_0_s2h ;
wire  [95:0] _zyixc_port_0_0_s2hW ;
bit _zyixc_port_0_0_req;
bit _zyixc_port_0_0_ack;
bit _zyixc_port_0_0_isf;
bit _zyixc_port_0_0_osf;
bit [39:0] _zyixc_port_0_1_h2s ;
bit [63:0] _zyixc_port_0_1_s2h ;
wire  [63:0] _zyixc_port_0_1_s2hW ;
bit _zyixc_port_0_1_req;
bit _zyixc_port_0_1_ack;
bit _zyixc_port_0_1_isf;
bit _zyixc_port_0_1_osf;
reg [63:0] _zyaddr_L62_tfiV0_M2_pbcG0 ;
reg [31:0] _zydata_L63_tfiV1_M2_pbcG1 ;
reg _zyresponse_L64_tfiV2_M2_pbcG2;
reg [63:0] _zyaddr_L95_tfiV3_M2_pbcG3 ;
reg [31:0] _zydata_L96_tfiV4_M2_pbcG4 ;
reg _zyresponse_L97_tfiV5_M2_pbcG5;
reg _zyM2L61_pbcCapEn0;
// quickturn keep_net _zyM2L61_pbcCapEn0
reg _zyM2L73_pbcCapEn1;
// quickturn keep_net _zyM2L73_pbcCapEn1
reg _zyM2L79_pbcCapEn2;
// quickturn keep_net _zyM2L79_pbcCapEn2
reg _zyM2L90_pbcCapEn3;
// quickturn keep_net _zyM2L90_pbcCapEn3
wire  _zyM2L61_pbcMevClk4;
wire  _zyM2L61_pbcReq4;
wire  _zyM2L61_pbcBusy4;
wire  _zyM2L61_pbcWait4;
reg _zyM2L94_pbcCapEn5;
// quickturn keep_net _zyM2L94_pbcCapEn5
reg _zyM2L104_pbcCapEn6;
// quickturn keep_net _zyM2L104_pbcCapEn6
reg _zyM2L110_pbcCapEn7;
// quickturn keep_net _zyM2L110_pbcCapEn7
reg _zyM2L121_pbcCapEn8;
// quickturn keep_net _zyM2L121_pbcCapEn8
wire  _zyM2L94_pbcMevClk9;
wire  _zyM2L94_pbcReq9;
wire  _zyM2L94_pbcBusy9;
wire  _zyM2L94_pbcWait9;
reg [2:0]  _zyM2L61_pbcFsm0_s;
// quickturn keep_net _zyM2L61_pbcFsm0_s
reg _zyM2L61_pbcEn10;
reg [2:0]  _zyM2L94_pbcFsm3_s;
// quickturn keep_net _zyM2L94_pbcFsm3_s
reg _zyM2L94_pbcEn11;
wire  _zzM2_bcBehEvalClk;
wire  _zzM2_bcBehHalt;
reg [31:0]  _zzM2_bcBehEval;
// quickturn keep_net _zzM2_bcBehEval
wire  _zzmdxOne;
reg _zzM2L19_psel_mdxTmp0;
reg _zzM2L20_penable_mdxTmp1;
reg _zzM2L23_pwrite_mdxTmp2;
reg [19:0] _zzM2L21_paddr_mdxTmp3 ;
reg [31:0] _zzM2L22_pwdata_mdxTmp4 ;
reg [7:0] _zzM2L29_bus_timer_mdxTmp5 ;
reg _zzM2L46_mdxP0_En;
wire  _zzM2L46_mdxP0_EnNxt;
wire  _zzM2L46_mdxP0_On;
reg _zzM2L46_mdxP0_psel_wr0;
reg _zzM2L46_mdxP0_psel_Dwen0;
reg _zzM2L46_mdxP0_psel_DwenOn0;
reg _zzM2L46_mdxP0_penable_wr1;
reg _zzM2L46_mdxP0_penable_Dwen1;
reg _zzM2L46_mdxP0_penable_DwenOn1;
reg _zzM2L46_mdxP0_pwrite_wr2;
reg _zzM2L46_mdxP0_pwrite_Dwen2;
reg _zzM2L46_mdxP0_pwrite_DwenOn2;
reg [19:0] _zzM2L46_mdxP0_paddr_wr3 ;
reg _zzM2L46_mdxP0_paddr_Dwen3;
reg _zzM2L46_mdxP0_paddr_DwenOn3;
reg [31:0] _zzM2L46_mdxP0_pwdata_wr4 ;
reg _zzM2L46_mdxP0_pwdata_Dwen4;
reg _zzM2L46_mdxP0_pwdata_DwenOn4;
reg [7:0] _zzM2L46_mdxP0_bus_timer_wr5 ;
reg _zzM2L46_mdxP0_bus_timer_Dwen5;
reg _zzM2L46_mdxP0_bus_timer_DwenOn5;
reg _zzM2L61_mdxP1_En;
wire  _zzM2L61_mdxP1_EnNxt;
wire  _zzM2L61_mdxP1_On;
reg _zzM2L61_mdxP1_psel_wr0;
reg _zzM2L61_mdxP1_psel_Dwen0;
reg _zzM2L61_mdxP1_psel_DwenOn0;
reg _zzM2L61_mdxP1_penable_wr1;
reg _zzM2L61_mdxP1_penable_Dwen1;
reg _zzM2L61_mdxP1_penable_DwenOn1;
reg _zzM2L61_mdxP1_pwrite_wr2;
reg _zzM2L61_mdxP1_pwrite_Dwen2;
reg _zzM2L61_mdxP1_pwrite_DwenOn2;
reg [19:0] _zzM2L61_mdxP1_paddr_wr3 ;
reg _zzM2L61_mdxP1_paddr_Dwen3;
reg _zzM2L61_mdxP1_paddr_DwenOn3;
reg [31:0] _zzM2L61_mdxP1_pwdata_wr4 ;
reg _zzM2L61_mdxP1_pwdata_Dwen4;
reg _zzM2L61_mdxP1_pwdata_DwenOn4;
reg [7:0] _zzM2L61_mdxP1_bus_timer_wr5 ;
reg _zzM2L61_mdxP1_bus_timer_Dwen5;
reg _zzM2L61_mdxP1_bus_timer_DwenOn5;
reg _zzM2L94_mdxP2_En;
wire  _zzM2L94_mdxP2_EnNxt;
wire  _zzM2L94_mdxP2_On;
reg _zzM2L94_mdxP2_psel_wr0;
reg _zzM2L94_mdxP2_psel_Dwen0;
reg _zzM2L94_mdxP2_psel_DwenOn0;
reg _zzM2L94_mdxP2_penable_wr1;
reg _zzM2L94_mdxP2_penable_Dwen1;
reg _zzM2L94_mdxP2_penable_DwenOn1;
reg _zzM2L94_mdxP2_pwrite_wr2;
reg _zzM2L94_mdxP2_pwrite_Dwen2;
reg _zzM2L94_mdxP2_pwrite_DwenOn2;
reg [19:0] _zzM2L94_mdxP2_paddr_wr3 ;
reg _zzM2L94_mdxP2_paddr_Dwen3;
reg _zzM2L94_mdxP2_paddr_DwenOn3;
reg [7:0] _zzM2L94_mdxP2_bus_timer_wr4 ;
reg _zzM2L94_mdxP2_bus_timer_Dwen4;
reg _zzM2L94_mdxP2_bus_timer_DwenOn4;
reg _zzpsel_M2L19_mdxSvLt6;
reg _zzpenable_M2L20_mdxSvLt7;
reg _zzpwrite_M2L23_mdxSvLt8;
reg [19:0] _zzpaddr_M2L21_mdxSvLt9 ;
reg [31:0] _zzpwdata_M2L22_mdxSvLt10 ;
reg [7:0] _zzbus_timer_M2L29_mdxSvLt11 ;
// F1, L12
ixc_assign  #(1) _zz_strnp_0 (_zy_simnet_psel_0_w$,psel);
// F1, L12
ixc_assign  #(1) _zz_strnp_1 (_zy_simnet_penable_1_w$,penable);
// F1, L12
ixc_assign  #(20) _zz_strnp_2 (_zy_simnet_paddr_2_w$,paddr);
// F1, L12
ixc_assign  #(32) _zz_strnp_3 (_zy_simnet_pwdata_3_w$,pwdata);
// F1, L12
ixc_assign  #(1) _zz_strnp_4 (_zy_simnet_pwrite_4_w$,pwrite);
// F1, L10
ixc_mem_call #(96,8,0,0) _zzixc_tfport_0_0 (_zyixc_port_0_0_req,_zyixc_port_0_0_s2h,_zyixc_port_0_0_isf,_zyixc_port_0_0_ack,_zyixc_port_0_0_h2s,_zyixc_port_0_0_osf,1'b0,1'b0);
// F1, L10
ixc_mem_call #(64,40,0,0) _zzixc_tfport_0_1 (_zyixc_port_0_1_req,_zyixc_port_0_1_s2h,_zyixc_port_0_1_isf,_zyixc_port_0_1_ack,_zyixc_port_0_1_h2s,_zyixc_port_0_1_osf,1'b0,1'b0);
// F1, L61
ixc_mevClk #(2,0,0,2'b01,2'b0,2'b0,2'b0,2'b0,2'b0) _zzM2L61_pbcMevClk4 (_zyM2L61_pbcMevClk4,{_zyixc_port_0_0_req,clk},{_zyM2L61_pbcCapEn0,((_zyM2L73_pbcCapEn1 | _zyM2L79_pbcCapEn2) | _zyM2L90_pbcCapEn3)},1'b0,1'b0,_zyM2L61_pbcReq4,_zyM2L61_pbcBusy4,_zyM2L61_pbcWait4);
// F1, L94
ixc_mevClk #(2,0,0,2'b01,2'b0,2'b0,2'b0,2'b0,2'b0) _zzM2L94_pbcMevClk9 (_zyM2L94_pbcMevClk9,{_zyixc_port_0_1_req,clk},{_zyM2L94_pbcCapEn5,((_zyM2L104_pbcCapEn6 | _zyM2L110_pbcCapEn7) | _zyM2L121_pbcCapEn8)},1'b0,1'b0,_zyM2L94_pbcReq9,_zyM2L94_pbcBusy9,_zyM2L94_pbcWait9);
// F1, L10
ixc_capLoopXp _zzM2L10_bcBehEvalP0 (_zzM2_bcBehEvalClk,1'b0,,_zzM2_bcBehHalt);
// F1, L46
ixc_mdrOn _zzM2L46_mdxP0_OnP (_zzM2L46_mdxP0_On,_zzM2L46_mdxP0_EnNxt,_zzM2L46_mdxP0_En);
// F1, L61
ixc_mdrOn _zzM2L61_mdxP1_OnP (_zzM2L61_mdxP1_On,_zzM2L61_mdxP1_EnNxt,_zzM2L61_mdxP1_En);
// F1, L94
ixc_mdrOn _zzM2L94_mdxP2_OnP (_zzM2L94_mdxP2_On,_zzM2L94_mdxP2_EnNxt,_zzM2L94_mdxP2_En);
// F1, L19
ixc_sampleLT #(1) _zzpsel_M2L19_mdxSpLt6 (_zzpsel_M2L19_mdxSvLt6,psel);
// F1, L20
ixc_sampleLT #(1) _zzpenable_M2L20_mdxSpLt7 (_zzpenable_M2L20_mdxSvLt7,penable);
// F1, L23
ixc_sampleLT #(1) _zzpwrite_M2L23_mdxSpLt8 (_zzpwrite_M2L23_mdxSvLt8,pwrite);
// F1, L21
ixc_sampleLT #(20) _zzpaddr_M2L21_mdxSpLt9 (_zzpaddr_M2L21_mdxSvLt9,paddr);
// F1, L22
ixc_sampleLT #(32) _zzpwdata_M2L22_mdxSpLt10 (_zzpwdata_M2L22_mdxSvLt10,pwdata);
// F1, L29
ixc_sampleLT #(8) _zzbus_timer_M2L29_mdxSpLt11 (_zzbus_timer_M2L29_mdxSvLt11,bus_timer);
  ixc_assign _zzmdx1 (_zzmdxOne, 1'b1);

// F1, L46
always 
 @(posedge clk)
  // F1, L46
  begin
   // F1, L46
   _zzM2L46_mdxP0_psel_Dwen0 = 1'b0;
   _zzM2L46_mdxP0_penable_Dwen1 = 1'b0;
   _zzM2L46_mdxP0_pwrite_Dwen2 = 1'b0;
   _zzM2L46_mdxP0_paddr_Dwen3 = 1'b0;
   _zzM2L46_mdxP0_pwdata_Dwen4 = 1'b0;
   _zzM2L46_mdxP0_bus_timer_Dwen5 = 1'b0;
   // F1, L47
   begin
    // F1, L48
    if (( !reset_n ))
     // F1, L49
     begin
      // F1, L50
      // F1, L50
      begin
       // F1, L50
       _zzM2L46_mdxP0_bus_timer_wr5 = 8'b0;
       _zzM2L46_mdxP0_bus_timer_Dwen5 = 1'b1;
       _zzM2L46_mdxP0_En = _zzM2L46_mdxP0_EnNxt;
      end
      // F1, L51
      begin
       // F1, L51
       _zzM2L46_mdxP0_psel_wr0 = 1'b0;
       _zzM2L46_mdxP0_psel_Dwen0 = 1'b1;
       _zzM2L46_mdxP0_En = _zzM2L46_mdxP0_EnNxt;
      end
      // F1, L52
      begin
       // F1, L52
       _zzM2L46_mdxP0_penable_wr1 = 1'b0;
       _zzM2L46_mdxP0_penable_Dwen1 = 1'b1;
       _zzM2L46_mdxP0_En = _zzM2L46_mdxP0_EnNxt;
      end
      // F1, L53
      begin
       // F1, L53
       _zzM2L46_mdxP0_paddr_wr3 = 20'b0;
       _zzM2L46_mdxP0_paddr_Dwen3 = 1'b1;
       _zzM2L46_mdxP0_En = _zzM2L46_mdxP0_EnNxt;
      end
      // F1, L54
      begin
       // F1, L54
       _zzM2L46_mdxP0_pwdata_wr4 = 32'b0;
       _zzM2L46_mdxP0_pwdata_Dwen4 = 1'b1;
       _zzM2L46_mdxP0_En = _zzM2L46_mdxP0_EnNxt;
      end
      // F1, L55
      begin
       // F1, L55
       _zzM2L46_mdxP0_pwrite_wr2 = 1'b0;
       _zzM2L46_mdxP0_pwrite_Dwen2 = 1'b1;
       _zzM2L46_mdxP0_En = _zzM2L46_mdxP0_EnNxt;
      end
     end
   end
  end
// F1, L61
always 
 @(posedge _zyM2L61_pbcMevClk4)
  // F1, L61
  begin
   // F1, L61
   _zzM2L61_mdxP1_psel_Dwen0 = 1'b0;
   _zzM2L61_mdxP1_penable_Dwen1 = 1'b0;
   _zzM2L61_mdxP1_pwrite_Dwen2 = 1'b0;
   _zzM2L61_mdxP1_paddr_Dwen3 = 1'b0;
   _zzM2L61_mdxP1_pwdata_Dwen4 = 1'b0;
   _zzM2L61_mdxP1_bus_timer_Dwen5 = 1'b0;
   // F1, L61
   begin
    // F1, L61
    // F1, L61
    begin:_zyM2L61_pbcFsm0
     // F1, L61
     case (_zyM2L61_pbcFsm0_s)
      3'b0:
       // F1, L61
       begin
        // F1, L61
        _zyM2L61_pbcCapEn0 = 1'b0;
        // F1, L61
        begin:_zy_zzblk_0_0_M2L61_pbcScp1
         // F1, L61
         // F1, L61
         begin:_zyifsyneCscp0_L61_M2_pbcScp2
          // F1, L61
          _zyaddr_L62_tfiV0_M2_pbcG0 = _zyixc_port_0_0_s2h[63:0];
          _zydata_L63_tfiV1_M2_pbcG1 = _zyixc_port_0_0_s2h[95:64];
          // F1, L67
          begin
          // F1, L67
          _zzM2L61_mdxP1_psel_wr0 = 1'b1;
          _zzM2L61_mdxP1_psel_Dwen0 = 1'b1;
          _zzM2L61_mdxP1_En = _zzM2L61_mdxP1_EnNxt;
          end
          // F1, L68
          begin
          // F1, L68
          _zzM2L61_mdxP1_penable_wr1 = 1'b0;
          _zzM2L61_mdxP1_penable_Dwen1 = 1'b1;
          _zzM2L61_mdxP1_En = _zzM2L61_mdxP1_EnNxt;
          end
          // F1, L69
          begin
          // F1, L69
          _zzM2L61_mdxP1_pwrite_wr2 = 1'b1;
          _zzM2L61_mdxP1_pwrite_Dwen2 = 1'b1;
          _zzM2L61_mdxP1_En = _zzM2L61_mdxP1_EnNxt;
          end
          // F1, L70
          begin
          // F1, L70
          _zzM2L61_mdxP1_paddr_wr3 = _zyaddr_L62_tfiV0_M2_pbcG0[31:0];
          _zzM2L61_mdxP1_paddr_Dwen3 = 1'b1;
          _zzM2L61_mdxP1_En = _zzM2L61_mdxP1_EnNxt;
          end
          // F1, L71
          begin
          // F1, L71
          _zzM2L61_mdxP1_pwdata_wr4 = _zydata_L63_tfiV1_M2_pbcG1[31:0];
          _zzM2L61_mdxP1_pwdata_Dwen4 = 1'b1;
          _zzM2L61_mdxP1_En = _zzM2L61_mdxP1_EnNxt;
          end
          _zyM2L73_pbcCapEn1 = 1'b1;
          _zyM2L61_pbcFsm0_s = 3'b01;
         end
        end
       end
      3'b01:
       // F1, L73
       begin
        // F1, L61
        _zyM2L61_pbcEn10 = 1'b1;
        _zyM2L73_pbcCapEn1 = 1'b0;
        // F1, L74
        begin
         // F1, L74
         _zzM2L61_mdxP1_penable_wr1 = 1'b1;
         _zzM2L61_mdxP1_penable_Dwen1 = 1'b1;
         _zzM2L61_mdxP1_En = _zzM2L61_mdxP1_EnNxt;
        end
        if ((( !pready ) && (bus_timer < 32'b01100100)))
         // F1, L77
         begin
          // F1, L78
          // F1, L78
          begin
          // F1, L78
          _zzM2L61_mdxP1_bus_timer_wr5 = (bus_timer + 32'b01);
          _zzM2L61_mdxP1_bus_timer_Dwen5 = 1'b1;
          _zzM2L61_mdxP1_En = _zzM2L61_mdxP1_EnNxt;
          end
          _zyM2L79_pbcCapEn2 = 1'b1;
          _zyM2L61_pbcFsm0_s = 3'b010;
          _zyM2L61_pbcEn10 = 1'b0;
         end
        if (_zyM2L61_pbcEn10)
         // F1, L82
         begin
          // F1, L82
          // F1, L82
          begin
          // F1, L82
          _zzM2L61_mdxP1_bus_timer_wr5 = 8'b0;
          _zzM2L61_mdxP1_bus_timer_Dwen5 = 1'b1;
          _zzM2L61_mdxP1_En = _zzM2L61_mdxP1_EnNxt;
          end
          // F1, L83
          begin
          // F1, L83
          _zzM2L61_mdxP1_psel_wr0 = 1'b0;
          _zzM2L61_mdxP1_psel_Dwen0 = 1'b1;
          _zzM2L61_mdxP1_En = _zzM2L61_mdxP1_EnNxt;
          end
          // F1, L84
          begin
          // F1, L84
          _zzM2L61_mdxP1_penable_wr1 = 1'b0;
          _zzM2L61_mdxP1_penable_Dwen1 = 1'b1;
          _zzM2L61_mdxP1_En = _zzM2L61_mdxP1_EnNxt;
          end
          // F1, L85
          begin
          // F1, L85
          _zzM2L61_mdxP1_pwrite_wr2 = 1'b0;
          _zzM2L61_mdxP1_pwrite_Dwen2 = 1'b1;
          _zzM2L61_mdxP1_En = _zzM2L61_mdxP1_EnNxt;
          end
          // F1, L86
          begin
          // F1, L86
          _zzM2L61_mdxP1_paddr_wr3 = 20'b0;
          _zzM2L61_mdxP1_paddr_Dwen3 = 1'b1;
          _zzM2L61_mdxP1_En = _zzM2L61_mdxP1_EnNxt;
          end
          // F1, L87
          begin
          // F1, L87
          _zzM2L61_mdxP1_pwdata_wr4 = 32'b0;
          _zzM2L61_mdxP1_pwdata_Dwen4 = 1'b1;
          _zzM2L61_mdxP1_En = _zzM2L61_mdxP1_EnNxt;
          end
          _zyresponse_L64_tfiV2_M2_pbcG2 <= (pslverr | (bus_timer == 32'b01100100));
          _zyM2L90_pbcCapEn3 = 1'b1;
          _zyM2L61_pbcFsm0_s = 3'b011;
         end
       end
      3'b010:
       // F1, L79
       begin
        // F1, L61
        _zyM2L61_pbcEn10 = 1'b1;
        _zyM2L79_pbcCapEn2 = 1'b0;
        if ((( !pready ) && (bus_timer < 32'b01100100)))
         // F1, L77
         begin
          // F1, L78
          // F1, L78
          begin
          // F1, L78
          _zzM2L61_mdxP1_bus_timer_wr5 = (bus_timer + 32'b01);
          _zzM2L61_mdxP1_bus_timer_Dwen5 = 1'b1;
          _zzM2L61_mdxP1_En = _zzM2L61_mdxP1_EnNxt;
          end
          _zyM2L79_pbcCapEn2 = 1'b1;
          _zyM2L61_pbcFsm0_s = 3'b010;
          _zyM2L61_pbcEn10 = 1'b0;
         end
        if (_zyM2L61_pbcEn10)
         // F1, L82
         begin
          // F1, L82
          // F1, L82
          begin
          // F1, L82
          _zzM2L61_mdxP1_bus_timer_wr5 = 8'b0;
          _zzM2L61_mdxP1_bus_timer_Dwen5 = 1'b1;
          _zzM2L61_mdxP1_En = _zzM2L61_mdxP1_EnNxt;
          end
          // F1, L83
          begin
          // F1, L83
          _zzM2L61_mdxP1_psel_wr0 = 1'b0;
          _zzM2L61_mdxP1_psel_Dwen0 = 1'b1;
          _zzM2L61_mdxP1_En = _zzM2L61_mdxP1_EnNxt;
          end
          // F1, L84
          begin
          // F1, L84
          _zzM2L61_mdxP1_penable_wr1 = 1'b0;
          _zzM2L61_mdxP1_penable_Dwen1 = 1'b1;
          _zzM2L61_mdxP1_En = _zzM2L61_mdxP1_EnNxt;
          end
          // F1, L85
          begin
          // F1, L85
          _zzM2L61_mdxP1_pwrite_wr2 = 1'b0;
          _zzM2L61_mdxP1_pwrite_Dwen2 = 1'b1;
          _zzM2L61_mdxP1_En = _zzM2L61_mdxP1_EnNxt;
          end
          // F1, L86
          begin
          // F1, L86
          _zzM2L61_mdxP1_paddr_wr3 = 20'b0;
          _zzM2L61_mdxP1_paddr_Dwen3 = 1'b1;
          _zzM2L61_mdxP1_En = _zzM2L61_mdxP1_EnNxt;
          end
          // F1, L87
          begin
          // F1, L87
          _zzM2L61_mdxP1_pwdata_wr4 = 32'b0;
          _zzM2L61_mdxP1_pwdata_Dwen4 = 1'b1;
          _zzM2L61_mdxP1_En = _zzM2L61_mdxP1_EnNxt;
          end
          _zyresponse_L64_tfiV2_M2_pbcG2 <= (pslverr | (bus_timer == 32'b01100100));
          _zyM2L90_pbcCapEn3 = 1'b1;
          _zyM2L61_pbcFsm0_s = 3'b011;
         end
       end
      3'b011:
       // F1, L90
       begin
        // F1, L90
        _zyM2L90_pbcCapEn3 = 1'b0;
        _zyixc_port_0_0_h2s[7:0] = _zyresponse_L64_tfiV2_M2_pbcG2;
        _zyixc_port_0_0_ack = ( ~_zyixc_port_0_0_ack );
        _zyM2L61_pbcCapEn0 = 1'b1;
        _zyM2L61_pbcFsm0_s = 3'b0;
       end
     endcase
    end
   end
  end
// F1, L94
always 
 @(posedge _zyM2L94_pbcMevClk9)
  // F1, L94
  begin
   // F1, L94
   _zzM2L94_mdxP2_psel_Dwen0 = 1'b0;
   _zzM2L94_mdxP2_penable_Dwen1 = 1'b0;
   _zzM2L94_mdxP2_pwrite_Dwen2 = 1'b0;
   _zzM2L94_mdxP2_paddr_Dwen3 = 1'b0;
   _zzM2L94_mdxP2_bus_timer_Dwen4 = 1'b0;
   // F1, L94
   begin
    // F1, L94
    // F1, L94
    begin:_zyM2L94_pbcFsm3
     // F1, L94
     case (_zyM2L94_pbcFsm3_s)
      3'b0:
       // F1, L94
       begin
        // F1, L94
        _zyM2L94_pbcCapEn5 = 1'b0;
        // F1, L94
        begin:_zy_zzblk_0_1_M2L94_pbcScp4
         // F1, L94
         // F1, L94
         begin:_zyifsyneCscp1_L94_M2_pbcScp5
          // F1, L94
          _zyaddr_L95_tfiV3_M2_pbcG3 = _zyixc_port_0_1_s2h[63:0];
          // F1, L99
          begin
          // F1, L99
          _zzM2L94_mdxP2_psel_wr0 = 1'b1;
          _zzM2L94_mdxP2_psel_Dwen0 = 1'b1;
          _zzM2L94_mdxP2_En = _zzM2L94_mdxP2_EnNxt;
          end
          // F1, L100
          begin
          // F1, L100
          _zzM2L94_mdxP2_penable_wr1 = 1'b0;
          _zzM2L94_mdxP2_penable_Dwen1 = 1'b1;
          _zzM2L94_mdxP2_En = _zzM2L94_mdxP2_EnNxt;
          end
          // F1, L101
          begin
          // F1, L101
          _zzM2L94_mdxP2_pwrite_wr2 = 1'b0;
          _zzM2L94_mdxP2_pwrite_Dwen2 = 1'b1;
          _zzM2L94_mdxP2_En = _zzM2L94_mdxP2_EnNxt;
          end
          // F1, L102
          begin
          // F1, L102
          _zzM2L94_mdxP2_paddr_wr3 = _zyaddr_L95_tfiV3_M2_pbcG3[31:0];
          _zzM2L94_mdxP2_paddr_Dwen3 = 1'b1;
          _zzM2L94_mdxP2_En = _zzM2L94_mdxP2_EnNxt;
          end
          _zyM2L104_pbcCapEn6 = 1'b1;
          _zyM2L94_pbcFsm3_s = 3'b01;
         end
        end
       end
      3'b01:
       // F1, L104
       begin
        // F1, L94
        _zyM2L94_pbcEn11 = 1'b1;
        _zyM2L104_pbcCapEn6 = 1'b0;
        // F1, L105
        begin
         // F1, L105
         _zzM2L94_mdxP2_penable_wr1 = 1'b1;
         _zzM2L94_mdxP2_penable_Dwen1 = 1'b1;
         _zzM2L94_mdxP2_En = _zzM2L94_mdxP2_EnNxt;
        end
        if ((( !pready ) && (bus_timer < 32'b01100100)))
         // F1, L108
         begin
          // F1, L109
          // F1, L109
          begin
          // F1, L109
          _zzM2L94_mdxP2_bus_timer_wr4 = (bus_timer + 32'b01);
          _zzM2L94_mdxP2_bus_timer_Dwen4 = 1'b1;
          _zzM2L94_mdxP2_En = _zzM2L94_mdxP2_EnNxt;
          end
          _zyM2L110_pbcCapEn7 = 1'b1;
          _zyM2L94_pbcFsm3_s = 3'b010;
          _zyM2L94_pbcEn11 = 1'b0;
         end
        if (_zyM2L94_pbcEn11)
         // F1, L113
         begin
          // F1, L113
          // F1, L113
          begin
          // F1, L113
          _zzM2L94_mdxP2_bus_timer_wr4 = 8'b0;
          _zzM2L94_mdxP2_bus_timer_Dwen4 = 1'b1;
          _zzM2L94_mdxP2_En = _zzM2L94_mdxP2_EnNxt;
          end
          // F1, L114
          begin
          // F1, L114
          _zzM2L94_mdxP2_psel_wr0 = 1'b0;
          _zzM2L94_mdxP2_psel_Dwen0 = 1'b1;
          _zzM2L94_mdxP2_En = _zzM2L94_mdxP2_EnNxt;
          end
          // F1, L115
          begin
          // F1, L115
          _zzM2L94_mdxP2_penable_wr1 = 1'b0;
          _zzM2L94_mdxP2_penable_Dwen1 = 1'b1;
          _zzM2L94_mdxP2_En = _zzM2L94_mdxP2_EnNxt;
          end
          // F1, L116
          begin
          // F1, L116
          _zzM2L94_mdxP2_pwrite_wr2 = 1'b0;
          _zzM2L94_mdxP2_pwrite_Dwen2 = 1'b1;
          _zzM2L94_mdxP2_En = _zzM2L94_mdxP2_EnNxt;
          end
          // F1, L117
          begin
          // F1, L117
          _zzM2L94_mdxP2_paddr_wr3 = 20'b0;
          _zzM2L94_mdxP2_paddr_Dwen3 = 1'b1;
          _zzM2L94_mdxP2_En = _zzM2L94_mdxP2_EnNxt;
          end
          _zydata_L96_tfiV4_M2_pbcG4 <= prdata;
          _zyresponse_L97_tfiV5_M2_pbcG5 <= (pslverr | (bus_timer == 32'b01100100));
          _zyM2L121_pbcCapEn8 = 1'b1;
          _zyM2L94_pbcFsm3_s = 3'b011;
         end
       end
      3'b010:
       // F1, L110
       begin
        // F1, L94
        _zyM2L94_pbcEn11 = 1'b1;
        _zyM2L110_pbcCapEn7 = 1'b0;
        if ((( !pready ) && (bus_timer < 32'b01100100)))
         // F1, L108
         begin
          // F1, L109
          // F1, L109
          begin
          // F1, L109
          _zzM2L94_mdxP2_bus_timer_wr4 = (bus_timer + 32'b01);
          _zzM2L94_mdxP2_bus_timer_Dwen4 = 1'b1;
          _zzM2L94_mdxP2_En = _zzM2L94_mdxP2_EnNxt;
          end
          _zyM2L110_pbcCapEn7 = 1'b1;
          _zyM2L94_pbcFsm3_s = 3'b010;
          _zyM2L94_pbcEn11 = 1'b0;
         end
        if (_zyM2L94_pbcEn11)
         // F1, L113
         begin
          // F1, L113
          // F1, L113
          begin
          // F1, L113
          _zzM2L94_mdxP2_bus_timer_wr4 = 8'b0;
          _zzM2L94_mdxP2_bus_timer_Dwen4 = 1'b1;
          _zzM2L94_mdxP2_En = _zzM2L94_mdxP2_EnNxt;
          end
          // F1, L114
          begin
          // F1, L114
          _zzM2L94_mdxP2_psel_wr0 = 1'b0;
          _zzM2L94_mdxP2_psel_Dwen0 = 1'b1;
          _zzM2L94_mdxP2_En = _zzM2L94_mdxP2_EnNxt;
          end
          // F1, L115
          begin
          // F1, L115
          _zzM2L94_mdxP2_penable_wr1 = 1'b0;
          _zzM2L94_mdxP2_penable_Dwen1 = 1'b1;
          _zzM2L94_mdxP2_En = _zzM2L94_mdxP2_EnNxt;
          end
          // F1, L116
          begin
          // F1, L116
          _zzM2L94_mdxP2_pwrite_wr2 = 1'b0;
          _zzM2L94_mdxP2_pwrite_Dwen2 = 1'b1;
          _zzM2L94_mdxP2_En = _zzM2L94_mdxP2_EnNxt;
          end
          // F1, L117
          begin
          // F1, L117
          _zzM2L94_mdxP2_paddr_wr3 = 20'b0;
          _zzM2L94_mdxP2_paddr_Dwen3 = 1'b1;
          _zzM2L94_mdxP2_En = _zzM2L94_mdxP2_EnNxt;
          end
          _zydata_L96_tfiV4_M2_pbcG4 <= prdata;
          _zyresponse_L97_tfiV5_M2_pbcG5 <= (pslverr | (bus_timer == 32'b01100100));
          _zyM2L121_pbcCapEn8 = 1'b1;
          _zyM2L94_pbcFsm3_s = 3'b011;
         end
       end
      3'b011:
       // F1, L121
       begin
        // F1, L121
        _zyM2L121_pbcCapEn8 = 1'b0;
        _zyixc_port_0_1_h2s[31:0] = _zydata_L96_tfiV4_M2_pbcG4;
        _zyixc_port_0_1_h2s[39:32] = _zyresponse_L97_tfiV5_M2_pbcG5;
        _zyixc_port_0_1_ack = ( ~_zyixc_port_0_1_ack );
        _zyM2L94_pbcCapEn5 = 1'b1;
        _zyM2L94_pbcFsm3_s = 3'b0;
       end
     endcase
    end
   end
  end
// F1, L10
always 
 @(posedge _zzM2_bcBehEvalClk)
  if ((_zyM2L61_pbcWait4 | _zyM2L94_pbcWait9))
   // F1, L10
   begin
    // F1, L10
    if (( ~& _zzM2_bcBehEval[30:0] ))
     _zzM2_bcBehEval[30:0] <= (_zzM2_bcBehEval[30:0] + 1'b1);
    _zzM2_bcBehEval[31] <= _zzM2_bcBehHalt;
   end
// F1, L19
always 
 @(*)
  // F1, L19
  begin
   // F1, L19
   _zzM2L19_psel_mdxTmp0 = _zzpsel_M2L19_mdxSvLt6;
   _zzM2L46_mdxP0_psel_DwenOn0 = (_zzM2L46_mdxP0_On ? _zzM2L46_mdxP0_psel_Dwen0 : 1'b0);
   _zzM2L19_psel_mdxTmp0 = (_zzM2L46_mdxP0_psel_DwenOn0 ? _zzM2L46_mdxP0_psel_wr0 : _zzM2L19_psel_mdxTmp0);
   _zzM2L61_mdxP1_psel_DwenOn0 = (_zzM2L61_mdxP1_On ? _zzM2L61_mdxP1_psel_Dwen0 : 1'b0);
   _zzM2L19_psel_mdxTmp0 = (_zzM2L61_mdxP1_psel_DwenOn0 ? _zzM2L61_mdxP1_psel_wr0 : _zzM2L19_psel_mdxTmp0);
   _zzM2L94_mdxP2_psel_DwenOn0 = (_zzM2L94_mdxP2_On ? _zzM2L94_mdxP2_psel_Dwen0 : 1'b0);
   _zzM2L19_psel_mdxTmp0 = (_zzM2L94_mdxP2_psel_DwenOn0 ? _zzM2L94_mdxP2_psel_wr0 : _zzM2L19_psel_mdxTmp0);
   if (_zzmdxOne)
    // F1, L19
    begin
     // F1, L19
     psel = _zzM2L19_psel_mdxTmp0;
    end
  end
// F1, L20
always 
 @(*)
  // F1, L20
  begin
   // F1, L20
   _zzM2L20_penable_mdxTmp1 = _zzpenable_M2L20_mdxSvLt7;
   _zzM2L46_mdxP0_penable_DwenOn1 = (_zzM2L46_mdxP0_On ? _zzM2L46_mdxP0_penable_Dwen1 : 1'b0);
   _zzM2L20_penable_mdxTmp1 = (_zzM2L46_mdxP0_penable_DwenOn1 ? _zzM2L46_mdxP0_penable_wr1 : _zzM2L20_penable_mdxTmp1);
   _zzM2L61_mdxP1_penable_DwenOn1 = (_zzM2L61_mdxP1_On ? _zzM2L61_mdxP1_penable_Dwen1 : 1'b0);
   _zzM2L20_penable_mdxTmp1 = (_zzM2L61_mdxP1_penable_DwenOn1 ? _zzM2L61_mdxP1_penable_wr1 : _zzM2L20_penable_mdxTmp1);
   _zzM2L94_mdxP2_penable_DwenOn1 = (_zzM2L94_mdxP2_On ? _zzM2L94_mdxP2_penable_Dwen1 : 1'b0);
   _zzM2L20_penable_mdxTmp1 = (_zzM2L94_mdxP2_penable_DwenOn1 ? _zzM2L94_mdxP2_penable_wr1 : _zzM2L20_penable_mdxTmp1);
   if (_zzmdxOne)
    // F1, L20
    begin
     // F1, L20
     penable = _zzM2L20_penable_mdxTmp1;
    end
  end
// F1, L23
always 
 @(*)
  // F1, L23
  begin
   // F1, L23
   _zzM2L23_pwrite_mdxTmp2 = _zzpwrite_M2L23_mdxSvLt8;
   _zzM2L46_mdxP0_pwrite_DwenOn2 = (_zzM2L46_mdxP0_On ? _zzM2L46_mdxP0_pwrite_Dwen2 : 1'b0);
   _zzM2L23_pwrite_mdxTmp2 = (_zzM2L46_mdxP0_pwrite_DwenOn2 ? _zzM2L46_mdxP0_pwrite_wr2 : _zzM2L23_pwrite_mdxTmp2);
   _zzM2L61_mdxP1_pwrite_DwenOn2 = (_zzM2L61_mdxP1_On ? _zzM2L61_mdxP1_pwrite_Dwen2 : 1'b0);
   _zzM2L23_pwrite_mdxTmp2 = (_zzM2L61_mdxP1_pwrite_DwenOn2 ? _zzM2L61_mdxP1_pwrite_wr2 : _zzM2L23_pwrite_mdxTmp2);
   _zzM2L94_mdxP2_pwrite_DwenOn2 = (_zzM2L94_mdxP2_On ? _zzM2L94_mdxP2_pwrite_Dwen2 : 1'b0);
   _zzM2L23_pwrite_mdxTmp2 = (_zzM2L94_mdxP2_pwrite_DwenOn2 ? _zzM2L94_mdxP2_pwrite_wr2 : _zzM2L23_pwrite_mdxTmp2);
   if (_zzmdxOne)
    // F1, L23
    begin
     // F1, L23
     pwrite = _zzM2L23_pwrite_mdxTmp2;
    end
  end
// F1, L21
always 
 @(*)
  // F1, L21
  begin
   // F1, L21
   _zzM2L21_paddr_mdxTmp3 = _zzpaddr_M2L21_mdxSvLt9;
   _zzM2L46_mdxP0_paddr_DwenOn3 = (_zzM2L46_mdxP0_On ? _zzM2L46_mdxP0_paddr_Dwen3 : 1'b0);
   _zzM2L21_paddr_mdxTmp3 = (_zzM2L46_mdxP0_paddr_DwenOn3 ? _zzM2L46_mdxP0_paddr_wr3 : _zzM2L21_paddr_mdxTmp3);
   _zzM2L61_mdxP1_paddr_DwenOn3 = (_zzM2L61_mdxP1_On ? _zzM2L61_mdxP1_paddr_Dwen3 : 1'b0);
   _zzM2L21_paddr_mdxTmp3 = (_zzM2L61_mdxP1_paddr_DwenOn3 ? _zzM2L61_mdxP1_paddr_wr3 : _zzM2L21_paddr_mdxTmp3);
   _zzM2L94_mdxP2_paddr_DwenOn3 = (_zzM2L94_mdxP2_On ? _zzM2L94_mdxP2_paddr_Dwen3 : 1'b0);
   _zzM2L21_paddr_mdxTmp3 = (_zzM2L94_mdxP2_paddr_DwenOn3 ? _zzM2L94_mdxP2_paddr_wr3 : _zzM2L21_paddr_mdxTmp3);
   if (_zzmdxOne)
    // F1, L21
    begin
     // F1, L21
     paddr = _zzM2L21_paddr_mdxTmp3;
    end
  end
// F1, L22
always 
 @(*)
  // F1, L22
  begin
   // F1, L22
   _zzM2L22_pwdata_mdxTmp4 = _zzpwdata_M2L22_mdxSvLt10;
   _zzM2L46_mdxP0_pwdata_DwenOn4 = (_zzM2L46_mdxP0_On ? _zzM2L46_mdxP0_pwdata_Dwen4 : 1'b0);
   _zzM2L22_pwdata_mdxTmp4 = (_zzM2L46_mdxP0_pwdata_DwenOn4 ? _zzM2L46_mdxP0_pwdata_wr4 : _zzM2L22_pwdata_mdxTmp4);
   _zzM2L61_mdxP1_pwdata_DwenOn4 = (_zzM2L61_mdxP1_On ? _zzM2L61_mdxP1_pwdata_Dwen4 : 1'b0);
   _zzM2L22_pwdata_mdxTmp4 = (_zzM2L61_mdxP1_pwdata_DwenOn4 ? _zzM2L61_mdxP1_pwdata_wr4 : _zzM2L22_pwdata_mdxTmp4);
   if (_zzmdxOne)
    // F1, L22
    begin
     // F1, L22
     pwdata = _zzM2L22_pwdata_mdxTmp4;
    end
  end
// F1, L29
always 
 @(*)
  // F1, L29
  begin
   // F1, L29
   _zzM2L29_bus_timer_mdxTmp5 = _zzbus_timer_M2L29_mdxSvLt11;
   _zzM2L46_mdxP0_bus_timer_DwenOn5 = (_zzM2L46_mdxP0_On ? _zzM2L46_mdxP0_bus_timer_Dwen5 : 1'b0);
   _zzM2L29_bus_timer_mdxTmp5 = (_zzM2L46_mdxP0_bus_timer_DwenOn5 ? _zzM2L46_mdxP0_bus_timer_wr5 : _zzM2L29_bus_timer_mdxTmp5);
   _zzM2L61_mdxP1_bus_timer_DwenOn5 = (_zzM2L61_mdxP1_On ? _zzM2L61_mdxP1_bus_timer_Dwen5 : 1'b0);
   _zzM2L29_bus_timer_mdxTmp5 = (_zzM2L61_mdxP1_bus_timer_DwenOn5 ? _zzM2L61_mdxP1_bus_timer_wr5 : _zzM2L29_bus_timer_mdxTmp5);
   _zzM2L94_mdxP2_bus_timer_DwenOn4 = (_zzM2L94_mdxP2_On ? _zzM2L94_mdxP2_bus_timer_Dwen4 : 1'b0);
   _zzM2L29_bus_timer_mdxTmp5 = (_zzM2L94_mdxP2_bus_timer_DwenOn4 ? _zzM2L94_mdxP2_bus_timer_wr4 : _zzM2L29_bus_timer_mdxTmp5);
   if (_zzmdxOne)
    // F1, L29
    begin
     // F1, L29
     bus_timer = _zzM2L29_bus_timer_mdxTmp5;
    end
  end
// pragma CVASTRPROP MODULE apb_xactor PROP_RANOFF TRUE
endmodule

