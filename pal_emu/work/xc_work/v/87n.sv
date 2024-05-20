// xc_work/v/87n.sv
// /home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo.v:10
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module nx_fifo_xcm20(empty,full,underflow,overflow,used_slots,free_slots,rdata,clk,rst_n,wen,
ren,clear,wdata);
parameter DEPTH = 16;
parameter WIDTH = 106;
parameter DATA_RESET = 1;
parameter UNDERFLOW_ASSERT = 1;
parameter OVERFLOW_ASSERT = 1;
input  clk;
input  rst_n;
input  wen;
input  ren;
input  clear;
input  [105:0] wdata ;
output  empty;
output  full;
output logic underflow;
output logic overflow;
output  [4:0] used_slots ;
output  [4:0] free_slots ;
output  [105:0] rdata ;
wire  _zy_simnet_underflow_0_w$;
wire  _zy_simnet_overflow_1_w$;
assign  _zy_simnet_underflow_0_w$ = underflow;
assign  _zy_simnet_overflow_1_w$ = overflow;
if(1) begin: depth_n
 wire  [3:0] rptr ;
 wire  [3:0] wptr ;
 reg [105:0] r_data [15:0];
 wire  _zy_simnet_underflow_2_w$;
 wire  _zy_simnet_overflow_3_w$;
  assign  underflow = _zy_simnet_underflow_2_w$;
  assign  overflow = _zy_simnet_overflow_3_w$;
 if(1) begin: genblk1
    assign  rdata = (empty ? 106'b0 : r_data[rptr]);
 end
 always 
  @(posedge clk)
   begin
    if ((wen && ( !full )))
     r_data[wptr] <= wdata;
   end
  nx_fifo_ctrl_xcm38 fifo_ctrl(
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
endmodule

