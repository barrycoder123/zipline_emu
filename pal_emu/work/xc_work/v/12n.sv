// xc_work/v/12n.sv
// /home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl_ram_1r1w.v:18
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module nx_fifo_ctrl_ram_1r1w_xcm18(mem_wen,mem_waddr,mem_wdata,mem_ren,mem_raddr,empty,full,used_slots,free_slots,rerr,
rdata,underflow,overflow,clk,rst_n,mem_rdata,mem_ecc_error,wen,wdata,ren,clear);
// exported object:  (var) _zyixc_port_1_0_isf (R)  
// exported object:  (var) _zyixc_port_1_0_osf (R)  
parameter DEPTH = 168;
parameter WIDTH = 83;
parameter UNDERFLOW_ASSERT = 1;
parameter OVERFLOW_ASSERT = 1;
parameter RD_LATENCY = 3;
parameter REN_COMB = 1;
parameter RDATA_COMB = 1;
localparam PREFETCH_DEPTH = 3;
localparam TOTAL_DEPTH = 171;
input  clk;
input  rst_n;
input  [82:0] mem_rdata ;
input  mem_ecc_error;
output logic mem_wen;
output logic [7:0] mem_waddr ;
output logic [82:0] mem_wdata ;
output logic mem_ren;
output logic [7:0] mem_raddr ;
input  wen;
input  [82:0] wdata ;
input  ren;
input  clear;
output logic empty;
output logic full;
output logic [7:0] used_slots ;
output logic [7:0] free_slots ;
output logic rerr;
output logic [82:0] rdata ;
output logic underflow;
output logic overflow;
logic [7:0] r_used_slots ;
logic [7:0] c_used_slots ;
logic [7:0] r_free_slots ;
logic [7:0] c_free_slots ;
logic [2:0] r_mem_ren_dly ;
logic [2:0] c_mem_ren_dly ;
logic [2:0] r_mem_prefetch_wptr_dly [2:0];
logic [2:0] c_mem_prefetch_wptr_dly [2:0];
logic [7:0] r_mem_wptr ;
logic [7:0] c_mem_wptr ;
logic [7:0] r_mem_rptr ;
logic [7:0] c_mem_rptr ;
logic r_mem_empty;
logic c_mem_empty;
logic r_mem_full;
logic c_mem_full;
logic [2:0] r_prefetch_wptr ;
logic [2:0] c_prefetch_wptr ;
logic [1:0] r_prefetch_rptr ;
logic [1:0] c_prefetch_rptr ;
logic [1:0] r_prefetch_depth ;
logic [1:0] c_prefetch_depth ;
logic r_prefetch_empty;
logic c_prefetch_empty;
logic r_prefetch_full;
logic c_prefetch_full;
logic [83:0] r_prefetch_data [2:0];
logic [83:0] c_prefetch_data [2:0];
logic prefetch_wen;
logic [2:0] prefetch_lden_bypass ;
logic [2:0] prefetch_lden_mem ;
wire  _zy_simnet_mem_wen_0_w$;
wire  [0:7] _zy_simnet_mem_waddr_1_w$ ;
wire  [0:82] _zy_simnet_mem_wdata_2_w$ ;
wire  _zy_simnet_mem_ren_3_w$;
wire  [0:7] _zy_simnet_mem_raddr_4_w$ ;
wire  _zy_simnet_empty_5_w$;
wire  _zy_simnet_full_6_w$;
wire  [0:7] _zy_simnet_used_slots_7_w$ ;
wire  [0:7] _zy_simnet_free_slots_8_w$ ;
wire  _zy_simnet_rerr_9_w$;
wire  [0:82] _zy_simnet_rdata_10_w$ ;
wire  _zy_simnet_underflow_11_w$;
wire  _zy_simnet_overflow_12_w$;
wire  _zy_sva__asrtLbl279_1_reset_or;
bit [2:0]  _zy_sva_b0;
wire  _zy_sva_sf1hot_0;
bit [0:0]  _zy_sva__asrtLbl279_1_1_fail = 1'b0;
// synopsys translate_off
bit [0:0]  _zy_sva__asrtLbl279_1_1_fail_ies = 1'b0;
wire [4:0]  _zy_sva__asrtLbl279_1_ies;
wire  _sva_placeholder_clk;
wire  _sva_placeholder_expr;
// synopsys translate_on
wire  _zyixc_port_1_0_s2hW;
bit _zyixc_port_1_0_req;
bit _zyixc_port_1_0_ack;
bit _zyixc_port_1_0_isf;
bit _zyixc_port_1_0_osf;
assign  used_slots = r_used_slots;
assign  free_slots = r_free_slots;
assign  mem_waddr = r_mem_wptr;
assign  mem_raddr = r_mem_rptr;
assign  mem_wdata = wdata;
assign  empty = r_prefetch_empty;
assign  full = r_mem_full;
assign  _zy_simnet_mem_wen_0_w$ = mem_wen;
assign  _zy_simnet_mem_waddr_1_w$ = mem_waddr;
assign  _zy_simnet_mem_wdata_2_w$ = mem_wdata;
assign  _zy_simnet_mem_ren_3_w$ = mem_ren;
assign  _zy_simnet_mem_raddr_4_w$ = mem_raddr;
assign  _zy_simnet_empty_5_w$ = empty;
assign  _zy_simnet_full_6_w$ = full;
assign  _zy_simnet_used_slots_7_w$ = used_slots;
assign  _zy_simnet_free_slots_8_w$ = free_slots;
assign  _zy_simnet_rerr_9_w$ = rerr;
assign  _zy_simnet_rdata_10_w$ = rdata;
assign  _zy_simnet_underflow_11_w$ = underflow;
assign  _zy_simnet_overflow_12_w$ = overflow;
assign  _zy_sva__asrtLbl279_1_reset_or = (rst_n !== 32'b01);
assign  _zy_sva_sf1hot_0 = $onehot(_zy_sva_b0);
// synopsys translate_off
assign  _zy_sva__asrtLbl279_1_ies = {1'b0,1'b0,1'b0,_zy_sva__asrtLbl279_1_1_fail_ies,1'b0};
// synopsys translate_on
/* ++ ixc_sample  #(3) _zz_zy_sva_b0 (_zy_sva_b0, r_prefetch_wptr); */
reg [2:0] _zy__zz_zy_sva_b0_r;
initial 
 _zy__zz_zy_sva_b0_r = r_prefetch_wptr;
assign _zy_sva_b0 = _zy__zz_zy_sva_b0_r;
always 
 @(r_prefetch_wptr)
  begin
   xc_top.xcSchEotQ;
   @(xc_top.eotQEvent) ;
   _zy__zz_zy_sva_b0_r = r_prefetch_wptr;
  end
// -- ixc_sample

ixc_pio_call #(0,0,0,0,1) _zzixc_tfport_1_0 (_zyixc_port_1_0_ack,_zyixc_port_1_0_s2hW,_zyixc_port_1_0_isf,_zyixc_port_1_0_req,1'b0,_zyixc_port_1_0_osf,1'b0,1'b0);

task _zy_sva__asrtLbl279_1_3_fail_t;
 begin
  begin $display("r_prefetch_wptr NOT one-hot"); $assert_error(1,0,,"/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl_ram_1r1w.v",279,0); end
// synopsys translate_off
  _zy_sva__asrtLbl279_1_1_fail_ies <= (_zy_sva__asrtLbl279_1_1_fail_ies === 1'b0);
// synopsys translate_on
 end
endtask


task _zyifsynp_svatf0;
// synopsys translate_off
 _zy_sva__asrtLbl279_1_3_fail_t;
// synopsys translate_on
endtask

always 
 @(posedge clk or posedge _zy_sva__asrtLbl279_1_reset_or)
  begin
   if (_zy_sva__asrtLbl279_1_reset_or)
    begin
    end
   else
    begin:_zy_sva_sblk_1_1
     bit _zy_sva_nts_1_1_pass;
     _zy_sva_nts_1_1_pass = _zy_sva_sf1hot_0;
     if ((_zy_sva_nts_1_1_pass !== 1'b1))
      begin
       _zy_sva__asrtLbl279_1_1_fail <= (_zy_sva__asrtLbl279_1_1_fail === 1'b0);
       _zyixc_port_1_0_req = ( ~_zyixc_port_1_0_req );
      end
    end
  end
always_comb 
 begin:unmblk0
  logic v_prefetch_full;
  c_mem_wptr = r_mem_wptr;
  c_mem_rptr = r_mem_rptr;
  c_mem_empty = r_mem_empty;
  c_mem_full = r_mem_full;
  c_prefetch_wptr = r_prefetch_wptr;
  c_prefetch_rptr = r_prefetch_rptr;
  c_prefetch_depth = r_prefetch_depth;
  c_prefetch_empty = r_prefetch_empty;
  c_prefetch_full = r_prefetch_full;
  c_used_slots = r_used_slots;
  c_free_slots = r_free_slots;
  prefetch_wen = 1'b0;
  prefetch_lden_bypass = 3'b0;
  prefetch_lden_mem = 3'b0;
  underflow = 1'b0;
  if (ren)
   begin
    c_prefetch_full = 1'b0;
    if (( !empty ))
     begin
      c_used_slots = (r_used_slots - 32'b01);
      c_free_slots = (r_free_slots + 32'b01);
      c_prefetch_depth = (r_prefetch_depth - 32'b01);
      if ((r_prefetch_rptr == 32'b010))
       c_prefetch_rptr = 2'b0;
      else
       c_prefetch_rptr = (r_prefetch_rptr + 32'b01);
      if ((r_prefetch_depth == 32'b01))
       c_prefetch_empty = 1'b1;
     end
    else
     begin
      underflow = 1'b1;
      begin:FIFO_UNDERFLOW
      end
     end
   end
  v_prefetch_full = c_prefetch_full;
  mem_ren = 1'b0;
  if ((( !v_prefetch_full ) && ( !r_mem_empty )))
   begin
    mem_ren = 1'b1;
    if ((r_mem_rptr == 32'b010100111))
     c_mem_rptr = 8'b0;
    else
     c_mem_rptr = (r_mem_rptr + 32'b01);
    c_mem_full = 1'b0;
    if ((c_mem_rptr == r_mem_wptr))
     c_mem_empty = 1'b1;
    prefetch_wen = 1'b1;
   end
  if (r_mem_ren_dly[2])
   prefetch_lden_mem = r_mem_prefetch_wptr_dly[2];
  c_mem_ren_dly = (3'((r_mem_ren_dly << 1)) | 3'(mem_ren));
  overflow = 1'b0;
  mem_wen = 1'b0;
  if (wen)
   begin
    if (( !r_mem_full ))
     begin
      if ((r_mem_empty && ( !v_prefetch_full )))
       begin
        prefetch_lden_bypass = r_prefetch_wptr;
        prefetch_wen = 1'b1;
       end
      else
       begin
        mem_wen = 1'b1;
        if ((r_mem_wptr == 32'b010100111))
         c_mem_wptr = 8'b0;
        else
         c_mem_wptr = (r_mem_wptr + 32'b01);
        c_mem_empty = 1'b0;
        if ((c_mem_wptr == c_mem_rptr))
         c_mem_full = 1'b1;
       end
      if ((ren && ( !empty )))
       begin
        c_used_slots = r_used_slots;
        c_free_slots = r_free_slots;
       end
      else
       begin
        c_used_slots = (r_used_slots + 32'b01);
        c_free_slots = (r_free_slots - 32'b01);
       end
     end
    else
     begin
      overflow = 1'b1;
      begin:FIFO_OVERFLOW
      end
     end
   end
  if (prefetch_wen)
   begin
    c_prefetch_wptr = (3'((r_prefetch_wptr << 1)) | 3'(r_prefetch_wptr[2]));
    c_prefetch_empty = 1'b0;
    if ((ren && ( !empty )))
     begin
      c_prefetch_depth = r_prefetch_depth;
      c_prefetch_full = r_prefetch_full;
     end
    else
     begin
      if ((r_prefetch_depth == 32'b010))
       c_prefetch_full = 1'b1;
      c_prefetch_depth = (r_prefetch_depth + 32'b01);
     end
   end
  c_mem_prefetch_wptr_dly[0] = r_prefetch_wptr;
  begin:unmblk1
   int ii;
   for (ii = 1;(ii < 3); ii = (ii + 1))
    c_mem_prefetch_wptr_dly[ii] = r_mem_prefetch_wptr_dly[(ii - 1)];
  end
  if ((1'b1 && prefetch_lden_mem[r_prefetch_rptr]))
   begin
    {rerr,rdata} = {mem_ecc_error,mem_rdata};
    if (ren)
     prefetch_lden_mem = 3'b0;
   end
  else
   {rerr,rdata} = r_prefetch_data[r_prefetch_rptr];
  c_prefetch_data = r_prefetch_data;
  begin:unmblk2
   int ii;
   for (ii = 0;(ii < 3); ii = (ii + 1))
    begin
     if ((prefetch_lden_bypass[ii] || prefetch_lden_mem[ii]))
      c_prefetch_data[ii] = (({84{prefetch_lden_bypass[ii]}} & {1'b0,wdata}) | ({84{prefetch_lden_mem[ii]}} & {mem_ecc_error,mem_rdata}));
    end
  end
  if (clear)
   begin
    c_mem_empty = 1'b1;
    c_prefetch_empty = 1'b1;
    c_prefetch_wptr = 3'b01;
    c_mem_ren_dly = 3'b0;
    c_used_slots = 8'b0;
    c_free_slots = 8'b10101011;
    c_mem_full = 1'b0;
    c_mem_rptr = 8'b0;
    c_mem_wptr = 8'b0;
    c_prefetch_depth = 2'b0;
    c_prefetch_full = 1'b0;
    c_prefetch_rptr = 2'b0;
   end
 end
always 
 @(posedge clk or negedge rst_n)
  begin
   if (( !rst_n ))
    begin
     r_mem_empty <= 1'b1;
     r_prefetch_empty <= 1'b1;
     r_prefetch_wptr <= 3'b01;
     r_free_slots <= 8'b10101011;
     r_mem_full <= 1'b0;
     r_mem_ren_dly <= 3'b0;
     r_mem_rptr <= 8'b0;
     r_mem_wptr <= 8'b0;
     r_prefetch_depth <= 2'b0;
     r_prefetch_full <= 1'b0;
     r_prefetch_rptr <= 2'b0;
     r_used_slots <= 8'b0;
    end
   else
    begin
     r_mem_ren_dly <= c_mem_ren_dly;
     r_mem_empty <= c_mem_empty;
     r_mem_full <= c_mem_full;
     r_mem_wptr <= c_mem_wptr;
     r_mem_rptr <= c_mem_rptr;
     r_prefetch_empty <= c_prefetch_empty;
     r_prefetch_full <= c_prefetch_full;
     r_prefetch_wptr <= c_prefetch_wptr;
     r_prefetch_rptr <= c_prefetch_rptr;
     r_prefetch_depth <= c_prefetch_depth;
     r_used_slots <= c_used_slots;
     r_free_slots <= c_free_slots;
    end
  end
always 
 @(posedge clk)
  begin
   r_mem_prefetch_wptr_dly <= c_mem_prefetch_wptr_dly;
   r_prefetch_data <= c_prefetch_data;
  end
initial 
 begin
 end

  import "DPI-C" context function int xctf_register_task(input int channel, input string name, input int exportTF, int isFunc, int openarr, input int partitionId, input int mid, input int iwidth, input int owidth, input string file, input int line);
  const bit [15:0] _zyifsynp_svatf0_gtid = xctf_register_task(1, "_zyifsynp_svatf0", 0, 0, 0, 0, 12, 0, 0, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl_ram_1r1w.v", 18);
function bit [15:0] _zyifsynp_svatf0_gtid_get();
  _zyifsynp_svatf0_gtid_get = _zyifsynp_svatf0_gtid;
endfunction

  import "DPI-C" context function void xctf_register_port_task(input int channel, input int lpid, input int ltid, input int gtid);
  import "DPI-C" context function void xctf_register_port_marg(input int channel, input int lpid, input int lmargid, input string memspec);
  import "DPI-C" context function int xctf_define_port_task_n_marg_reg_call(input int channel, input int lpid, input int piomem, input int s2hwidth, input int h2swidth, input int lmargCnt, input int ltidwidth, input int ltid, input int gtid, input int lmargid, input string memspec);
  import "DPI-C" context function void xctf_port_task_n_marg_reg_call(input int channel, input int lpid, input int ltid, input int gtid, input int lmargid, input string memspec);
  import "DPI-C" context task xctf_dispatch_c_task(input int channel, input int gpid);
  import "DPI-C" function void xctf_dispatch_sv_func_beg(input int channel, input int gpid);
  import "DPI-C" function void xctf_dispatch_sv_func_end(input int channel, input int gpid);
  import "DPI-C" function void xctf_OSF_get_iargs_sv(input int channel, input int gpid, output bit [] iargs);
  import "DPI-C" function void xctf_OSF_get_marg_sv(input int channel, input int gpid, int pos, output bit [] marg);
  import "DPI-C" function void xctf_OSF_put_oargs_sv(input int channel, input int gpid, input bit [] oargs);
  import "DPI-C" function void xctf_OSF_put_marg_sv(input int channel, input int gpid, int pos, input bit [] marg);




  integer _zyport_1_0_gpid;
  integer _zyport_1_0_ltid;
  initial begin:_zzblk_1_0
    _zyport_1_0_gpid = xctf_define_port_task_n_marg_reg_call(1, 0, 0, 0, 0, 1, 0, 0, _zyifsynp_svatf0_gtid, 0, "");
    IXC_GFIFO.OSF1.OSF_create_wait_event(_zyport_1_0_gpid);
    forever begin
      IXC_GFIFO.OSF1.OSF_wait(_zyport_1_0_gpid, _zyport_1_0_ltid);
      xctf_dispatch_sv_func_beg(1, _zyport_1_0_gpid);
      case (_zyport_1_0_ltid)
      0:
        begin: _zzblk_1_0
          _zyifsynp_svatf0();
        end
      endcase
      xctf_dispatch_sv_func_end(1, _zyport_1_0_gpid);
    end
  end


axis_assert("_asrtLbl279",1'b0,2'b01,,,,,,,,,,,"/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl_ram_1r1w.v",279,3'b000);
_asrtLbl279:assert property (@( posedge clk ) disable iff ((rst_n !== 32'b01)) $onehot(r_prefetch_wptr))   begin
 end
 else   begin $display("r_prefetch_wptr NOT one-hot"); $assert_error(1,0,,"/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl_ram_1r1w.v",279,0); end
endmodule

