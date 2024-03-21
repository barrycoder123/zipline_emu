// xc_work/v/2n.sv
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
parameter ADDR_WIDTH = 20;
parameter DATA_WIDTH = 32;
input  clk;
input  reset_n;
output reg psel;
output reg penable;
output reg [19:0] paddr ;
output reg [31:0] pwdata ;
output reg pwrite;
input  [31:0] prdata ;
input  pready;
input  pslverr;
reg [7:0] bus_timer ;
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
reg [63:0] _zyaddr_L49_tfiV0_M2_pbcG0 ;
reg [31:0] _zydata_L50_tfiV1_M2_pbcG1 ;
reg _zyresponse_L51_tfiV2_M2_pbcG2;
reg [63:0] _zyaddr_L82_tfiV3_M2_pbcG3 ;
reg [31:0] _zydata_L83_tfiV4_M2_pbcG4 ;
reg _zyresponse_L84_tfiV5_M2_pbcG5;
reg _zyM2L48_pbcCapEn0;
reg _zyM2L60_pbcCapEn1;
reg _zyM2L66_pbcCapEn2;
reg _zyM2L77_pbcCapEn3;
wire  _zyM2L48_pbcMevClk4;
wire  _zyM2L48_pbcReq4;
wire  _zyM2L48_pbcBusy4;
wire  _zyM2L48_pbcWait4;
reg _zyM2L81_pbcCapEn5;
reg _zyM2L91_pbcCapEn6;
reg _zyM2L97_pbcCapEn7;
reg _zyM2L108_pbcCapEn8;
wire  _zyM2L81_pbcMevClk9;
wire  _zyM2L81_pbcReq9;
wire  _zyM2L81_pbcBusy9;
wire  _zyM2L81_pbcWait9;
reg [2:0]  _zyM2L48_pbcFsm0_s;
reg _zyM2L48_pbcEn10;
reg [2:0]  _zyM2L81_pbcFsm3_s;
reg _zyM2L81_pbcEn11;
wire  _zy_clk_x$ed_5;
// F1, L12
assign  _zy_simnet_psel_0_w$ = psel;
// F1, L12
assign  _zy_simnet_penable_1_w$ = penable;
// F1, L12
assign  _zy_simnet_paddr_2_w$ = paddr;
// F1, L12
assign  _zy_simnet_pwdata_3_w$ = pwdata;
// F1, L12
assign  _zy_simnet_pwrite_4_w$ = pwrite;
// F1, L10
ixc_mem_call #(96,8,0,0) _zzixc_tfport_0_0 (_zyixc_port_0_0_req,_zyixc_port_0_0_s2h,_zyixc_port_0_0_isf,_zyixc_port_0_0_ack,_zyixc_port_0_0_h2s,_zyixc_port_0_0_osf,1'b0,1'b0);
// F1, L10
ixc_mem_call #(64,40,0,0) _zzixc_tfport_0_1 (_zyixc_port_0_1_req,_zyixc_port_0_1_s2h,_zyixc_port_0_1_isf,_zyixc_port_0_1_ack,_zyixc_port_0_1_h2s,_zyixc_port_0_1_osf,1'b0,1'b0);
// F1, L48
ixc_mevClk #(2,0,0,2'b01,2'b0,2'b0,2'b0,2'b0,2'b0) _zzM2L48_pbcMevClk4 (_zyM2L48_pbcMevClk4,{_zyixc_port_0_0_req,_zy_clk_x$ed_5},{_zyM2L48_pbcCapEn0,((_zyM2L60_pbcCapEn1 | _zyM2L66_pbcCapEn2) | _zyM2L77_pbcCapEn3)},1'b0,1'b0,_zyM2L48_pbcReq4,_zyM2L48_pbcBusy4,_zyM2L48_pbcWait4);
// F1, L81
ixc_mevClk #(2,0,0,2'b01,2'b0,2'b0,2'b0,2'b0,2'b0) _zzM2L81_pbcMevClk9 (_zyM2L81_pbcMevClk9,{_zyixc_port_0_1_req,_zy_clk_x$ed_5},{_zyM2L81_pbcCapEn5,((_zyM2L91_pbcCapEn6 | _zyM2L97_pbcCapEn7) | _zyM2L108_pbcCapEn8)},1'b0,1'b0,_zyM2L81_pbcReq9,_zyM2L81_pbcBusy9,_zyM2L81_pbcWait9);
axPIBMod #(1 )_zy_pimod__6(_zy_clk_x$ed_5,clk); 

task write;
 input reg [63:0] addr ;
 input reg [31:0] data ;
 output reg response;
 int _gpid;
 int _lpid;
// synopsys translate_off
 _zyifsyn_write_2_ipt(addr,data,response,_gpid);
 IXC_GFIFO.OSF.OSF_wait(_gpid,_lpid);
 _zyifsyn_write_2_ipt_p2(addr,data,response,_gpid);
// synopsys translate_on
endtask


task read;
 input reg [63:0] addr ;
 output reg [31:0] data ;
 output reg response;
 int _gpid;
 int _lpid;
// synopsys translate_off
 _zyifsyn_read_2_ipt(addr,data,response,_gpid);
 IXC_GFIFO.OSF.OSF_wait(_gpid,_lpid);
 _zyifsyn_read_2_ipt_p2(addr,data,response,_gpid);
// synopsys translate_on
endtask


task _zyifsyn_write_2_xpt;
 input reg [63:0] addr ;
 input reg [31:0] data ;
 output reg response;
 // F1, L53
 begin
  // F1, L54
  psel <= 1'b1;
  penable <= 1'b0;
  pwrite <= 1'b1;
  paddr <= addr[31:0];
  pwdata <= data[31:0];
  @(posedge clk)
   begin
   end
  penable <= 1'b1;
  while ((( !pready ) && (bus_timer < 32'b01100100)))
   // F1, L64
   begin
    // F1, L65
    bus_timer <= (bus_timer + 32'b01);
    @(posedge clk)
     begin
     end
   end
  bus_timer <= 8'b0;
  psel <= 1'b0;
  penable <= 1'b0;
  pwrite <= 1'b0;
  paddr <= 20'b0;
  pwdata <= 32'b0;
  response <= (pslverr | (bus_timer == 32'b01100100));
  @(posedge clk)
   begin
   end
 end
endtask

import "DPI-C"  context task _zyifsyn_write_2_ipt_p2 (input reg [63:0] addr ,input reg [31:0] data ,output reg response,input int gpid);
import "DPI-C"  context task _zyifsyn_read_2_ipt (input reg [63:0] addr ,output reg [31:0] data ,output reg response,output int gpid);
import "DPI-C"  context task _zyifsyn_read_2_ipt_p2 (input reg [63:0] addr ,output reg [31:0] data ,output reg response,input int gpid);
import "DPI-C"  context task _zyifsyn_write_2_ipt (input reg [63:0] addr ,input reg [31:0] data ,output reg response,output int gpid);

task _zyifsyn_read_2_xpt;
 input reg [63:0] addr ;
 output reg [31:0] data ;
 output reg response;
 // F1, L85
 begin
  // F1, L86
  psel <= 1'b1;
  penable <= 1'b0;
  pwrite <= 1'b0;
  paddr <= addr[31:0];
  @(posedge clk)
   begin
   end
  penable <= 1'b1;
  while ((( !pready ) && (bus_timer < 32'b01100100)))
   // F1, L95
   begin
    // F1, L96
    bus_timer <= (bus_timer + 32'b01);
    @(posedge clk)
     begin
     end
   end
  bus_timer <= 8'b0;
  psel <= 1'b0;
  penable <= 1'b0;
  pwrite <= 1'b0;
  paddr <= 20'b0;
  data <= prdata;
  response <= (pslverr | (bus_timer == 32'b01100100));
  @(posedge clk)
   begin
   end
 end
endtask

// F1, L33
always 
 @(posedge _zy_clk_x$ed_5)
  // F1, L34
  begin
   // F1, L35
   if (( !reset_n ))
    // F1, L36
    begin
     // F1, L37
     bus_timer <= 8'b0;
     psel <= 1'b0;
     penable <= 1'b0;
     paddr <= 20'b0;
     pwdata <= 32'b0;
     pwrite <= 1'b0;
    end
  end
// F1, L10
initial 
 begin
 end
// F1, L48
always 
 // F1, L48
 begin
  // F1, L48
  @(posedge _zyM2L48_pbcMevClk4)
   begin
   end
  // F1, L48
  begin:_zyM2L48_pbcFsm0
   // F1, L48
   case (_zyM2L48_pbcFsm0_s)
    3'b0:
     // F1, L48
     begin
      // F1, L48
      _zyM2L48_pbcCapEn0 = 1'b0;
      // F1, L48
      begin:_zy_zzblk_0_0_M2L48_pbcScp1
       // F1, L48
       // F1, L48
       begin:_zyifsyneCscp0_L48_M2_pbcScp2
        // F1, L48
        _zyaddr_L49_tfiV0_M2_pbcG0 = _zyixc_port_0_0_s2h[63:0];
        _zydata_L50_tfiV1_M2_pbcG1 = _zyixc_port_0_0_s2h[95:64];
        psel <= 1'b1;
        penable <= 1'b0;
        pwrite <= 1'b1;
        paddr <= _zyaddr_L49_tfiV0_M2_pbcG0[31:0];
        pwdata <= _zydata_L50_tfiV1_M2_pbcG1[31:0];
        _zyM2L60_pbcCapEn1 = 1'b1;
        _zyM2L48_pbcFsm0_s = 3'b01;
       end
      end
     end
    3'b01:
     // F1, L60
     begin
      // F1, L48
      _zyM2L48_pbcEn10 = 1'b1;
      _zyM2L60_pbcCapEn1 = 1'b0;
      penable <= 1'b1;
      if ((( !pready ) && (bus_timer < 32'b01100100)))
       // F1, L64
       begin
        // F1, L65
        bus_timer <= (bus_timer + 32'b01);
        _zyM2L66_pbcCapEn2 = 1'b1;
        _zyM2L48_pbcFsm0_s = 3'b010;
        _zyM2L48_pbcEn10 = 1'b0;
       end
      if (_zyM2L48_pbcEn10)
       // F1, L69
       begin
        // F1, L69
        bus_timer <= 8'b0;
        psel <= 1'b0;
        penable <= 1'b0;
        pwrite <= 1'b0;
        paddr <= 20'b0;
        pwdata <= 32'b0;
        _zyresponse_L51_tfiV2_M2_pbcG2 <= (pslverr | (bus_timer == 32'b01100100));
        _zyM2L77_pbcCapEn3 = 1'b1;
        _zyM2L48_pbcFsm0_s = 3'b011;
       end
     end
    3'b010:
     // F1, L66
     begin
      // F1, L48
      _zyM2L48_pbcEn10 = 1'b1;
      _zyM2L66_pbcCapEn2 = 1'b0;
      if ((( !pready ) && (bus_timer < 32'b01100100)))
       // F1, L64
       begin
        // F1, L65
        bus_timer <= (bus_timer + 32'b01);
        _zyM2L66_pbcCapEn2 = 1'b1;
        _zyM2L48_pbcFsm0_s = 3'b010;
        _zyM2L48_pbcEn10 = 1'b0;
       end
      if (_zyM2L48_pbcEn10)
       // F1, L69
       begin
        // F1, L69
        bus_timer <= 8'b0;
        psel <= 1'b0;
        penable <= 1'b0;
        pwrite <= 1'b0;
        paddr <= 20'b0;
        pwdata <= 32'b0;
        _zyresponse_L51_tfiV2_M2_pbcG2 <= (pslverr | (bus_timer == 32'b01100100));
        _zyM2L77_pbcCapEn3 = 1'b1;
        _zyM2L48_pbcFsm0_s = 3'b011;
       end
     end
    3'b011:
     // F1, L77
     begin
      // F1, L77
      _zyM2L77_pbcCapEn3 = 1'b0;
      _zyixc_port_0_0_h2s[7:0] = _zyresponse_L51_tfiV2_M2_pbcG2;
      _zyixc_port_0_0_ack = ( ~_zyixc_port_0_0_ack );
      _zyM2L48_pbcCapEn0 = 1'b1;
      _zyM2L48_pbcFsm0_s = 3'b0;
     end
   endcase
  end
 end
// F1, L81
always 
 // F1, L81
 begin
  // F1, L81
  @(posedge _zyM2L81_pbcMevClk9)
   begin
   end
  // F1, L81
  begin:_zyM2L81_pbcFsm3
   // F1, L81
   case (_zyM2L81_pbcFsm3_s)
    3'b0:
     // F1, L81
     begin
      // F1, L81
      _zyM2L81_pbcCapEn5 = 1'b0;
      // F1, L81
      begin:_zy_zzblk_0_1_M2L81_pbcScp4
       // F1, L81
       // F1, L81
       begin:_zyifsyneCscp1_L81_M2_pbcScp5
        // F1, L81
        _zyaddr_L82_tfiV3_M2_pbcG3 = _zyixc_port_0_1_s2h[63:0];
        psel <= 1'b1;
        penable <= 1'b0;
        pwrite <= 1'b0;
        paddr <= _zyaddr_L82_tfiV3_M2_pbcG3[31:0];
        _zyM2L91_pbcCapEn6 = 1'b1;
        _zyM2L81_pbcFsm3_s = 3'b01;
       end
      end
     end
    3'b01:
     // F1, L91
     begin
      // F1, L81
      _zyM2L81_pbcEn11 = 1'b1;
      _zyM2L91_pbcCapEn6 = 1'b0;
      penable <= 1'b1;
      if ((( !pready ) && (bus_timer < 32'b01100100)))
       // F1, L95
       begin
        // F1, L96
        bus_timer <= (bus_timer + 32'b01);
        _zyM2L97_pbcCapEn7 = 1'b1;
        _zyM2L81_pbcFsm3_s = 3'b010;
        _zyM2L81_pbcEn11 = 1'b0;
       end
      if (_zyM2L81_pbcEn11)
       // F1, L100
       begin
        // F1, L100
        bus_timer <= 8'b0;
        psel <= 1'b0;
        penable <= 1'b0;
        pwrite <= 1'b0;
        paddr <= 20'b0;
        _zydata_L83_tfiV4_M2_pbcG4 <= prdata;
        _zyresponse_L84_tfiV5_M2_pbcG5 <= (pslverr | (bus_timer == 32'b01100100));
        _zyM2L108_pbcCapEn8 = 1'b1;
        _zyM2L81_pbcFsm3_s = 3'b011;
       end
     end
    3'b010:
     // F1, L97
     begin
      // F1, L81
      _zyM2L81_pbcEn11 = 1'b1;
      _zyM2L97_pbcCapEn7 = 1'b0;
      if ((( !pready ) && (bus_timer < 32'b01100100)))
       // F1, L95
       begin
        // F1, L96
        bus_timer <= (bus_timer + 32'b01);
        _zyM2L97_pbcCapEn7 = 1'b1;
        _zyM2L81_pbcFsm3_s = 3'b010;
        _zyM2L81_pbcEn11 = 1'b0;
       end
      if (_zyM2L81_pbcEn11)
       // F1, L100
       begin
        // F1, L100
        bus_timer <= 8'b0;
        psel <= 1'b0;
        penable <= 1'b0;
        pwrite <= 1'b0;
        paddr <= 20'b0;
        _zydata_L83_tfiV4_M2_pbcG4 <= prdata;
        _zyresponse_L84_tfiV5_M2_pbcG5 <= (pslverr | (bus_timer == 32'b01100100));
        _zyM2L108_pbcCapEn8 = 1'b1;
        _zyM2L81_pbcFsm3_s = 3'b011;
       end
     end
    3'b011:
     // F1, L108
     begin
      // F1, L108
      _zyM2L108_pbcCapEn8 = 1'b0;
      _zyixc_port_0_1_h2s[31:0] = _zydata_L83_tfiV4_M2_pbcG4;
      _zyixc_port_0_1_h2s[39:32] = _zyresponse_L84_tfiV5_M2_pbcG5;
      _zyixc_port_0_1_ack = ( ~_zyixc_port_0_1_ack );
      _zyM2L81_pbcCapEn5 = 1'b1;
      _zyM2L81_pbcFsm3_s = 3'b0;
     end
   endcase
  end
 end

  import "DPI-C" context function int xctf_register_task(input int channel, input string name, input int exportTF, int isFunc, int openarr, input int partitionId, input int mid, input int iwidth, input int owidth, input string file, input int line);
  import "DPI-C" context function void xctf_register_port_task(input int channel, input int lpid, input int ltid, input int gtid);
  import "DPI-C" context function void xctf_register_port_marg(input int channel, input int lpid, input int lmargid, input string memspec);
  import "DPI-C" context function int xctf_define_port_task_n_marg_reg_call(input int channel, input int lpid, input int piomem, input int s2hwidth, input int h2swidth, input int lmargCnt, input int ltidwidth, input int ltid, input int gtid, input int lmargid, input string memspec);

  function bit do_sf_init;
    static bit [15:0] _zyifsyn_write_2_xpt_gtid = xctf_register_task(0, "_zyifsyn_write_2_xpt", 1, 0, 0, 0, 2, 96, 8, "/home/ibarry/Project-Zipline-master/dv/agents/apb/apb_xactor.v", 48);
    static bit [15:0] _zyifsyn_read_2_xpt_gtid = xctf_register_task(0, "_zyifsyn_read_2_xpt", 1, 0, 0, 0, 2, 64, 40, "/home/ibarry/Project-Zipline-master/dv/agents/apb/apb_xactor.v", 81);
    integer _zyport_0_0_gpid;
    integer _zyport_0_1_gpid;
    begin
      _zyport_0_0_gpid = xctf_define_port_task_n_marg_reg_call(0, 0, 1, 96, 8, 0, 0, 0, _zyifsyn_write_2_xpt_gtid, 0, "");
      IXC_GFIFO.OSF.OSF_create_wait_event(_zyport_0_0_gpid);
      _zyport_0_1_gpid = xctf_define_port_task_n_marg_reg_call(0, 1, 1, 64, 40, 0, 0, 0, _zyifsyn_read_2_xpt_gtid, 0, "");
      IXC_GFIFO.OSF.OSF_create_wait_event(_zyport_0_1_gpid);
      return 0;
    end
  endfunction

  const bit _zydummy_do_init = do_sf_init();

// F1, L10
initial 
 // F1, L10
 begin
  // F1, L48
  _zyM2L48_pbcCapEn0 = 1'b1;
  _zyM2L60_pbcCapEn1 = 1'b0;
  _zyM2L66_pbcCapEn2 = 1'b0;
  _zyM2L77_pbcCapEn3 = 1'b0;
  _zyM2L81_pbcCapEn5 = 1'b1;
  _zyM2L91_pbcCapEn6 = 1'b0;
  _zyM2L97_pbcCapEn7 = 1'b0;
  _zyM2L108_pbcCapEn8 = 1'b0;
  _zyM2L48_pbcFsm0_s = 3'b0;
  _zyM2L81_pbcFsm3_s = 3'b0;
  begin
  end
 end
endmodule

