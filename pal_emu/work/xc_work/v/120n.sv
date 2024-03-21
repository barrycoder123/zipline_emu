// xc_work/v/120n.sv
// /home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_ram_1rw_indirect_access.v:43
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module nx_ram_1rw_indirect_access_xcm122(input  clk,input  rst_n,input  [10:0] reg_addr ,input  [3:0] cmnd_op ,input  [13:0] cmnd_addr ,output logic [2:0] stat_code ,output logic [4:0] stat_datawords ,output logic [13:0] stat_addr ,output logic [15:0] capability_lst ,output logic [3:0] capability_type ,input  wr_stb,input  [37:0] wr_dat 
,output logic [37:0] rd_dat ,input  ovstb,input  lvm,input  mlvm,input  mrdten,input  bimc_rst_n,input  bimc_isync,input  bimc_idat,output logic bimc_odat,output logic bimc_osync,output logic ro_uncorrectable_ecc_error,input  [13:0] hw_add 
,input  hw_we,input  [37:0] hw_bwe ,input  hw_cs,input  [37:0] hw_din ,output logic [37:0] hw_dout ,output logic hw_yield);
// pkg external : PKG - nx_mem_typePKG_v2 : ENUM_LIT - TRUE
// pkg external : PKG - nx_mem_typePKG_v2 : ENUM_LIT - FALSE
// pkg external : PKG - nx_mem_typePKG_v2 : DTYPE  
// pkg external : PKG - nx_mem_typePKG_v2 : ENUM_LIT - RAM_1RW
parameter CMND_ADDRESS = 11'b0110111000;
parameter STAT_ADDRESS = 11'b0110101100;
parameter ALIGNMENT = 2;
parameter N_TIMER_BITS = 6;
parameter N_REG_ADDR_BITS = 11;
parameter N_DATA_BITS = 38;
parameter N_ENTRIES = 16384;
parameter N_INIT_INC_BITS = 0;
parameter SPECIALIZE = 1;
parameter IN_FLOP = 1;
parameter OUT_FLOP = 0;
parameter RD_LATENCY = 1;
parameter reg [37:0] RESET_DATA  = 38'b0;
import nx_mem_typePKG_v2::* ;
localparam nx_mem_typePKG_v2::capabilities_t capabilities_t_set = 16'b1100000101111111;
logic enable;
logic yield;
logic [13:0] sw_add ;
logic sw_cs;
logic [37:0] sw_wdat ;
logic sw_we;
logic [13:0] add ;
logic [37:0] bwe ;
logic cs;
logic [37:0] din ;
logic we;
logic [37:0] dout ;
localparam TOTAL_LATENCY = 2;
logic [1:0] r_rsp ;
logic [13:0] addr_limit ;
wire  [0:2] _zy_simnet_stat_code_0_w$ ;
wire  [0:4] _zy_simnet_stat_datawords_1_w$ ;
wire  [0:13] _zy_simnet_stat_addr_2_w$ ;
wire  [0:15] _zy_simnet_capability_lst_3_w$ ;
wire  [0:3] _zy_simnet_capability_type_4_w$ ;
wire  [0:37] _zy_simnet_rd_dat_5_w$ ;
wire  _zy_simnet_bimc_odat_6_w$;
wire  _zy_simnet_bimc_osync_7_w$;
wire  _zy_simnet_ro_uncorrectable_ecc_error_8_w$;
wire  [0:37] _zy_simnet_hw_dout_9_w$ ;
wire  _zy_simnet_hw_yield_10_w$;
wire  _zy_simnet_bimc_odat_11_w$;
wire  _zy_simnet_bimc_osync_12_w$;
wire  _zy_simnet_ro_uncorrectable_ecc_error_13_w$;
wire  [0:37] _zy_simnet_bwe_14_w$ ;
wire  [0:37] _zy_simnet_din_15_w$ ;
wire  [0:13] _zy_simnet_add_16_w$ ;
wire  _zy_simnet_cs_17_w$;
wire  _zy_simnet_we_18_w$;
wire  [0:37] _zy_simnet_dout_19_w$ ;
wire  _zy_simnet_cio_20;
wire  [0:2] _zy_simnet_stat_code_21_w$ ;
wire  [0:4] _zy_simnet_stat_datawords_22_w$ ;
wire  [0:13] _zy_simnet_stat_addr_23_w$ ;
wire  _zy_simnet_dio_24;
wire  [0:15] _zy_simnet_capability_lst_25_w$ ;
wire  [0:3] _zy_simnet_capability_type_26_w$ ;
wire  _zy_simnet_enable_27_w$;
wire  [0:13] _zy_simnet_addr_limit_28_w$ ;
wire  [0:37] _zy_simnet_rd_dat_29_w$ ;
wire  _zy_simnet_sw_cs_30_w$;
wire  _zy_simnet_dio_31;
wire  _zy_simnet_sw_we_32_w$;
wire  [0:13] _zy_simnet_sw_add_33_w$ ;
wire  [0:37] _zy_simnet_sw_wdat_34_w$ ;
wire  [0:37] _zy_simnet_dout_35_w$ ;
wire  _zy_simnet_cio_36;
wire  [0:12] _zy_simnet_cio_37 ;
wire  _zy_simnet_tvar_38;
wire  _zy_simnet_r_rsp_39_w$;
wire  _zy_simnet_yield_40_w$;
wire  _zy_simnet_dio_41;
assign  cs = (hw_cs || sw_cs);
assign  add = (hw_cs ? hw_add : sw_add);
assign  bwe = (hw_cs ? hw_bwe : 38'b11111111111111111111111111111111111111);
assign  din = (hw_cs ? hw_din : sw_wdat);
assign  we = (hw_cs ? hw_we : sw_we);
assign  hw_dout = (enable ? dout : rd_dat);
assign  hw_yield = yield;
assign  addr_limit = 14'b11111111111111;
assign  _zy_simnet_stat_code_0_w$ = stat_code;
assign  _zy_simnet_stat_datawords_1_w$ = stat_datawords;
assign  _zy_simnet_stat_addr_2_w$ = stat_addr;
assign  _zy_simnet_capability_lst_3_w$ = capability_lst;
assign  _zy_simnet_capability_type_4_w$ = capability_type;
assign  _zy_simnet_rd_dat_5_w$ = rd_dat;
assign  _zy_simnet_bimc_odat_6_w$ = bimc_odat;
assign  _zy_simnet_bimc_osync_7_w$ = bimc_osync;
assign  _zy_simnet_ro_uncorrectable_ecc_error_8_w$ = ro_uncorrectable_ecc_error;
assign  _zy_simnet_hw_dout_9_w$ = hw_dout;
assign  _zy_simnet_hw_yield_10_w$ = hw_yield;
assign  bimc_odat = _zy_simnet_bimc_odat_11_w$;
assign  bimc_osync = _zy_simnet_bimc_osync_12_w$;
assign  ro_uncorrectable_ecc_error = _zy_simnet_ro_uncorrectable_ecc_error_13_w$;
assign  _zy_simnet_bwe_14_w$ = bwe;
assign  _zy_simnet_din_15_w$ = din;
assign  _zy_simnet_add_16_w$ = add;
assign  _zy_simnet_cs_17_w$ = cs;
assign  _zy_simnet_we_18_w$ = we;
assign  dout = _zy_simnet_dout_19_w$;
assign  _zy_simnet_cio_20 = 1'b0;
assign  stat_code = _zy_simnet_stat_code_21_w$;
assign  stat_datawords = _zy_simnet_stat_datawords_22_w$;
assign  stat_addr = _zy_simnet_stat_addr_23_w$;
assign  capability_lst = _zy_simnet_capability_lst_25_w$;
assign  capability_type = _zy_simnet_capability_type_26_w$;
assign  enable = _zy_simnet_enable_27_w$;
assign  _zy_simnet_addr_limit_28_w$ = addr_limit;
assign  rd_dat = _zy_simnet_rd_dat_29_w$;
assign  sw_cs = _zy_simnet_sw_cs_30_w$;
assign  sw_we = _zy_simnet_sw_we_32_w$;
assign  sw_add = _zy_simnet_sw_add_33_w$;
assign  sw_wdat = _zy_simnet_sw_wdat_34_w$;
assign  _zy_simnet_dout_35_w$ = dout;
assign  _zy_simnet_cio_36 = 1'b0;
assign  _zy_simnet_cio_37 = 13'b0;
assign  _zy_simnet_tvar_38 = ( !hw_cs );
assign  _zy_simnet_r_rsp_39_w$ = r_rsp[1];
assign  yield = _zy_simnet_yield_40_w$;
nx_ram_1rw_xcm107 u_ram(clk,rst_n,ovstb,lvm,mlvm,mrdten,bimc_rst_n,bimc_isync,bimc_idat,_zy_simnet_bimc_odat_11_w$,
  _zy_simnet_bimc_osync_12_w$,_zy_simnet_ro_uncorrectable_ecc_error_13_w$,_zy_simnet_bwe_14_w$,_zy_simnet_din_15_w$,_zy_simnet_add_16_w$,_zy_simnet_cs_17_w$,_zy_simnet_we_18_w$,_zy_simnet_dout_19_w$); 
nx_indirect_access_cntrl_v2_xcm124 u_cntrl(clk,rst_n,wr_stb,reg_addr,cmnd_op,cmnd_addr,_zy_simnet_cio_20,_zy_simnet_stat_code_21_w$,_zy_simnet_stat_datawords_22_w$,_zy_simnet_stat_addr_23_w$,
  _zy_simnet_dio_24,_zy_simnet_capability_lst_25_w$,_zy_simnet_capability_type_26_w$,_zy_simnet_enable_27_w$,_zy_simnet_addr_limit_28_w$,wr_dat,_zy_simnet_rd_dat_29_w$,_zy_simnet_sw_cs_30_w$,_zy_simnet_dio_31,_zy_simnet_sw_we_32_w$,
  _zy_simnet_sw_add_33_w$,_zy_simnet_sw_wdat_34_w$,_zy_simnet_dout_35_w$,_zy_simnet_cio_36,_zy_simnet_cio_37,_zy_simnet_tvar_38,_zy_simnet_r_rsp_39_w$,_zy_simnet_yield_40_w$,_zy_simnet_dio_41); 
always_ff 
 @(posedge clk or negedge rst_n)
  begin
   if (( !rst_n ))
    begin
     r_rsp <= 2'b0;
    end
   else
    begin
     r_rsp <= {r_rsp[32'sd0:32'sd0],((( !hw_cs ) && ( !sw_we )) && sw_cs)};
    end
  end
endmodule

