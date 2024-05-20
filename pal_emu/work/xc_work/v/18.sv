// xc_work/v/18.sv
// /home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v:11
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module nx_fifo_ctrl_xcm41(empty,full,used_slots,free_slots,rptr,wptr,underflow,overflow,clk,rst_n,
wen,ren,clear);
// pragma multiple_driver_resolution
parameter DEPTH = 6;
parameter OVERFLOW_ASSERT = 1;
parameter UNDERFLOW_ASSERT = 1;
input  clk;
input  rst_n;
input  wen;
input  ren;
input  clear;
output  empty;
output  full;
output  [2:0] used_slots ;
output  [2:0] free_slots ;
output  [2:0] rptr ;
output  [2:0] wptr ;
output logic underflow;
output logic overflow;
logic r_empty;
logic c_empty;
logic r_full;
logic c_full;
logic [2:0] r_used_slots ;
logic [2:0] c_used_slots ;
logic [2:0] r_free_slots ;
logic [2:0] c_free_slots ;
logic [2:0] r_rptr ;
logic [2:0] c_rptr ;
logic [2:0] r_wptr ;
logic [2:0] c_wptr ;
genvar i;
wire  _zy_simnet_underflow_0_w$;
wire  _zy_simnet_overflow_1_w$;
wire  _zy_sva_fifo_entries_reached_DEPTH_1_reset_or;
bit [0:0]  _zy_sva_fifo_entries_reached_DEPTH_1_ccheck = 1'b0;
// quickturn keep_net _zy_sva_fifo_entries_reached_DEPTH_1_ccheck
bit [0:0]  _zy_sva_fifo_entries_reached_DEPTH_1_cpass = 1'b0;
// quickturn keep_net _zy_sva_fifo_entries_reached_DEPTH_1_cpass
bit _zy_sva_b0;
wire  _zy_sva_fifo_entries_reached_i_2_reset_or;
bit [0:0]  _zy_sva_fifo_entries_reached_i_2_ccheck = 1'b0;
// quickturn keep_net _zy_sva_fifo_entries_reached_i_2_ccheck
bit [0:0]  _zy_sva_fifo_entries_reached_i_2_cpass = 1'b0;
// quickturn keep_net _zy_sva_fifo_entries_reached_i_2_cpass
bit _zy_sva_b1;
wire  _zy_sva_fifo_entries_reached_i_3_reset_or;
bit [0:0]  _zy_sva_fifo_entries_reached_i_3_ccheck = 1'b0;
// quickturn keep_net _zy_sva_fifo_entries_reached_i_3_ccheck
bit [0:0]  _zy_sva_fifo_entries_reached_i_3_cpass = 1'b0;
// quickturn keep_net _zy_sva_fifo_entries_reached_i_3_cpass
bit _zy_sva_b2;
wire  _zy_sva_fifo_entries_reached_i_4_reset_or;
bit [0:0]  _zy_sva_fifo_entries_reached_i_4_ccheck = 1'b0;
// quickturn keep_net _zy_sva_fifo_entries_reached_i_4_ccheck
bit [0:0]  _zy_sva_fifo_entries_reached_i_4_cpass = 1'b0;
// quickturn keep_net _zy_sva_fifo_entries_reached_i_4_cpass
bit _zy_sva_b3;
// synopsys translate_off
wire  _sva_placeholder_clk;
wire  _sva_placeholder_expr;
// synopsys translate_on
wire  _zy_sva_b0_t;
wire  _zy_sva_b1_t;
wire  _zy_sva_b2_t;
wire  _zy_sva_b3_t;
ixc_assign  #(1) _zz_strnp_0 (empty,r_empty);
ixc_assign  #(1) _zz_strnp_1 (full,r_full);
ixc_assign  #(3) _zz_strnp_2 (used_slots,r_used_slots);
ixc_assign  #(3) _zz_strnp_3 (free_slots,r_free_slots);
ixc_assign  #(3) _zz_strnp_4 (rptr,r_rptr);
ixc_assign  #(3) _zz_strnp_5 (wptr,r_wptr);
ixc_assign  #(1) _zz_strnp_6 (_zy_simnet_underflow_0_w$,underflow);
ixc_assign  #(1) _zz_strnp_7 (_zy_simnet_overflow_1_w$,overflow);
assign  _zy_sva_fifo_entries_reached_DEPTH_1_reset_or = (rst_n !== 32'b01);
assign  _zy_sva_fifo_entries_reached_i_2_reset_or = (rst_n !== 32'b01);
assign  _zy_sva_fifo_entries_reached_i_3_reset_or = (rst_n !== 32'b01);
assign  _zy_sva_fifo_entries_reached_i_4_reset_or = (rst_n !== 32'b01);
assign  _zy_sva_b0_t = (r_used_slots == 32'b0110);
assign  _zy_sva_b1_t = (r_used_slots == 32'b0);
assign  _zy_sva_b2_t = (r_used_slots == 32'b011);
assign  _zy_sva_b3_t = (r_used_slots == 32'b0101);
ixc_sample_logic #(32'b01,3)_zz_zy_sva_b0 (_zy_sva_b0,_zy_sva_b0_t);
ixc_sample_logic #(32'b01,3)_zz_zy_sva_b1 (_zy_sva_b1,_zy_sva_b1_t);
ixc_sample_logic #(32'b01,3)_zz_zy_sva_b2 (_zy_sva_b2,_zy_sva_b2_t);
ixc_sample_logic #(32'b01,3)_zz_zy_sva_b3 (_zy_sva_b3,_zy_sva_b3_t);
always 
 @(posedge clk or posedge _zy_sva_fifo_entries_reached_DEPTH_1_reset_or)
  begin
   if (_zy_sva_fifo_entries_reached_DEPTH_1_reset_or)
    begin
    end
   else
    begin:_zy_sva_sblk_1_1
     bit _zy_sva_nts_1_1_pass;
     _zy_sva_nts_1_1_pass = _zy_sva_b0;
     _zy_sva_fifo_entries_reached_DEPTH_1_ccheck = 1'b1;
     if (_zy_sva_nts_1_1_pass)
      begin
       _zy_sva_fifo_entries_reached_DEPTH_1_cpass = 1'b1;
      end
    end
  end
always 
 @(posedge clk or posedge _zy_sva_fifo_entries_reached_i_2_reset_or)
  begin
   if (_zy_sva_fifo_entries_reached_i_2_reset_or)
    begin
    end
   else
    begin:_zy_sva_sblk_2_1
     bit _zy_sva_nts_2_1_pass;
     _zy_sva_nts_2_1_pass = _zy_sva_b1;
     _zy_sva_fifo_entries_reached_i_2_ccheck = 1'b1;
     if (_zy_sva_nts_2_1_pass)
      begin
       _zy_sva_fifo_entries_reached_i_2_cpass = 1'b1;
      end
    end
  end
always 
 @(posedge clk or posedge _zy_sva_fifo_entries_reached_i_3_reset_or)
  begin
   if (_zy_sva_fifo_entries_reached_i_3_reset_or)
    begin
    end
   else
    begin:_zy_sva_sblk_3_1
     bit _zy_sva_nts_3_1_pass;
     _zy_sva_nts_3_1_pass = _zy_sva_b2;
     _zy_sva_fifo_entries_reached_i_3_ccheck = 1'b1;
     if (_zy_sva_nts_3_1_pass)
      begin
       _zy_sva_fifo_entries_reached_i_3_cpass = 1'b1;
      end
    end
  end
always 
 @(posedge clk or posedge _zy_sva_fifo_entries_reached_i_4_reset_or)
  begin
   if (_zy_sva_fifo_entries_reached_i_4_reset_or)
    begin
    end
   else
    begin:_zy_sva_sblk_4_1
     bit _zy_sva_nts_4_1_pass;
     _zy_sva_nts_4_1_pass = _zy_sva_b3;
     _zy_sva_fifo_entries_reached_i_4_ccheck = 1'b1;
     if (_zy_sva_nts_4_1_pass)
      begin
       _zy_sva_fifo_entries_reached_i_4_cpass = 1'b1;
      end
    end
  end
always_comb 
 begin
  c_empty = r_empty;
  c_full = r_full;
  c_used_slots = r_used_slots;
  c_free_slots = r_free_slots;
  c_rptr = r_rptr;
  c_wptr = r_wptr;
  overflow = 1'b0;
  underflow = 1'b0;
  if (ren)
   begin
    c_full = 1'b0;
    if (( !empty ))
     begin
      c_used_slots = (r_used_slots - 32'b01);
      c_free_slots = (r_free_slots + 32'b01);
      if ((r_rptr == 32'b0101))
       c_rptr = 3'b0;
      else
       c_rptr = (r_rptr + 32'b01);
      if ((c_used_slots == 3'b0))
       c_empty = 1'b1;
     end
    else
     begin
      begin:FIFO_UNDERFLOW
      end
      underflow = 1'b1;
     end
   end
  if (wen)
   begin
    c_empty = 1'b0;
    if (( !full ))
     begin
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
      if ((r_wptr == 32'b0101))
       c_wptr = 3'b0;
      else
       c_wptr = (r_wptr + 32'b01);
      if ((c_free_slots == 3'b0))
       c_full = 1'b1;
     end
    else
     begin
      begin:FIFO_OVERFLOW
      end
      overflow = 1'b1;
     end
   end
  if (clear)
   begin
    c_empty = 1'b1;
    c_full = 1'b0;
    c_free_slots = 3'b110;
    c_used_slots = 3'b0;
    c_rptr = 3'b0;
    c_wptr = 3'b0;
   end
 end
always 
 @(posedge clk or negedge rst_n)
  begin
   if (( !rst_n ))
    begin
     r_empty <= 1'b1;
     r_free_slots <= 3'b110;
     r_full <= 1'b0;
     r_rptr <= 3'b0;
     r_used_slots <= 3'b0;
     r_wptr <= 3'b0;
    end
   else
    begin
     r_empty <= c_empty;
     r_full <= c_full;
     r_used_slots <= c_used_slots;
     r_free_slots <= c_free_slots;
     r_rptr <= c_rptr;
     r_wptr <= c_wptr;
    end
  end
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[0]"
//pragma RTLNAME "cover_depth[0]" "cover_depth_0_"
if(1) begin: cover_depth_0_
 localparam integer i = 0;
  axis_assert("fifo_entries_reached_i",1'b0,2'b10,,,,,,,_zy_sva_fifo_entries_reached_i_2_cpass,,_zy_sva_fifo_entries_reached_i_2_ccheck,,"/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v",149,3'b000);
end
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[3]"
//pragma RTLNAME "cover_depth[3]" "cover_depth_3_"
if(1) begin: cover_depth_3_
 localparam integer i = 3;
  axis_assert("fifo_entries_reached_i",1'b0,2'b10,,,,,,,_zy_sva_fifo_entries_reached_i_3_cpass,,_zy_sva_fifo_entries_reached_i_3_ccheck,,"/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v",149,3'b000);
end
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "cover_depth[5]"
//pragma RTLNAME "cover_depth[5]" "cover_depth_5_"
if(1) begin: cover_depth_5_
 localparam integer i = 5;
  axis_assert("fifo_entries_reached_i",1'b0,2'b10,,,,,,,_zy_sva_fifo_entries_reached_i_4_cpass,,_zy_sva_fifo_entries_reached_i_4_ccheck,,"/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v",149,3'b000);
end
axis_assert("fifo_entries_reached_DEPTH",1'b0,2'b10,,,,,,,_zy_sva_fifo_entries_reached_DEPTH_1_cpass,,_zy_sva_fifo_entries_reached_DEPTH_1_ccheck,,"/home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ctrl.v",152,3'b000);
// pragma CVASTRPROP MODULE nx_fifo_ctrl_xcm41 PROP_RANOFF TRUE
  //pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 cover_depth 0 5 "
endmodule

