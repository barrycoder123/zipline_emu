// xc_work/v/130n.sv
// /home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_reg_indirect_access.v:34
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module nx_reg_indirect_access(stat_code,stat_datawords,stat_addr,capability_lst,capability_type,rd_dat,mem_a,clk,rst_n,addr,
cmnd_op,cmnd_addr,wr_stb,wr_dat,rst_dat);
// pkg external : PKG - nx_mem_typePKG : ENUM_LIT - TRUE
// pkg external : PKG - nx_mem_typePKG : ENUM_LIT - FALSE
// pkg external : PKG - nx_mem_typePKG : DTYPE  
// pkg external : PKG - nx_mem_typePKG : ENUM_LIT - REG
parameter CMND_ADDRESS = 11'b10001010100;
parameter STAT_ADDRESS = 11'b10001001100;
parameter ALIGNMENT = 2;
parameter N_DATA_BITS = 32;
parameter N_REG_ADDR_BITS = 11;
parameter N_ENTRIES = 32;
import nx_mem_typePKG::* ;
input  clk;
input  rst_n;
input  [10:0] addr ;
input  [3:0] cmnd_op ;
input  [4:0] cmnd_addr ;
output logic [2:0] stat_code ;
output logic [4:0] stat_datawords ;
output logic [4:0] stat_addr ;
output logic [15:0] capability_lst ;
output logic [3:0] capability_type ;
input  wr_stb;
input  [31:0] wr_dat ;
input  [31:0] rst_dat [0:31];
output logic [31:0] rd_dat ;
output logic [31:0] mem_a [0:31];
localparam nx_mem_typePKG::capabilities_t capabilities_t_set = 16'b1000000000100111;
logic reset;
logic [4:0] sw_add ;
logic sw_cs;
logic [31:0] sw_wdat ;
logic [31:0] sw_rdat ;
logic sw_we;
logic [4:0] addr_limit ;
wire  [0:2] _zy_simnet_stat_code_0_w$ ;
wire  [0:4] _zy_simnet_stat_datawords_1_w$ ;
wire  [0:4] _zy_simnet_stat_addr_2_w$ ;
wire  [0:15] _zy_simnet_capability_lst_3_w$ ;
wire  [0:3] _zy_simnet_capability_type_4_w$ ;
wire  [0:31] _zy_simnet_rd_dat_5_w$ ;
wire  _zy_simnet_cio_6;
wire  [0:2] _zy_simnet_stat_code_7_w$ ;
wire  [0:4] _zy_simnet_stat_datawords_8_w$ ;
wire  [0:4] _zy_simnet_stat_addr_9_w$ ;
wire  _zy_simnet_dio_10;
wire  [0:15] _zy_simnet_capability_lst_11_w$ ;
wire  [0:3] _zy_simnet_capability_type_12_w$ ;
wire  _zy_simnet_dio_13;
wire  [0:4] _zy_simnet_addr_limit_14_w$ ;
wire  [0:31] _zy_simnet_rd_dat_15_w$ ;
wire  _zy_simnet_sw_cs_16_w$;
wire  _zy_simnet_dio_17;
wire  _zy_simnet_sw_we_18_w$;
wire  [0:4] _zy_simnet_sw_add_19_w$ ;
wire  [0:31] _zy_simnet_sw_wdat_20_w$ ;
wire  [0:31] _zy_simnet_sw_rdat_21_w$ ;
wire  _zy_simnet_cio_22;
wire  [0:3] _zy_simnet_cio_23 ;
wire  _zy_simnet_cio_24;
wire  _zy_simnet_dio_25;
wire  _zy_simnet_reset_26_w$;
wire  [1023:0] _zyixc_ctx_wdata_1 ;
// F72, L98
assign  addr_limit = 5'b11111;
// F72, L44
assign  _zy_simnet_stat_code_0_w$ = stat_code;
// F72, L44
assign  _zy_simnet_stat_datawords_1_w$ = stat_datawords;
// F72, L44
assign  _zy_simnet_stat_addr_2_w$ = stat_addr;
// F72, L44
assign  _zy_simnet_capability_lst_3_w$ = capability_lst;
// F72, L45
assign  _zy_simnet_capability_type_4_w$ = capability_type;
// F72, L45
assign  _zy_simnet_rd_dat_5_w$ = rd_dat;
// F72, L121
assign  _zy_simnet_cio_6 = 1'b0;
// F72, L117
assign  stat_code = _zy_simnet_stat_code_7_w$;
// F72, L117
assign  stat_datawords = _zy_simnet_stat_datawords_8_w$;
// F72, L117
assign  stat_addr = _zy_simnet_stat_addr_9_w$;
// F72, L117
assign  capability_lst = _zy_simnet_capability_lst_11_w$;
// F72, L117
assign  capability_type = _zy_simnet_capability_type_12_w$;
// F72, L97
assign  _zy_simnet_addr_limit_14_w$ = addr_limit;
// F72, L117
assign  rd_dat = _zy_simnet_rd_dat_15_w$;
// F72, L117
assign  sw_cs = _zy_simnet_sw_cs_16_w$;
// F72, L117
assign  sw_we = _zy_simnet_sw_we_18_w$;
// F72, L117
assign  sw_add = _zy_simnet_sw_add_19_w$;
// F72, L117
assign  sw_wdat = _zy_simnet_sw_wdat_20_w$;
// F72, L94
assign  _zy_simnet_sw_rdat_21_w$ = sw_rdat;
// F72, L124
assign  _zy_simnet_cio_22 = 1'b0;
// F72, L125
assign  _zy_simnet_cio_23 = 4'b0;
// F72, L118
assign  _zy_simnet_cio_24 = 1'b1;
// F72, L117
assign  reset = _zy_simnet_reset_26_w$;
// F72, L34
ixc_context_read #(1024) _zzixc_ctxrd_0 ({{mem_a[32'sd0][32'sd31:32'sd0],mem_a[32'sd1][32'sd31:32'sd0],mem_a[32'sd2][32'sd31:32'sd0],mem_a[32'sd3][32'sd31:32'sd0],mem_a[32'sd4][32'sd31:32'sd0],mem_a[32'sd5][32'sd31:32'sd0],mem_a[32'sd6][32'sd31:32'sd0],mem_a[32'sd7][32'sd31:32'sd0],mem_a[32'sd8][32'sd31:32'sd0],mem_a[32'sd9][32'sd31:32'sd0],
mem_a[32'sd10][32'sd31:32'sd0],mem_a[32'sd11][32'sd31:32'sd0],mem_a[32'sd12][32'sd31:32'sd0],mem_a[32'sd13][32'sd31:32'sd0],mem_a[32'sd14][32'sd31:32'sd0],mem_a[32'sd15][32'sd31:32'sd0],mem_a[32'sd16][32'sd31:32'sd0],mem_a[32'sd17][32'sd31:32'sd0],mem_a[32'sd18][32'sd31:32'sd0],mem_a[32'sd19][32'sd31:32'sd0],
mem_a[32'sd20][32'sd31:32'sd0],mem_a[32'sd21][32'sd31:32'sd0],mem_a[32'sd22][32'sd31:32'sd0],mem_a[32'sd23][32'sd31:32'sd0],mem_a[32'sd24][32'sd31:32'sd0],mem_a[32'sd25][32'sd31:32'sd0],mem_a[32'sd26][32'sd31:32'sd0],mem_a[32'sd27][32'sd31:32'sd0],mem_a[32'sd28][32'sd31:32'sd0],mem_a[32'sd29][32'sd31:32'sd0],
mem_a[32'sd30][32'sd31:32'sd0],mem_a[32'sd31][32'sd31:32'sd0]}});
// F72, L34
ixc_context_write #(1024,1) _zzixc_ctxwr_1 ({{mem_a[32'sd0][32'sd31:32'sd0],mem_a[32'sd1][32'sd31:32'sd0],mem_a[32'sd2][32'sd31:32'sd0],mem_a[32'sd3][32'sd31:32'sd0],mem_a[32'sd4][32'sd31:32'sd0],mem_a[32'sd5][32'sd31:32'sd0],mem_a[32'sd6][32'sd31:32'sd0],mem_a[32'sd7][32'sd31:32'sd0],mem_a[32'sd8][32'sd31:32'sd0],mem_a[32'sd9][32'sd31:32'sd0],
mem_a[32'sd10][32'sd31:32'sd0],mem_a[32'sd11][32'sd31:32'sd0],mem_a[32'sd12][32'sd31:32'sd0],mem_a[32'sd13][32'sd31:32'sd0],mem_a[32'sd14][32'sd31:32'sd0],mem_a[32'sd15][32'sd31:32'sd0],mem_a[32'sd16][32'sd31:32'sd0],mem_a[32'sd17][32'sd31:32'sd0],mem_a[32'sd18][32'sd31:32'sd0],mem_a[32'sd19][32'sd31:32'sd0],
mem_a[32'sd20][32'sd31:32'sd0],mem_a[32'sd21][32'sd31:32'sd0],mem_a[32'sd22][32'sd31:32'sd0],mem_a[32'sd23][32'sd31:32'sd0],mem_a[32'sd24][32'sd31:32'sd0],mem_a[32'sd25][32'sd31:32'sd0],mem_a[32'sd26][32'sd31:32'sd0],mem_a[32'sd27][32'sd31:32'sd0],mem_a[32'sd28][32'sd31:32'sd0],mem_a[32'sd29][32'sd31:32'sd0],
mem_a[32'sd30][32'sd31:32'sd0],mem_a[32'sd31][32'sd31:32'sd0]}});
nx_indirect_access_cntrl_xcm110 u_cntrl(clk,rst_n,wr_stb,addr,cmnd_op,cmnd_addr,_zy_simnet_cio_6,_zy_simnet_stat_code_7_w$,_zy_simnet_stat_datawords_8_w$,_zy_simnet_stat_addr_9_w$,
  _zy_simnet_dio_10,_zy_simnet_capability_lst_11_w$,_zy_simnet_capability_type_12_w$,_zy_simnet_dio_13,_zy_simnet_addr_limit_14_w$,wr_dat,_zy_simnet_rd_dat_15_w$,_zy_simnet_sw_cs_16_w$,_zy_simnet_dio_17,_zy_simnet_sw_we_18_w$,
  _zy_simnet_sw_add_19_w$,_zy_simnet_sw_wdat_20_w$,_zy_simnet_sw_rdat_21_w$,_zy_simnet_cio_22,_zy_simnet_cio_23,_zy_simnet_cio_24,_zy_simnet_dio_25,_zy_simnet_reset_26_w$); 

task read(input string name, input integer addr, output bit [31:0] rdata , input reg [31:0] check  = 32'bx);
 // F72, L178
 begin
// synopsys translate_off
  // F72, L181
  xcvtf_port0_rd;;
// synopsys translate_on
  if ((addr >= 32))
   // F72, L181
   begin
    // F72, L182
    begin
     $xc_severity_msg(2, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_reg_indirect_access.v", 182);
     $display("%m");
     $display("Received address of %d, maximum supported is %d", addr, N_ENTRIES);
    end
    rdata = 32'b0;
   end
  else
   rdata = mem_a[addr];
  if (((check !== 32'bx) && (rdata != check)))
   begin
    $xc_severity_msg(2, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_reg_indirect_access.v", 190);
    $display("%m");
    $display("read 0x%0x from %s[%d] but expecting 0x%0x", rdata, name, addr, check);
   end
  else
   if (( !$test$plusargs("info_off") ))
    begin
     $xc_severity_msg(0, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_reg_indirect_access.v", 193);
     $display("%m");
     $display("backdoor read 0x%0x from %s[%d]", rdata, name, addr);
    end
 end
endtask


task write;
 input string name;
 input integer addr;
 input bit [31:0] wdata ;
 // F72, L197
 begin
// synopsys translate_off
  // F72, L199
  xcvtf_port0_rd;;
// synopsys translate_on
  if ((addr >= 32))
   begin
    $xc_severity_msg(2, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_reg_indirect_access.v", 200);
    $display("%m");
    $display("Received address of %d, maximum supported is %d", addr, N_ENTRIES);
   end
  else
   // F72, L203
   begin
    // F72, L203
    mem_a[addr] = wdata;
// synopsys translate_off
    xcvtf_port1_wr(0);
// synopsys translate_on
   end
  if (( !$test$plusargs("info_off") ))
   begin
    $xc_severity_msg(0, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_reg_indirect_access.v", 205);
    $display("%m");
    $display("backdoor write 0x%0x to %s[%d]", wdata, name, addr);
   end
 end
endtask

// F72, L132
always_ff 
 @(posedge clk or negedge rst_n)
  // F72, L132
  begin:mem_wr_rst
   // F72, L133
   if (( !rst_n ))
    // F72, L133
    begin:rst
     // F72, L134
     // F72, L134
     begin:unmblk0
      int ii;
      // F72, L134
      for (ii = 0;(ii < 32); ii = (ii + 1))
       mem_a[ii] <= rst_dat[ii];
     end
    end
   else
    if (reset)
     // F72, L137
     begin
      // F72, L138
      // F72, L138
      begin:unmblk1
       int ii;
       // F72, L138
       for (ii = 0;(ii < 32); ii = (ii + 1))
        mem_a[ii] <= rst_dat[ii];
      end
     end
    else
     if (((sw_cs && sw_we) && (16'(sw_add) < 16'b0100000)))
      // F72, L140
      begin
       // F72, L143
       mem_a[sw_add] <= sw_wdat;
      end
  end
// F72, L148
always_ff 
 @(posedge clk or negedge rst_n)
  // F72, L148
  begin:mem_rd
   // F72, L149
   if (( !rst_n ))
    // F72, L149
    begin:rst
     // F72, L150
     sw_rdat <= 32'b0;
    end
   else
    if (sw_cs)
     // F72, L152
     begin
      // F72, L153
      if ((16'(sw_add) < 16'b0100000))
       // F72, L153
       begin
        // F72, L154
        if (sw_we)
         sw_rdat <= sw_wdat;
        else
         sw_rdat <= mem_a[sw_add];
       end
      else
       sw_rdat <= 32'b0;
     end
  end
// F72, L167
initial 
 // F72, L167
 begin
  // F72, L168
  if (( !$test$plusargs("info_off") ))
   begin
    $xc_severity_msg(0, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_reg_indirect_access.v", 168);
    $display("%m");
    $display("%dx%db RegArray (%db)", N_ENTRIES, N_DATA_BITS, (N_ENTRIES * N_DATA_BITS));
   end
  if (( !$test$plusargs("info_off") ))
   begin
    $xc_severity_msg(0, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_reg_indirect_access.v", 170);
    $display("%m");
    $display("Estimate %d flops", ((N_ENTRIES * N_DATA_BITS) + N_DATA_BITS));
   end
 end
// F72, L34
initial 
 begin
 end

import "DPI-C" context function void xctf_context_read(int lpid, int width, output bit[4095:1] value);
import "DPI-C" context function void xctf_context_write(int lpid, int width, input bit[4095:1] value);
import "DPI-C" context function void xctf_context_sched_callback(int is4State);
import "DPI-C" context function void xctf_context_4s_read(int lpid, int width, output logic[4095:1] value);
import "DPI-C" context function void xctf_context_4s_write(int lpid, int width, input logic[4095:1] value);

typedef enum {CTX_HW, CTX_SW, CTX_SWD} ctx_state;
ctx_state _swv[2] = {CTX_SW, CTX_SW};

function void xcvtf_port0_rd;
  if (_swv[0] == CTX_HW) begin
    xctf_context_read(0, 1024, {{mem_a[32'sd0][32'sd31:32'sd0],mem_a[32'sd1][32'sd31:32'sd0],mem_a[32'sd2][32'sd31:32'sd0],mem_a[32'sd3][32'sd31:32'sd0],mem_a[32'sd4][32'sd31:32'sd0],mem_a[32'sd5][32'sd31:32'sd0],mem_a[32'sd6][32'sd31:32'sd0],mem_a[32'sd7][32'sd31:32'sd0],mem_a[32'sd8][32'sd31:32'sd0],mem_a[32'sd9][32'sd31:32'sd0],
mem_a[32'sd10][32'sd31:32'sd0],mem_a[32'sd11][32'sd31:32'sd0],mem_a[32'sd12][32'sd31:32'sd0],mem_a[32'sd13][32'sd31:32'sd0],mem_a[32'sd14][32'sd31:32'sd0],mem_a[32'sd15][32'sd31:32'sd0],mem_a[32'sd16][32'sd31:32'sd0],mem_a[32'sd17][32'sd31:32'sd0],mem_a[32'sd18][32'sd31:32'sd0],mem_a[32'sd19][32'sd31:32'sd0],
mem_a[32'sd20][32'sd31:32'sd0],mem_a[32'sd21][32'sd31:32'sd0],mem_a[32'sd22][32'sd31:32'sd0],mem_a[32'sd23][32'sd31:32'sd0],mem_a[32'sd24][32'sd31:32'sd0],mem_a[32'sd25][32'sd31:32'sd0],mem_a[32'sd26][32'sd31:32'sd0],mem_a[32'sd27][32'sd31:32'sd0],mem_a[32'sd28][32'sd31:32'sd0],mem_a[32'sd29][32'sd31:32'sd0],
mem_a[32'sd30][32'sd31:32'sd0],mem_a[32'sd31][32'sd31:32'sd0]}});
    _swv[0] = CTX_SW;
  end
endfunction

bit [0:0] _sw_wen1;
bit [0:0] _sw_wenD1;
function void xcvtf_port1_wr(int vid);
  if ((vid == 0)) begin
    xcvtf_port0_rd;
  end
  if (!_sw_wenD1[vid]) begin
    _sw_wen1[vid] = ~_sw_wen1[vid];
    _sw_wenD1[vid] = 1;
  end  _swv[1] = CTX_SWD;
  xctf_context_sched_callback(0);
endfunction

function void _reset_swv;
  begin
    if (xc_top.hwOutInit)
      for (int i = 0; i < 2; i = i + 1)
        _swv[i] = CTX_HW;
    else
      for (int i = 0; i < 2; i = i + 1)
        _swv[i] = CTX_SW;
    _sw_wenD1 = 'b0;
  end
endfunction
initial begin
  forever begin
    @xc_top.hwOutInit;
    _reset_swv;
  end
end

ixc_context_read _zzctxcb( .rdata() );

ixc_context_4s_read _zzctxcb_4s( .rdata() );

function void xcvtf_context_writeback(input integer dummy);
  if (_swv[1] == CTX_SWD) begin
    xctf_context_write(1, 1025, {{mem_a[32'sd0][32'sd31:32'sd0],mem_a[32'sd1][32'sd31:32'sd0],mem_a[32'sd2][32'sd31:32'sd0],mem_a[32'sd3][32'sd31:32'sd0],mem_a[32'sd4][32'sd31:32'sd0],mem_a[32'sd5][32'sd31:32'sd0],mem_a[32'sd6][32'sd31:32'sd0],mem_a[32'sd7][32'sd31:32'sd0],mem_a[32'sd8][32'sd31:32'sd0],mem_a[32'sd9][32'sd31:32'sd0],
mem_a[32'sd10][32'sd31:32'sd0],mem_a[32'sd11][32'sd31:32'sd0],mem_a[32'sd12][32'sd31:32'sd0],mem_a[32'sd13][32'sd31:32'sd0],mem_a[32'sd14][32'sd31:32'sd0],mem_a[32'sd15][32'sd31:32'sd0],mem_a[32'sd16][32'sd31:32'sd0],mem_a[32'sd17][32'sd31:32'sd0],mem_a[32'sd18][32'sd31:32'sd0],mem_a[32'sd19][32'sd31:32'sd0],
mem_a[32'sd20][32'sd31:32'sd0],mem_a[32'sd21][32'sd31:32'sd0],mem_a[32'sd22][32'sd31:32'sd0],mem_a[32'sd23][32'sd31:32'sd0],mem_a[32'sd24][32'sd31:32'sd0],mem_a[32'sd25][32'sd31:32'sd0],mem_a[32'sd26][32'sd31:32'sd0],mem_a[32'sd27][32'sd31:32'sd0],mem_a[32'sd28][32'sd31:32'sd0],mem_a[32'sd29][32'sd31:32'sd0],
mem_a[32'sd30][32'sd31:32'sd0],mem_a[32'sd31][32'sd31:32'sd0]}, _sw_wen1});
  end
  _reset_swv;
endfunction

endmodule

