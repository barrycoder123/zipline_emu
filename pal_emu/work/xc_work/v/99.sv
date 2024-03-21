// xc_work/v/99.sv
// /home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_credit_manager.v:38
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module nx_credit_manager(credit_available,hw_status,clk,rst_n,sw_init,credit_return,credit_used,sw_config);
// exported object:  (var) _zyixc_port_1_0_isf (R)  
// exported object:  (var) _zyixc_port_1_0_osf (R)  
// exported object:  (var) _zyixc_port_1_1_isf (R)  
// exported object:  (var) _zyixc_port_1_1_osf (R)  
// pragma multiple_driver_resolution
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
// quickturn keep_net _zy_sva_credit_return_check_1_0_fail
// synopsys translate_off
bit [0:0]  _zy_sva_credit_return_check_1_0_fail_ies = 1'b0;
wire [4:0]  _zy_sva_credit_return_check_1_ies;
// synopsys translate_on
bit _zy_sva_b2;
bit [0:0]  _zy_sva_credit_danger_check_2_3_fail = 1'b0;
// quickturn keep_net _zy_sva_credit_danger_check_2_3_fail
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
ixc_assign  #(9) _zz_strnp_0 (_zy_simnet_credit_available_0_w$,credit_available);
ixc_assign  #(12) _zz_strnp_1 (_zy_simnet_hw_status_1_w$,hw_status);
assign  _zy_sva_b0_t = ( | credit_return );
assign  _zy_sva_b1_t = (credit_return <= outstanding);
assign  _zy_sva_b2_t = (sw_config.credit_limit <= 32'b01000000000);
ixc_sample_logic #(32'b01,3)_zz_zy_sva_b0 (_zy_sva_b0,_zy_sva_b0_t);
ixc_sample_logic #(32'b01,3)_zz_zy_sva_b1 (_zy_sva_b1,_zy_sva_b1_t);
ixc_sample_logic #(32'b01,3)_zz_zy_sva_b2 (_zy_sva_b2,_zy_sva_b2_t);
ixc_pio_call #(0,0,0,0,1) _zzixc_tfport_1_1 (_zyixc_port_1_1_ack,_zyixc_port_1_1_s2hW,_zyixc_port_1_1_isf,_zyixc_port_1_1_req,1'b0,_zyixc_port_1_1_osf,1'b0,1'b0);
ixc_pio_call #(0,0,0,0,1) _zzixc_tfport_1_0 (_zyixc_port_1_0_ack,_zyixc_port_1_0_s2hW,_zyixc_port_1_0_isf,_zyixc_port_1_0_req,1'b0,_zyixc_port_1_0_osf,1'b0,1'b0);
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
axis_assert("credit_return_check",1'b0,2'b01,,,,,,,,,,,"/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_credit_manager.v",116,3'b000);
axis_assert("credit_danger_check",1'b0,2'b01,,,,,,,,,,,"/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_credit_manager.v",122,3'b000);
// pragma CVASTRPROP MODULE nx_credit_manager PROP_RANOFF TRUE
endmodule

