// xc_work/v/127.sv
// /home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_roreg_indirect_access.v:35
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module nx_roreg_indirect_access_xcm131(stat_code,stat_datawords,stat_addr,capability_lst,capability_type,rd_dat,clk,rst_n,addr,cmnd_op,
cmnd_addr,wr_stb,wr_dat,mem_a);
// pkg external : PKG - nx_mem_typePKG : ENUM_LIT - TRUE
// pkg external : PKG - nx_mem_typePKG : ENUM_LIT - FALSE
// pkg external : PKG - nx_mem_typePKG : DTYPE  
// pkg external : PKG - nx_mem_typePKG : ENUM_LIT - REG
// pragma multiple_driver_resolution
parameter CMND_ADDRESS = 11'b10000001100;
parameter STAT_ADDRESS = 11'b10000000000;
parameter ALIGNMENT = 2;
parameter N_DATA_BITS = 64;
parameter N_REG_ADDR_BITS = 11;
parameter N_ENTRIES = 32;
import nx_mem_typePKG::* ;
input  clk;
input  rst_n;
input  [10:0] addr ;
input  [3:0] cmnd_op ;
input  [4:0] cmnd_addr ;
output logic [2:0] stat_code ;
output logic [4:0] stat_datawords ;
output logic [4:0] stat_addr ;
output logic [15:0] capability_lst ;
output logic [3:0] capability_type ;
input  wr_stb;
input  [63:0] wr_dat ;
output logic [63:0] rd_dat ;
input  [63:0] mem_a [0:31];
localparam nx_mem_typePKG::capabilities_t capabilities_t_set = 16'b1000000000100011;
logic reset;
logic [4:0] sw_add ;
logic sw_cs;
logic [63:0] sw_wdat ;
logic [63:0] sw_rdat ;
logic sw_we;
logic [4:0] addr_limit ;
wire  [0:2] _zy_simnet_stat_code_0_w$ ;
wire  [0:4] _zy_simnet_stat_datawords_1_w$ ;
wire  [0:4] _zy_simnet_stat_addr_2_w$ ;
wire  [0:15] _zy_simnet_capability_lst_3_w$ ;
wire  [0:3] _zy_simnet_capability_type_4_w$ ;
wire  [0:63] _zy_simnet_rd_dat_5_w$ ;
wire  _zy_simnet_cio_6;
wire  [0:2] _zy_simnet_stat_code_7_w$ ;
wire  [0:4] _zy_simnet_stat_datawords_8_w$ ;
wire  [0:4] _zy_simnet_stat_addr_9_w$ ;
wire  _zy_simnet_dio_10;
wire  [0:15] _zy_simnet_capability_lst_11_w$ ;
wire  [0:3] _zy_simnet_capability_type_12_w$ ;
wire  _zy_simnet_dio_13;
wire  [0:4] _zy_simnet_addr_limit_14_w$ ;
wire  [0:63] _zy_simnet_cio_15 ;
wire  [0:63] _zy_simnet_rd_dat_16_w$ ;
wire  _zy_simnet_sw_cs_17_w$;
wire  _zy_simnet_dio_18;
wire  _zy_simnet_sw_we_19_w$;
wire  [0:4] _zy_simnet_sw_add_20_w$ ;
wire  [0:63] _zy_simnet_sw_wdat_21_w$ ;
wire  [0:63] _zy_simnet_sw_rdat_22_w$ ;
wire  _zy_simnet_cio_23;
wire  [0:3] _zy_simnet_cio_24 ;
wire  _zy_simnet_cio_25;
wire  _zy_simnet_dio_26;
wire  _zy_simnet_reset_27_w$;
logic [63:0] _zyixc_ctx_rdata_29 [0:31];
// quickturn keep_net _zyixc_ctx_rdata_29
reg [63:0] _svmls_var_L189_0 ;
integer _svmls_mah_L0_0;
// synopsys translate_off
const integer _svmls_vmh_L0_1 = $marg_vmem_handle(_zyixc_ctx_rdata_29);
// synopsys translate_on
integer _svmls_dummy_ret;
// F72, L98
assign  addr_limit = 5'b11111;
// F72, L45
ixc_assign  #(3) _zz_strnp_2 (_zy_simnet_stat_code_0_w$,stat_code);
// F72, L45
ixc_assign  #(5) _zz_strnp_3 (_zy_simnet_stat_datawords_1_w$,stat_datawords);
// F72, L45
ixc_assign  #(5) _zz_strnp_4 (_zy_simnet_stat_addr_2_w$,stat_addr);
// F72, L45
ixc_assign  #(16) _zz_strnp_5 (_zy_simnet_capability_lst_3_w$,capability_lst);
// F72, L46
ixc_assign  #(4) _zz_strnp_6 (_zy_simnet_capability_type_4_w$,capability_type);
// F72, L46
ixc_assign  #(64) _zz_strnp_7 (_zy_simnet_rd_dat_5_w$,rd_dat);
// F72, L141
assign  _zy_simnet_cio_6 = 1'b0;
// F72, L119
ixc_assign  #(3) _zz_strnp_8 (stat_code,_zy_simnet_stat_code_7_w$);
// F72, L120
ixc_assign  #(5) _zz_strnp_9 (stat_datawords,_zy_simnet_stat_datawords_8_w$);
// F72, L121
ixc_assign  #(5) _zz_strnp_10 (stat_addr,_zy_simnet_stat_addr_9_w$);
// F72, L123
ixc_assign  #(16) _zz_strnp_11 (capability_lst,_zy_simnet_capability_lst_11_w$);
// F72, L124
ixc_assign  #(4) _zz_strnp_12 (capability_type,_zy_simnet_capability_type_12_w$);
// F72, L97
ixc_assign  #(5) _zz_strnp_13 (_zy_simnet_addr_limit_14_w$,addr_limit);
// F72, L143
assign  _zy_simnet_cio_15 = 64'b0;
// F72, L126
ixc_assign  #(64) _zz_strnp_14 (rd_dat,_zy_simnet_rd_dat_16_w$);
// F72, L127
ixc_assign  #(1) _zz_strnp_15 (sw_cs,_zy_simnet_sw_cs_17_w$);
// F72, L129
ixc_assign  #(1) _zz_strnp_16 (sw_we,_zy_simnet_sw_we_19_w$);
// F72, L130
ixc_assign  #(5) _zz_strnp_17 (sw_add,_zy_simnet_sw_add_20_w$);
// F72, L131
ixc_assign  #(64) _zz_strnp_18 (sw_wdat,_zy_simnet_sw_wdat_21_w$);
// F72, L94
ixc_assign  #(64) _zz_strnp_19 (_zy_simnet_sw_rdat_22_w$,sw_rdat);
// F72, L145
assign  _zy_simnet_cio_23 = 1'b0;
// F72, L146
assign  _zy_simnet_cio_24 = 4'b0;
// F72, L147
assign  _zy_simnet_cio_25 = 1'b1;
// F72, L133
ixc_assign  #(1) _zz_strnp_20 (reset,_zy_simnet_reset_27_w$);
// F72, L35
ixc_context_read #(2048) _zzixc_ctxrd_0 ({{_zyixc_ctx_rdata_29[32'sd0][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd1][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd2][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd3][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd4][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd5][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd6][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd7][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd8][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd9][32'sd63:32'sd0],
_zyixc_ctx_rdata_29[32'sd10][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd11][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd12][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd13][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd14][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd15][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd16][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd17][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd18][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd19][32'sd63:32'sd0],
_zyixc_ctx_rdata_29[32'sd20][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd21][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd22][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd23][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd24][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd25][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd26][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd27][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd28][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd29][32'sd63:32'sd0],
_zyixc_ctx_rdata_29[32'sd30][32'sd63:32'sd0],_zyixc_ctx_rdata_29[32'sd31][32'sd63:32'sd0]}});
nx_indirect_access_cntrl_xcm113 u_cntrl(
  .clk(clk) ,
  .rst_n(rst_n) ,
  .wr_stb(wr_stb) ,
  .reg_addr(addr) ,
  .cmnd_op(cmnd_op) ,
  .cmnd_addr(cmnd_addr) ,
  .cmnd_table_id(_zy_simnet_cio_6) ,
  .stat_code(_zy_simnet_stat_code_7_w$) ,
  .stat_datawords(_zy_simnet_stat_datawords_8_w$) ,
  .stat_addr(_zy_simnet_stat_addr_9_w$) ,
  .stat_table_id(_zy_simnet_dio_10) ,
  .capability_lst(_zy_simnet_capability_lst_11_w$) ,
  .capability_type(_zy_simnet_capability_type_12_w$) ,
  .enable(_zy_simnet_dio_13) ,
  .addr_limit(_zy_simnet_addr_limit_14_w$) ,
  .wr_dat(_zy_simnet_cio_15) ,
  .rd_dat(_zy_simnet_rd_dat_16_w$) ,
  .sw_cs(_zy_simnet_sw_cs_17_w$) ,
  .sw_ce(_zy_simnet_dio_18) ,
  .sw_we(_zy_simnet_sw_we_19_w$) ,
  .sw_add(_zy_simnet_sw_add_20_w$) ,
  .sw_wdat(_zy_simnet_sw_wdat_21_w$) ,
  .sw_rdat(_zy_simnet_sw_rdat_22_w$) ,
  .sw_match(_zy_simnet_cio_23) ,
  .sw_aindex(_zy_simnet_cio_24) ,
  .grant(_zy_simnet_cio_25) ,
  .yield(_zy_simnet_dio_26) ,
  .reset(_zy_simnet_reset_27_w$) ); 
// F72, L153
always_ff 
 @(posedge clk or negedge rst_n)
  // F72, L153
  begin:mem_rd
   // F72, L154
   if (( !rst_n ))
    // F72, L154
    begin:rst
     // F72, L155
     sw_rdat <= 64'b0;
    end
   else
    if (sw_cs)
     // F72, L157
     begin
      // F72, L158
      if ((16'(sw_add) < 16'b0100000))
       // F72, L158
       begin
        // F72, L161
        sw_rdat <= mem_a[sw_add];
       end
      else
       sw_rdat <= 64'b0;
     end
  end
// F72, L180
always 
 @(*)
  // F72, L180
  begin
   // F72, L180
   _zyixc_ctx_rdata_29 = mem_a;
  end
// pragma CVASTRPROP MODULE nx_roreg_indirect_access_xcm131 PROP_RANOFF TRUE
endmodule

