// xc_work/v/99n.sv
// /home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_credit_manager.v:38
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module nx_credit_manager(credit_available,hw_status,clk,rst_n,sw_init,credit_return,credit_used,sw_config);
// exported object:  (var) _zyixc_port_1_0_isf (R)  
// exported object:  (var) _zyixc_port_1_0_osf (R)  
// exported object:  (var) _zyixc_port_1_1_isf (R)  
// exported object:  (var) _zyixc_port_1_1_osf (R)  
parameter N_MAX_CREDITS = 512;
parameter N_USED_LAG_CYCLES = 0;
parameter N_MAX_CREDITS_PER_CYCLE = 256;
parameter N_OUTSTANDING_CREDITS = 0;
typedef struct packed {
 logic dis_used;
 logic dis_return;
 logic [9:0] credit_limit ;
} sw_config_t;
typedef struct packed {
 logic used_err;
 logic return_err;
 logic [9:0] credit_issued ;
} hw_status_t;
input  clk;
input  rst_n;
input  sw_init;
input  [8:0] credit_return ;
output logic [8:0] credit_available ;
input  [8:0] credit_used ;
input sw_config_t sw_config;
output hw_status_t hw_status;
localparam RESERVED_CREDIT = 0;
logic [9:0] credit_issued_r ;
logic used_err_v;
logic return_err_v;
logic [9:0] credit_issued_v ;
logic [9:0] remaining_credit_v ;
integer outstanding;
logic credit_decrease;
logic [9:0] credit_limit ;
wire  [0:8] _zy_simnet_credit_available_0_w$ ;
wire  [0:11] _zy_simnet_hw_status_1_w$ ;
bit _zy_sva_b0;
bit _zy_sva_b1;
bit [0:0]  _zy_sva_credit_return_check_1_0_fail = 1'b0;
// synopsys translate_off
bit [0:0]  _zy_sva_credit_return_check_1_0_fail_ies = 1'b0;
wire [4:0]  _zy_sva_credit_return_check_1_ies;
// synopsys translate_on
bit _zy_sva_b2;
bit [0:0]  _zy_sva_credit_danger_check_2_3_fail = 1'b0;
// synopsys translate_off
bit [0:0]  _zy_sva_credit_danger_check_2_3_fail_ies = 1'b0;
wire [4:0]  _zy_sva_credit_danger_check_2_ies;
wire  _sva_placeholder_clk;
wire  _sva_placeholder_expr;
// synopsys translate_on
wire  _zy_sva_b0_t;
wire  _zy_sva_b1_t;
wire  _zy_sva_b2_t;
wire  _zyixc_port_1_0_s2hW;
bit _zyixc_port_1_0_req;
bit _zyixc_port_1_0_ack;
bit _zyixc_port_1_0_isf;
bit _zyixc_port_1_0_osf;
wire  _zyixc_port_1_1_s2hW;
bit _zyixc_port_1_1_req;
bit _zyixc_port_1_1_ack;
bit _zyixc_port_1_1_isf;
bit _zyixc_port_1_1_osf;
assign  credit_decrease = (sw_config.credit_limit < credit_limit);
assign  _zy_simnet_credit_available_0_w$ = credit_available;
assign  _zy_simnet_hw_status_1_w$ = hw_status;
// synopsys translate_off
assign  _zy_sva_credit_return_check_1_ies = {1'b0,1'b0,1'b0,_zy_sva_credit_return_check_1_0_fail_ies,1'b0};
assign  _zy_sva_credit_danger_check_2_ies = {1'b0,1'b0,1'b0,_zy_sva_credit_danger_check_2_3_fail_ies,1'b0};
// synopsys translate_on
assign  _zy_sva_b0_t = ( | credit_return );
assign  _zy_sva_b1_t = (credit_return <= outstanding);
assign  _zy_sva_b2_t = (sw_config.credit_limit <= 32'b01000000000);
/* ++ ixc_sample  #(1) _zz_zy_sva_b0 (_zy_sva_b0, _zy_sva_b0_t); */
reg _zy__zz_zy_sva_b0_r;
initial 
 _zy__zz_zy_sva_b0_r = _zy_sva_b0_t;
assign _zy_sva_b0 = _zy__zz_zy_sva_b0_r;
always 
 @(_zy_sva_b0_t)
  begin
   xc_top.xcSchEotQ;
   @(xc_top.eotQEvent) ;
   _zy__zz_zy_sva_b0_r = _zy_sva_b0_t;
  end
// -- ixc_sample

/* ++ ixc_sample  #(1) _zz_zy_sva_b1 (_zy_sva_b1, _zy_sva_b1_t); */
reg _zy__zz_zy_sva_b1_r;
initial 
 _zy__zz_zy_sva_b1_r = _zy_sva_b1_t;
assign _zy_sva_b1 = _zy__zz_zy_sva_b1_r;
always 
 @(_zy_sva_b1_t)
  begin
   xc_top.xcSchEotQ;
   @(xc_top.eotQEvent) ;
   _zy__zz_zy_sva_b1_r = _zy_sva_b1_t;
  end
// -- ixc_sample

/* ++ ixc_sample  #(1) _zz_zy_sva_b2 (_zy_sva_b2, _zy_sva_b2_t); */
reg _zy__zz_zy_sva_b2_r;
initial 
 _zy__zz_zy_sva_b2_r = _zy_sva_b2_t;
assign _zy_sva_b2 = _zy__zz_zy_sva_b2_r;
always 
 @(_zy_sva_b2_t)
  begin
   xc_top.xcSchEotQ;
   @(xc_top.eotQEvent) ;
   _zy__zz_zy_sva_b2_r = _zy_sva_b2_t;
  end
// -- ixc_sample

ixc_pio_call #(0,0,0,0,1) _zzixc_tfport_1_1 (_zyixc_port_1_1_ack,_zyixc_port_1_1_s2hW,_zyixc_port_1_1_isf,_zyixc_port_1_1_req,1'b0,_zyixc_port_1_1_osf,1'b0,1'b0);
ixc_pio_call #(0,0,0,0,1) _zzixc_tfport_1_0 (_zyixc_port_1_0_ack,_zyixc_port_1_0_s2hW,_zyixc_port_1_0_isf,_zyixc_port_1_0_req,1'b0,_zyixc_port_1_0_osf,1'b0,1'b0);

task _zy_sva_credit_return_check_1_2_fail_t;
 begin
  begin $display("Whoa getting credits that were not issued."); $assert_error(1,0,"credit_return_check","/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_credit_manager.v",118,0); end
// synopsys translate_off
  _zy_sva_credit_return_check_1_0_fail_ies <= (_zy_sva_credit_return_check_1_0_fail_ies === 1'b0);
// synopsys translate_on
 end
endtask


task _zy_sva_credit_danger_check_2_5_fail_t;
 begin
  begin $display("Credit limit is greater than max credits."); $assert_warning(0,"credit_danger_check","/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_credit_manager.v",124,0); end
// synopsys translate_off
  _zy_sva_credit_danger_check_2_3_fail_ies <= (_zy_sva_credit_danger_check_2_3_fail_ies === 1'b0);
// synopsys translate_on
 end
endtask


task _zyifsynp_svatf0;
// synopsys translate_off
 _zy_sva_credit_return_check_1_2_fail_t;
// synopsys translate_on
endtask


task _zyifsynp_svatf1;
// synopsys translate_off
 _zy_sva_credit_danger_check_2_5_fail_t;
// synopsys translate_on
endtask

always 
 @(posedge clk)
  begin:_zy_sva_sblk_1_2
   bit _zy_sva_nts_1_2_pass;
   _zy_sva_nts_1_2_pass = (_zy_sva_b0 & _zy_sva_b1);
   if ((_zy_sva_b0 & (_zy_sva_nts_1_2_pass !== 1'b1)))
    begin
     _zy_sva_credit_return_check_1_0_fail <= (_zy_sva_credit_return_check_1_0_fail === 1'b0);
     _zyixc_port_1_0_req = ( ~_zyixc_port_1_0_req );
    end
  end
always 
 @(posedge clk)
  begin:_zy_sva_sblk_2_1
   bit _zy_sva_nts_2_1_pass;
   _zy_sva_nts_2_1_pass = _zy_sva_b2;
   if ((_zy_sva_nts_2_1_pass !== 1'b1))
    begin
     _zy_sva_credit_danger_check_2_3_fail <= (_zy_sva_credit_danger_check_2_3_fail === 1'b0);
     _zyixc_port_1_1_req = ( ~_zyixc_port_1_1_req );
    end
  end
always 
 @(posedge clk or negedge rst_n)
  if (( !rst_n ))
   begin
    outstanding <= 0;
    credit_limit <= 10'b1000000000;
   end
  else
   begin
    if (sw_init)
     begin
      outstanding <= 0;
      credit_limit <= 10'b1000000000;
     end
    else
     begin
      outstanding <= ((outstanding + credit_used) - credit_return);
      credit_limit <= sw_config.credit_limit;
     end
   end
final 
 begin:credit_outstanding_check
 end
always_comb 
 begin:cm
  return_err_v = 1'b0;
  if ((credit_issued_r >= 10'(credit_return)))
   credit_issued_v = 10'((credit_issued_r - credit_return));
  else
   begin
    return_err_v = 1'b1;
    credit_issued_v = 10'b0;
   end
  if ((32'(sw_config.credit_limit) > 32'((credit_issued_v + 32'b0))))
   remaining_credit_v = 10'((sw_config.credit_limit - credit_issued_v));
  else
   remaining_credit_v = 10'b0;
  used_err_v = (32'((credit_issued_v + credit_used)) > 32'(sw_config.credit_limit));
  if (rst_n)
   begin
    begin:credit_used_check
    end
   end
  credit_issued_v = ((11'((credit_issued_v + credit_used)) < 11'(sw_config.credit_limit)) ? 11'((credit_issued_v + credit_used)) : 11'(sw_config.credit_limit));
  credit_available = 9'b0;
  if ((remaining_credit_v != 32'b0))
   credit_available = 9'(((32'b0100000000 < remaining_credit_v) ? 32'b0100000000 : remaining_credit_v));
 end
always 
 @(posedge clk or negedge rst_n)
  if (( !rst_n ))
   begin
    credit_issued_r <= 10'b0;
    hw_status <= 12'b0;
   end
  else
   begin
    if (sw_init)
     begin
      credit_issued_r <= 10'b0;
      hw_status <= 12'b0;
     end
    else
     begin
      credit_issued_r <= credit_issued_v;
      hw_status.used_err <= (( !sw_config.dis_used ) && (hw_status.used_err || used_err_v));
      hw_status.return_err <= (( !sw_config.dis_return ) && (hw_status.return_err || return_err_v));
      hw_status.credit_issued <= credit_issued_v;
     end
   end
initial 
 begin
 end

  import "DPI-C" context function int xctf_register_task(input int channel, input string name, input int exportTF, int isFunc, int openarr, input int partitionId, input int mid, input int iwidth, input int owidth, input string file, input int line);
  const bit [15:0] _zyifsynp_svatf0_gtid = xctf_register_task(1, "_zyifsynp_svatf0", 0, 0, 0, 0, 99, 0, 0, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_credit_manager.v", 38);
function bit [15:0] _zyifsynp_svatf0_gtid_get();
  _zyifsynp_svatf0_gtid_get = _zyifsynp_svatf0_gtid;
endfunction
  const bit [15:0] _zyifsynp_svatf1_gtid = xctf_register_task(1, "_zyifsynp_svatf1", 0, 0, 0, 0, 99, 0, 0, "/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_credit_manager.v", 38);
function bit [15:0] _zyifsynp_svatf1_gtid_get();
  _zyifsynp_svatf1_gtid_get = _zyifsynp_svatf1_gtid;
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




  integer _zyport_1_1_gpid;
  integer _zyport_1_1_ltid;
  initial begin:_zzblk_1_1
    _zyport_1_1_gpid = xctf_define_port_task_n_marg_reg_call(1, 1, 0, 0, 0, 1, 0, 0, _zyifsynp_svatf1_gtid, 0, "");
    IXC_GFIFO.OSF1.OSF_create_wait_event(_zyport_1_1_gpid);
    forever begin
      IXC_GFIFO.OSF1.OSF_wait(_zyport_1_1_gpid, _zyport_1_1_ltid);
      xctf_dispatch_sv_func_beg(1, _zyport_1_1_gpid);
      case (_zyport_1_1_ltid)
      0:
        begin: _zzblk_1_0
          _zyifsynp_svatf1();
        end
      endcase
      xctf_dispatch_sv_func_end(1, _zyport_1_1_gpid);
    end
  end

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


axis_assert("credit_return_check",1'b0,2'b01,,,,,,,,,,,"/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_credit_manager.v",116,3'b000);
credit_return_check:assert property (@( posedge clk ) (credit_return |-> (credit_return <= outstanding)))   begin
 end
 else   begin $display("Whoa getting credits that were not issued."); $assert_error(1,0,"credit_return_check","/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_credit_manager.v",118,0); end
axis_assert("credit_danger_check",1'b0,2'b01,,,,,,,,,,,"/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_credit_manager.v",122,3'b000);
credit_danger_check:assert property (@( posedge clk ) (sw_config.credit_limit <= 32'b01000000000))   begin
 end
 else   begin $display("Credit limit is greater than max credits."); $assert_warning(0,"credit_danger_check","/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_credit_manager.v",124,0); end
endmodule

