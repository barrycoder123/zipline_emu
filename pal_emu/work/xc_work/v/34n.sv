// xc_work/v/34n.sv
// /home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ram_1r1w.v:10
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module nx_fifo_ram_1r1w_xcm12(empty,full,used_slots,free_slots,rerr,rdata,underflow,overflow,bimc_odat,bimc_osync,
ro_uncorrectable_ecc_error,clk,rst_n,wen,wdata,ren,clear,bimc_idat,bimc_isync,bimc_rst_n,lvm,mlvm,
mrdten);
parameter DEPTH = 2048;
parameter WIDTH = 71;
parameter UNDERFLOW_ASSERT = 1;
parameter OVERFLOW_ASSERT = 1;
parameter SPECIALIZE = 1;
parameter IN_FLOP = 1;
parameter OUT_FLOP = 1;
parameter RD_LATENCY = 1;
parameter REN_COMB = 1;
parameter RDATA_COMB = 1;
localparam PREFETCH_DEPTH = 3;
localparam TOTAL_DEPTH = 2051;
input  clk;
input  rst_n;
input  wen;
input  [70:0] wdata ;
input  ren;
input  clear;
output logic empty;
output logic full;
output logic [11:0] used_slots ;
output logic [11:0] free_slots ;
output logic rerr;
output logic [70:0] rdata ;
output logic underflow;
output logic overflow;
logic mem_wen;
logic [10:0] mem_waddr ;
logic [70:0] mem_wdata ;
logic mem_ren;
logic _mem_ren;
logic [10:0] mem_raddr ;
logic [10:0] _mem_raddr ;
logic [70:0] mem_rdata ;
input  bimc_idat;
input  bimc_isync;
input  bimc_rst_n;
input  lvm;
input  mlvm;
input  mrdten;
output logic bimc_odat;
output logic bimc_osync;
output logic ro_uncorrectable_ecc_error;
wire  _zy_simnet_empty_0_w$;
wire  _zy_simnet_full_1_w$;
wire  [0:11] _zy_simnet_used_slots_2_w$ ;
wire  [0:11] _zy_simnet_free_slots_3_w$ ;
wire  _zy_simnet_rerr_4_w$;
wire  [0:70] _zy_simnet_rdata_5_w$ ;
wire  _zy_simnet_underflow_6_w$;
wire  _zy_simnet_overflow_7_w$;
wire  _zy_simnet_bimc_odat_8_w$;
wire  _zy_simnet_bimc_osync_9_w$;
wire  _zy_simnet_ro_uncorrectable_ecc_error_10_w$;
wire  _zy_simnet_bimc_odat_11_w$;
wire  _zy_simnet_bimc_osync_12_w$;
wire  _zy_simnet_ro_uncorrectable_ecc_error_13_w$;
wire  _zy_simnet_tvar_14;
wire  [0:10] _zy_simnet__mem_raddr_15_w$ ;
wire  [0:70] _zy_simnet_mem_rdata_16_w$ ;
wire  _zy_simnet_tvar_17;
wire  [0:10] _zy_simnet_mem_waddr_18_w$ ;
wire  [0:70] _zy_simnet_mem_wdata_19_w$ ;
wire  [0:70] _zy_simnet_cio_20 ;
wire  _zy_simnet_mem_wen_21_w$;
wire  [0:10] _zy_simnet_mem_waddr_22_w$ ;
wire  [0:70] _zy_simnet_mem_wdata_23_w$ ;
wire  _zy_simnet_mem_ren_24_w$;
wire  [0:10] _zy_simnet_mem_raddr_25_w$ ;
wire  _zy_simnet_empty_26_w$;
wire  _zy_simnet_full_27_w$;
wire  [0:11] _zy_simnet_used_slots_28_w$ ;
wire  [0:11] _zy_simnet_free_slots_29_w$ ;
wire  _zy_simnet_rerr_30_w$;
wire  [0:70] _zy_simnet_rdata_31_w$ ;
wire  _zy_simnet_underflow_32_w$;
wire  _zy_simnet_overflow_33_w$;
wire  [0:70] _zy_simnet_mem_rdata_34_w$ ;
wire  _zy_simnet_ro_uncorrectable_ecc_error_35_w$;
assign  _zy_simnet_empty_0_w$ = empty;
assign  _zy_simnet_full_1_w$ = full;
assign  _zy_simnet_used_slots_2_w$ = used_slots;
assign  _zy_simnet_free_slots_3_w$ = free_slots;
assign  _zy_simnet_rerr_4_w$ = rerr;
assign  _zy_simnet_rdata_5_w$ = rdata;
assign  _zy_simnet_underflow_6_w$ = underflow;
assign  _zy_simnet_overflow_7_w$ = overflow;
assign  _zy_simnet_bimc_odat_8_w$ = bimc_odat;
assign  _zy_simnet_bimc_osync_9_w$ = bimc_osync;
assign  _zy_simnet_ro_uncorrectable_ecc_error_10_w$ = ro_uncorrectable_ecc_error;
assign  bimc_odat = _zy_simnet_bimc_odat_11_w$;
assign  bimc_osync = _zy_simnet_bimc_osync_12_w$;
assign  ro_uncorrectable_ecc_error = _zy_simnet_ro_uncorrectable_ecc_error_13_w$;
assign  _zy_simnet_tvar_14 = ( !_mem_ren );
assign  _zy_simnet__mem_raddr_15_w$ = _mem_raddr;
assign  mem_rdata = _zy_simnet_mem_rdata_16_w$;
assign  _zy_simnet_tvar_17 = ( !mem_wen );
assign  _zy_simnet_mem_waddr_18_w$ = mem_waddr;
assign  _zy_simnet_mem_wdata_19_w$ = mem_wdata;
assign  _zy_simnet_cio_20 = 71'b11111111111111111111111111111111111111111111111111111111111111111111111;
assign  mem_wen = _zy_simnet_mem_wen_21_w$;
assign  mem_waddr = _zy_simnet_mem_waddr_22_w$;
assign  mem_wdata = _zy_simnet_mem_wdata_23_w$;
assign  mem_ren = _zy_simnet_mem_ren_24_w$;
assign  mem_raddr = _zy_simnet_mem_raddr_25_w$;
assign  empty = _zy_simnet_empty_26_w$;
assign  full = _zy_simnet_full_27_w$;
assign  used_slots = _zy_simnet_used_slots_28_w$;
assign  free_slots = _zy_simnet_free_slots_29_w$;
assign  rerr = _zy_simnet_rerr_30_w$;
assign  rdata = _zy_simnet_rdata_31_w$;
assign  underflow = _zy_simnet_underflow_32_w$;
assign  overflow = _zy_simnet_overflow_33_w$;
assign  _zy_simnet_mem_rdata_34_w$ = mem_rdata;
assign  _zy_simnet_ro_uncorrectable_ecc_error_35_w$ = ro_uncorrectable_ecc_error;
nx_ram_1r1w_xcm14 ram(
  .rst_n(rst_n) ,
  .clk(clk) ,
  .lvm(lvm) ,
  .mlvm(mlvm) ,
  .mrdten(mrdten) ,
  .bimc_rst_n(bimc_rst_n) ,
  .bimc_isync(bimc_isync) ,
  .bimc_idat(bimc_idat) ,
  .bimc_odat(_zy_simnet_bimc_odat_11_w$) ,
  .bimc_osync(_zy_simnet_bimc_osync_12_w$) ,
  .ro_uncorrectable_ecc_error(_zy_simnet_ro_uncorrectable_ecc_error_13_w$) ,
  .reb(_zy_simnet_tvar_14) ,
  .ra(_zy_simnet__mem_raddr_15_w$) ,
  .dout(_zy_simnet_mem_rdata_16_w$) ,
  .web(_zy_simnet_tvar_17) ,
  .wa(_zy_simnet_mem_waddr_18_w$) ,
  .din(_zy_simnet_mem_wdata_19_w$) ,
  .bwe(_zy_simnet_cio_20) ); 
nx_fifo_ctrl_ram_1r1w_xcm16 fifo_ctrl(
  .mem_wen(_zy_simnet_mem_wen_21_w$) ,
  .mem_waddr(_zy_simnet_mem_waddr_22_w$) ,
  .mem_wdata(_zy_simnet_mem_wdata_23_w$) ,
  .mem_ren(_zy_simnet_mem_ren_24_w$) ,
  .mem_raddr(_zy_simnet_mem_raddr_25_w$) ,
  .empty(_zy_simnet_empty_26_w$) ,
  .full(_zy_simnet_full_27_w$) ,
  .used_slots(_zy_simnet_used_slots_28_w$) ,
  .free_slots(_zy_simnet_free_slots_29_w$) ,
  .rerr(_zy_simnet_rerr_30_w$) ,
  .rdata(_zy_simnet_rdata_31_w$) ,
  .underflow(_zy_simnet_underflow_32_w$) ,
  .overflow(_zy_simnet_overflow_33_w$) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .mem_rdata(_zy_simnet_mem_rdata_34_w$) ,
  .mem_ecc_error(_zy_simnet_ro_uncorrectable_ecc_error_35_w$) ,
  .wen(wen) ,
  .wdata(wdata) ,
  .ren(ren) ,
  .clear(clear) ); 
if(1) begin: genblk1
 always_ff 
  @(posedge clk or negedge rst_n)
   begin
    if (( !rst_n ))
     _mem_ren <= 1'b0;
    else
     _mem_ren <= mem_ren;
   end
 always_ff 
  @(posedge clk)
   _mem_raddr <= mem_raddr;
end
endmodule

