// xc_work/v/3n.sv
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
wire  _zyL94_iscX1c0_s;
reg _zyL94_iscX1c0_f;
reg _zyL94_iscX1c0_n;
wire [63:0]  _zyL94_iscX1c0_i0;
reg [31:0]  _zyL94_iscX1c0_o1;
reg _zyL94_iscX1c0_o2;
wire  _zyL61_iscX2c0_s;
reg _zyL61_iscX2c0_f;
reg _zyL61_iscX2c0_n;
wire [63:0]  _zyL61_iscX2c0_i0;
wire [31:0]  _zyL61_iscX2c0_i1;
reg _zyL61_iscX2c0_o2;
reg [63:0] _zyaddr_L95_tfiV0_M3_pbcG0 ;
reg [31:0] _zydata_L96_tfiV1_M3_pbcG1 ;
reg _zyresponse_L97_tfiV2_M3_pbcG2;
reg [63:0] _zyaddr_L62_tfiV3_M3_pbcG3 ;
reg [31:0] _zydata_L63_tfiV4_M3_pbcG4 ;
reg _zyresponse_L64_tfiV5_M3_pbcG5;
reg _zyM3L94_pbcCapEn0;
reg _zyM3L104_pbcCapEn1;
reg _zyM3L110_pbcCapEn2;
reg _zyM3L121_pbcCapEn3;
wire  _zyM3L94_pbcMevClk4;
wire  _zyM3L94_pbcReq4;
wire  _zyM3L94_pbcBusy4;
wire  _zyM3L94_pbcWait4;
reg _zyM3L61_pbcCapEn5;
reg _zyM3L73_pbcCapEn6;
reg _zyM3L79_pbcCapEn7;
reg _zyM3L90_pbcCapEn8;
wire  _zyM3L61_pbcMevClk9;
wire  _zyM3L61_pbcReq9;
wire  _zyM3L61_pbcBusy9;
wire  _zyM3L61_pbcWait9;
reg [2:0]  _zyM3L94_pbcFsm0_s;
reg _zyM3L94_pbcEn10;
reg [2:0]  _zyM3L61_pbcFsm2_s;
reg _zyM3L61_pbcEn11;
// F2, L12
assign  _zy_simnet_psel_0_w$ = psel;
// F2, L12
assign  _zy_simnet_penable_1_w$ = penable;
// F2, L12
assign  _zy_simnet_paddr_2_w$ = paddr;
// F2, L12
assign  _zy_simnet_pwdata_3_w$ = pwdata;
// F2, L12
assign  _zy_simnet_pwrite_4_w$ = pwrite;
// F2, L94
ixc_mevClk #(2,0,0,2'b01,2'b0,2'b10,2'b0,2'b0,2'b0) _zzM3L94_pbcMevClk4 (_zyM3L94_pbcMevClk4,{_zyL94_iscX1c0_s,clk},{_zyM3L94_pbcCapEn0,((_zyM3L104_pbcCapEn1 | _zyM3L110_pbcCapEn2) | _zyM3L121_pbcCapEn3)},1'b0,1'b0,_zyM3L94_pbcReq4,_zyM3L94_pbcBusy4,_zyM3L94_pbcWait4);
// F2, L61
ixc_mevClk #(2,0,0,2'b01,2'b0,2'b10,2'b0,2'b0,2'b0) _zzM3L61_pbcMevClk9 (_zyM3L61_pbcMevClk9,{_zyL61_iscX2c0_s,clk},{_zyM3L61_pbcCapEn5,((_zyM3L73_pbcCapEn6 | _zyM3L79_pbcCapEn7) | _zyM3L90_pbcCapEn8)},1'b0,1'b0,_zyM3L61_pbcReq9,_zyM3L61_pbcBusy9,_zyM3L61_pbcWait9);

task write;
 input reg [63:0] addr ;
 input reg [31:0] data ;
 output reg response;
 // F2, L66
 begin
  // F2, L67
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
   // F2, L77
   begin
    // F2, L78
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


task read;
 input reg [63:0] addr ;
 output reg [31:0] data ;
 output reg response;
 // F2, L98
 begin
  // F2, L99
  psel <= 1'b1;
  penable <= 1'b0;
  pwrite <= 1'b0;
  paddr <= addr[31:0];
  @(posedge clk)
   begin
   end
  penable <= 1'b1;
  while ((( !pready ) && (bus_timer < 32'b01100100)))
   // F2, L108
   begin
    // F2, L109
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

// F2, L46
always 
 @(posedge clk)
  // F2, L47
  begin
   // F2, L48
   if (( !reset_n ))
    // F2, L49
    begin
     // F2, L50
     bus_timer <= 8'b0;
     psel <= 1'b0;
     penable <= 1'b0;
     paddr <= 20'b0;
     pwdata <= 32'b0;
     pwrite <= 1'b0;
    end
  end
// F2, L10
initial 
 begin
 end
// F2, L10
initial 
 // F2, L10
 begin
  // F2, L94
  _zyL94_iscX1c0_n = 1'b1;
  _zyL61_iscX2c0_n = 1'b1;
 end
// F2, L94
always 
 // F2, L94
 begin
  // F2, L94
  @(posedge _zyM3L94_pbcMevClk4)
   begin
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
       psel <= 1'b1;
       penable <= 1'b0;
       pwrite <= 1'b0;
       paddr <= _zyaddr_L95_tfiV0_M3_pbcG0[31:0];
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
      penable <= 1'b1;
      if ((( !pready ) && (bus_timer < 32'b01100100)))
       // F2, L108
       begin
        // F2, L109
        bus_timer <= (bus_timer + 32'b01);
        _zyM3L110_pbcCapEn2 = 1'b1;
        _zyM3L94_pbcFsm0_s = 3'b010;
        _zyM3L94_pbcEn10 = 1'b0;
       end
      if (_zyM3L94_pbcEn10)
       // F2, L113
       begin
        // F2, L113
        bus_timer <= 8'b0;
        psel <= 1'b0;
        penable <= 1'b0;
        pwrite <= 1'b0;
        paddr <= 20'b0;
        _zydata_L96_tfiV1_M3_pbcG1 <= prdata;
        _zyresponse_L97_tfiV2_M3_pbcG2 <= (pslverr | (bus_timer == 32'b01100100));
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
      if ((( !pready ) && (bus_timer < 32'b01100100)))
       // F2, L108
       begin
        // F2, L109
        bus_timer <= (bus_timer + 32'b01);
        _zyM3L110_pbcCapEn2 = 1'b1;
        _zyM3L94_pbcFsm0_s = 3'b010;
        _zyM3L94_pbcEn10 = 1'b0;
       end
      if (_zyM3L94_pbcEn10)
       // F2, L113
       begin
        // F2, L113
        bus_timer <= 8'b0;
        psel <= 1'b0;
        penable <= 1'b0;
        pwrite <= 1'b0;
        paddr <= 20'b0;
        _zydata_L96_tfiV1_M3_pbcG1 <= prdata;
        _zyresponse_L97_tfiV2_M3_pbcG2 <= (pslverr | (bus_timer == 32'b01100100));
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
// F2, L61
always 
 // F2, L61
 begin
  // F2, L61
  @(posedge _zyM3L61_pbcMevClk9)
   begin
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
       psel <= 1'b1;
       penable <= 1'b0;
       pwrite <= 1'b1;
       paddr <= _zyaddr_L62_tfiV3_M3_pbcG3[31:0];
       pwdata <= _zydata_L63_tfiV4_M3_pbcG4[31:0];
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
      penable <= 1'b1;
      if ((( !pready ) && (bus_timer < 32'b01100100)))
       // F2, L77
       begin
        // F2, L78
        bus_timer <= (bus_timer + 32'b01);
        _zyM3L79_pbcCapEn7 = 1'b1;
        _zyM3L61_pbcFsm2_s = 3'b010;
        _zyM3L61_pbcEn11 = 1'b0;
       end
      if (_zyM3L61_pbcEn11)
       // F2, L82
       begin
        // F2, L82
        bus_timer <= 8'b0;
        psel <= 1'b0;
        penable <= 1'b0;
        pwrite <= 1'b0;
        paddr <= 20'b0;
        pwdata <= 32'b0;
        _zyresponse_L64_tfiV5_M3_pbcG5 <= (pslverr | (bus_timer == 32'b01100100));
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
      if ((( !pready ) && (bus_timer < 32'b01100100)))
       // F2, L77
       begin
        // F2, L78
        bus_timer <= (bus_timer + 32'b01);
        _zyM3L79_pbcCapEn7 = 1'b1;
        _zyM3L61_pbcFsm2_s = 3'b010;
        _zyM3L61_pbcEn11 = 1'b0;
       end
      if (_zyM3L61_pbcEn11)
       // F2, L82
       begin
        // F2, L82
        bus_timer <= 8'b0;
        psel <= 1'b0;
        penable <= 1'b0;
        pwrite <= 1'b0;
        paddr <= 20'b0;
        pwdata <= 32'b0;
        _zyresponse_L64_tfiV5_M3_pbcG5 <= (pslverr | (bus_timer == 32'b01100100));
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
// F2, L10
initial 
 // F2, L10
 begin
  // F2, L94
  _zyM3L94_pbcCapEn0 = 1'b1;
  _zyM3L104_pbcCapEn1 = 1'b0;
  _zyM3L110_pbcCapEn2 = 1'b0;
  _zyM3L121_pbcCapEn3 = 1'b0;
  _zyM3L61_pbcCapEn5 = 1'b1;
  _zyM3L73_pbcCapEn6 = 1'b0;
  _zyM3L79_pbcCapEn7 = 1'b0;
  _zyM3L90_pbcCapEn8 = 1'b0;
  _zyM3L94_pbcFsm0_s = 3'b0;
  _zyM3L61_pbcFsm2_s = 3'b0;
  begin
  end
 end
endmodule

