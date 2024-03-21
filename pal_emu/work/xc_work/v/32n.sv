// xc_work/v/32n.sv
// /home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_ram_fifo.v:18
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
module cr_kme_ram_fifo(fifo_in_stall,fifo_out,fifo_out_valid,fifo_bimc_osync,fifo_bimc_odat,fifo_mbe,clk,rst_n,fifo_in,fifo_in_valid,
fifo_out_ack,bimc_rst_n,fifo_bimc_isync,fifo_bimc_idat);
parameter DATA_SIZE = 71;
parameter FIFO_DEPTH = 2048;
parameter SPECIALIZE = 1;
input  clk;
input  rst_n;
input  [70:0] fifo_in ;
input  fifo_in_valid;
output  fifo_in_stall;
output  [70:0] fifo_out ;
output  fifo_out_valid;
input  fifo_out_ack;
input  bimc_rst_n;
input  fifo_bimc_isync;
input  fifo_bimc_idat;
output  fifo_bimc_osync;
output  fifo_bimc_odat;
output  fifo_mbe;
wire  ren;
wire  empty;
wire  _zy_simnet_dio_0;
wire  _zy_simnet_dio_1;
assign  ren = (fifo_out_valid & fifo_out_ack);
assign  fifo_out_valid = ( !empty );
cr_fifo_wrap2_xcm10 ram_fifo(
  .full(fifo_in_stall) ,
  .afull(_zy_simnet_dio_0) ,
  .rdata(fifo_out) ,
  .empty(empty) ,
  .aempty(_zy_simnet_dio_1) ,
  .bimc_odat(fifo_bimc_odat) ,
  .bimc_osync(fifo_bimc_osync) ,
  .ro_uncorrectable_ecc_error(fifo_mbe) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .wdata(fifo_in) ,
  .wen(fifo_in_valid) ,
  .ren(ren) ,
  .bimc_idat(fifo_bimc_idat) ,
  .bimc_isync(fifo_bimc_isync) ,
  .bimc_rst_n(bimc_rst_n) ); 
endmodule

