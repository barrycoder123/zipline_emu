// xc_work/v/75.sv
// /home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_fifo.v:18
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
module cr_kme_fifo_xcm46(fifo_in_stall,fifo_out,fifo_out_valid,fifo_overflow,fifo_underflow,clk,rst_n,fifo_in,fifo_in_valid,fifo_out_ack,
fifo_in_stall_override);
parameter DATA_SIZE = 96;
parameter FIFO_DEPTH = 4;
parameter OVERRIDE_EN = 1;
parameter STALL_AT = 0;
input  clk;
input  rst_n;
input  [95:0] fifo_in ;
input  fifo_in_valid;
output  fifo_in_stall;
output  [95:0] fifo_out ;
output  fifo_out_valid;
input  fifo_out_ack;
output  fifo_overflow;
output  fifo_underflow;
input  fifo_in_stall_override;
wire  ren;
wire  empty;
wire  [2:0] free_slots ;
wire  _zy_simnet_dio_0;
wire  [0:2] _zy_simnet_dio_1 ;
wire  _zy_simnet_cio_2;
assign  fifo_out_valid = ( !empty );
assign  ren = (fifo_out_valid & fifo_out_ack);
assign  _zy_simnet_cio_2 = 1'b0;
nx_fifo_xcm21 std_fifo(
  .empty(empty) ,
  .full(_zy_simnet_dio_0) ,
  .underflow(fifo_underflow) ,
  .overflow(fifo_overflow) ,
  .used_slots(_zy_simnet_dio_1) ,
  .free_slots(free_slots) ,
  .rdata(fifo_out) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .wen(fifo_in_valid) ,
  .ren(ren) ,
  .clear(_zy_simnet_cio_2) ,
  .wdata(fifo_in) ); 
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "genblk1"
//pragma RTLNAME "genblk1" "genblk1"
if(1) begin: genblk1
  assign  fifo_in_stall = (({1'b0,free_slots} <= 32'b0) | fifo_in_stall_override);
end
  //pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 genblk1  "
endmodule

