// xc_work/v/51.sv
// /home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo.v:10
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module nx_fifo_xcm28(empty,full,underflow,overflow,used_slots,free_slots,rdata,clk,rst_n,wen,
ren,clear,wdata);
parameter DEPTH = 4;
parameter WIDTH = 256;
parameter DATA_RESET = 1;
parameter UNDERFLOW_ASSERT = 1;
parameter OVERFLOW_ASSERT = 1;
input  clk;
input  rst_n;
input  wen;
input  ren;
input  clear;
input  [255:0] wdata ;
output  empty;
output  full;
output logic underflow;
output logic overflow;
output  [2:0] used_slots ;
output  [2:0] free_slots ;
output  [255:0] rdata ;
wire  _zy_simnet_underflow_0_w$;
wire  _zy_simnet_overflow_1_w$;
ixc_assign  #(1) _zz_strnp_2 (_zy_simnet_underflow_0_w$,underflow);
ixc_assign  #(1) _zz_strnp_3 (_zy_simnet_overflow_1_w$,overflow);
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "depth_n"
//pragma RTLNAME "depth_n" "depth_n"
if(1) begin: depth_n
 wire  [1:0] rptr ;
 wire  [1:0] wptr ;
 reg [255:0] r_data [3:0];
 wire  _zy_simnet_underflow_2_w$;
 wire  _zy_simnet_overflow_3_w$;
  ixc_assign  #(1) _zz_strnp_0 (underflow,_zy_simnet_underflow_2_w$);
  ixc_assign  #(1) _zz_strnp_1 (overflow,_zy_simnet_overflow_3_w$);
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "depth_n.genblk1"
//pragma RTLNAME "genblk1" "genblk1"
 if(1) begin: genblk1
    assign  rdata = (empty ? 256'b0 : r_data[rptr]);
 end
 always 
  @(posedge clk)
   begin
    if ((wen && ( !full )))
     r_data[wptr] <= wdata;
   end
  nx_fifo_ctrl_xcm36 fifo_ctrl(
   .empty(empty) ,
   .full(full) ,
   .used_slots(used_slots) ,
   .free_slots(free_slots) ,
   .rptr(rptr) ,
   .wptr(wptr) ,
   .underflow(_zy_simnet_underflow_2_w$) ,
   .overflow(_zy_simnet_overflow_3_w$) ,
   .clk(clk) ,
   .rst_n(rst_n) ,
   .wen(wen) ,
   .ren(ren) ,
   .clear(clear) );
end
  //pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 depth_n  "
  //pragma CVASTRPROP MODULE HDLICE cva_for_generate_1 "0 genblk1  "
endmodule

