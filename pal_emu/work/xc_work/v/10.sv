// xc_work/v/10.sv
// /home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_fifo_ram_1r1w.v:10
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module nx_fifo_ram_1r1w_xcm14(empty,full,used_slots,free_slots,rerr,rdata,underflow,overflow,bimc_odat,bimc_osync,
ro_uncorrectable_ecc_error,clk,rst_n,wen,wdata,ren,clear,bimc_idat,bimc_isync,bimc_rst_n,lvm,mlvm,
mrdten);
parameter DEPTH = 168;
parameter WIDTH = 83;
parameter UNDERFLOW_ASSERT = 1;
parameter OVERFLOW_ASSERT = 1;
parameter SPECIALIZE = 1;
parameter IN_FLOP = 1;
parameter OUT_FLOP = 1;
parameter RD_LATENCY = 1;
parameter REN_COMB = 1;
parameter RDATA_COMB = 1;
localparam PREFETCH_DEPTH = 3;
localparam TOTAL_DEPTH = 171;
input  clk;
input  rst_n;
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
logic mem_wen;
logic [7:0] mem_waddr ;
logic [82:0] mem_wdata ;
logic mem_ren;
logic _mem_ren;
logic [7:0] mem_raddr ;
logic [7:0] _mem_raddr ;
logic [82:0] mem_rdata ;
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
wire  [0:7] _zy_simnet_used_slots_2_w$ ;
wire  [0:7] _zy_simnet_free_slots_3_w$ ;
wire  _zy_simnet_rerr_4_w$;
wire  [0:82] _zy_simnet_rdata_5_w$ ;
wire  _zy_simnet_underflow_6_w$;
wire  _zy_simnet_overflow_7_w$;
wire  _zy_simnet_bimc_odat_8_w$;
wire  _zy_simnet_bimc_osync_9_w$;
wire  _zy_simnet_ro_uncorrectable_ecc_error_10_w$;
wire  _zy_simnet_bimc_odat_11_w$;
wire  _zy_simnet_bimc_osync_12_w$;
wire  _zy_simnet_ro_uncorrectable_ecc_error_13_w$;
wire  _zy_simnet_tvar_14;
wire  [0:7] _zy_simnet__mem_raddr_15_w$ ;
wire  [0:82] _zy_simnet_mem_rdata_16_w$ ;
wire  _zy_simnet_tvar_17;
wire  [0:7] _zy_simnet_mem_waddr_18_w$ ;
wire  [0:82] _zy_simnet_mem_wdata_19_w$ ;
wire  [0:82] _zy_simnet_cio_20 ;
wire  _zy_simnet_mem_wen_21_w$;
wire  [0:7] _zy_simnet_mem_waddr_22_w$ ;
wire  [0:82] _zy_simnet_mem_wdata_23_w$ ;
wire  _zy_simnet_mem_ren_24_w$;
wire  [0:7] _zy_simnet_mem_raddr_25_w$ ;
wire  _zy_simnet_empty_26_w$;
wire  _zy_simnet_full_27_w$;
wire  [0:7] _zy_simnet_used_slots_28_w$ ;
wire  [0:7] _zy_simnet_free_slots_29_w$ ;
wire  _zy_simnet_rerr_30_w$;
wire  [0:82] _zy_simnet_rdata_31_w$ ;
wire  _zy_simnet_underflow_32_w$;
wire  _zy_simnet_overflow_33_w$;
wire  [0:82] _zy_simnet_mem_rdata_34_w$ ;
wire  _zy_simnet_ro_uncorrectable_ecc_error_35_w$;
ixc_assign  #(1) _zz_strnp_0 (_zy_simnet_empty_0_w$,empty);
ixc_assign  #(1) _zz_strnp_1 (_zy_simnet_full_1_w$,full);
ixc_assign  #(8) _zz_strnp_2 (_zy_simnet_used_slots_2_w$,used_slots);
ixc_assign  #(8) _zz_strnp_3 (_zy_simnet_free_slots_3_w$,free_slots);
ixc_assign  #(1) _zz_strnp_4 (_zy_simnet_rerr_4_w$,rerr);
ixc_assign  #(83) _zz_strnp_5 (_zy_simnet_rdata_5_w$,rdata);
ixc_assign  #(1) _zz_strnp_6 (_zy_simnet_underflow_6_w$,underflow);
ixc_assign  #(1) _zz_strnp_7 (_zy_simnet_overflow_7_w$,overflow);
ixc_assign  #(1) _zz_strnp_8 (_zy_simnet_bimc_odat_8_w$,bimc_odat);
ixc_assign  #(1) _zz_strnp_9 (_zy_simnet_bimc_osync_9_w$,bimc_osync);
ixc_assign  #(1) _zz_strnp_10 (_zy_simnet_ro_uncorrectable_ecc_error_10_w$,ro_uncorrectable_ecc_error);
ixc_assign  #(1) _zz_strnp_11 (bimc_odat,_zy_simnet_bimc_odat_11_w$);
ixc_assign  #(1) _zz_strnp_12 (bimc_osync,_zy_simnet_bimc_osync_12_w$);
ixc_assign  #(1) _zz_strnp_13 (ro_uncorrectable_ecc_error,_zy_simnet_ro_uncorrectable_ecc_error_13_w$);
assign  _zy_simnet_tvar_14 = ( !_mem_ren );
ixc_assign  #(8) _zz_strnp_14 (_zy_simnet__mem_raddr_15_w$,_mem_raddr);
ixc_assign  #(83) _zz_strnp_15 (mem_rdata,_zy_simnet_mem_rdata_16_w$);
assign  _zy_simnet_tvar_17 = ( !mem_wen );
ixc_assign  #(8) _zz_strnp_16 (_zy_simnet_mem_waddr_18_w$,mem_waddr);
ixc_assign  #(83) _zz_strnp_17 (_zy_simnet_mem_wdata_19_w$,mem_wdata);
assign  _zy_simnet_cio_20 = 83'b11111111111111111111111111111111111111111111111111111111111111111111111111111111111;
ixc_assign  #(1) _zz_strnp_18 (mem_wen,_zy_simnet_mem_wen_21_w$);
ixc_assign  #(8) _zz_strnp_19 (mem_waddr,_zy_simnet_mem_waddr_22_w$);
ixc_assign  #(83) _zz_strnp_20 (mem_wdata,_zy_simnet_mem_wdata_23_w$);
ixc_assign  #(1) _zz_strnp_21 (mem_ren,_zy_simnet_mem_ren_24_w$);
ixc_assign  #(8) _zz_strnp_22 (mem_raddr,_zy_simnet_mem_raddr_25_w$);
ixc_assign  #(1) _zz_strnp_23 (empty,_zy_simnet_empty_26_w$);
ixc_assign  #(1) _zz_strnp_24 (full,_zy_simnet_full_27_w$);
ixc_assign  #(8) _zz_strnp_25 (used_slots,_zy_simnet_used_slots_28_w$);
ixc_assign  #(8) _zz_strnp_26 (free_slots,_zy_simnet_free_slots_29_w$);
ixc_assign  #(1) _zz_strnp_27 (rerr,_zy_simnet_rerr_30_w$);
ixc_assign  #(83) _zz_strnp_28 (rdata,_zy_simnet_rdata_31_w$);
ixc_assign  #(1) _zz_strnp_29 (underflow,_zy_simnet_underflow_32_w$);
ixc_assign  #(1) _zz_strnp_30 (overflow,_zy_simnet_overflow_33_w$);
ixc_assign  #(83) _zz_strnp_31 (_zy_simnet_mem_rdata_34_w$,mem_rdata);
ixc_assign  #(1) _zz_strnp_32 (_zy_simnet_ro_uncorrectable_ecc_error_35_w$,ro_uncorrectable_ecc_error);
nx_ram_1r1w_xcm16 ram(
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
nx_fifo_ctrl_ram_1r1w_xcm18 fifo_ctrl(
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
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "genblk1"
//pragma RTLNAME "genblk1" "genblk1"
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
  //pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 genblk1  "
endmodule

