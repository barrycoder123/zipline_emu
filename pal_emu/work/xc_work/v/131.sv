// xc_work/v/131.sv
// /home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_reg_indirect_access.v:34
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module nx_reg_indirect_access(stat_code,stat_datawords,stat_addr,capability_lst,capability_type,rd_dat,mem_a,clk,rst_n,addr,
cmnd_op,cmnd_addr,wr_stb,wr_dat,rst_dat);
// pkg external : PKG - nx_mem_typePKG : ENUM_LIT - TRUE
// pkg external : PKG - nx_mem_typePKG : ENUM_LIT - FALSE
// pkg external : PKG - nx_mem_typePKG : DTYPE  
// pkg external : PKG - nx_mem_typePKG : ENUM_LIT - REG
   Q_NOT_TOUCH _zzqnt();
// pragma multiple_driver_resolution
parameter CMND_ADDRESS = 11'b10001010100;
parameter STAT_ADDRESS = 11'b10001001100;
parameter ALIGNMENT = 2;
parameter N_DATA_BITS = 32;
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
input  [31:0] wr_dat ;
input  [31:0] rst_dat [0:31];
output logic [31:0] rd_dat ;
output logic [31:0] mem_a [0:31];
// quickturn keep_net mem_a
// quickturn external_ref mem_a
localparam nx_mem_typePKG::capabilities_t capabilities_t_set = 16'b1000000000100111;
logic reset;
logic [4:0] sw_add ;
logic sw_cs;
logic [31:0] sw_wdat ;
logic [31:0] sw_rdat ;
logic sw_we;
logic [4:0] addr_limit ;
wire  [0:2] _zy_simnet_stat_code_0_w$ ;
wire  [0:4] _zy_simnet_stat_datawords_1_w$ ;
wire  [0:4] _zy_simnet_stat_addr_2_w$ ;
wire  [0:15] _zy_simnet_capability_lst_3_w$ ;
wire  [0:3] _zy_simnet_capability_type_4_w$ ;
wire  [0:31] _zy_simnet_rd_dat_5_w$ ;
wire  _zy_simnet_cio_6;
wire  [0:2] _zy_simnet_stat_code_7_w$ ;
wire  [0:4] _zy_simnet_stat_datawords_8_w$ ;
wire  [0:4] _zy_simnet_stat_addr_9_w$ ;
wire  _zy_simnet_dio_10;
wire  [0:15] _zy_simnet_capability_lst_11_w$ ;
wire  [0:3] _zy_simnet_capability_type_12_w$ ;
wire  _zy_simnet_dio_13;
wire  [0:4] _zy_simnet_addr_limit_14_w$ ;
wire  [0:31] _zy_simnet_rd_dat_15_w$ ;
wire  _zy_simnet_sw_cs_16_w$;
wire  _zy_simnet_dio_17;
wire  _zy_simnet_sw_we_18_w$;
wire  [0:4] _zy_simnet_sw_add_19_w$ ;
wire  [0:31] _zy_simnet_sw_wdat_20_w$ ;
wire  [0:31] _zy_simnet_sw_rdat_21_w$ ;
wire  _zy_simnet_cio_22;
wire  [0:3] _zy_simnet_cio_23 ;
wire  _zy_simnet_cio_24;
wire  _zy_simnet_dio_25;
wire  _zy_simnet_reset_26_w$;
wire  [1023:0] _zyixc_ctx_wdata_1 ;
wire  _zzM132L132_bcMevClk0;
wire  _zzM132L132_bcReq0;
wire  _zzM132L132_bcBusy0;
wire  _zzM132L132_bcWait0;
wire  _zz_zy_simnet_sw_cs_16_w$_M132_bcSv1;
wire  _zz_zy_simnet_sw_we_18_w$_M132_bcSv2;
wire  [0:4] _zz_zy_simnet_sw_add_19_w$_M132_bcSv3 ;
wire  [0:31] _zz_zy_simnet_sw_wdat_20_w$_M132_bcSv4 ;
wire  _zz_zy_simnet_reset_26_w$_M132_bcSv5;
wire  _zzM132_bcBehEvalClk;
wire  _zzM132_bcBehHalt;
reg [31:0]  _zzM132_bcBehEval;
// quickturn keep_net _zzM132_bcBehEval
// F73, L98
assign  addr_limit = 5'b11111;
// F73, L44
ixc_assign  #(3) _zz_strnp_0 (_zy_simnet_stat_code_0_w$,stat_code);
// F73, L44
ixc_assign  #(5) _zz_strnp_1 (_zy_simnet_stat_datawords_1_w$,stat_datawords);
// F73, L44
ixc_assign  #(5) _zz_strnp_2 (_zy_simnet_stat_addr_2_w$,stat_addr);
// F73, L44
ixc_assign  #(16) _zz_strnp_3 (_zy_simnet_capability_lst_3_w$,capability_lst);
// F73, L45
ixc_assign  #(4) _zz_strnp_4 (_zy_simnet_capability_type_4_w$,capability_type);
// F73, L45
ixc_assign  #(32) _zz_strnp_5 (_zy_simnet_rd_dat_5_w$,rd_dat);
// F73, L121
assign  _zy_simnet_cio_6 = 1'b0;
// F73, L117
ixc_assign  #(3) _zz_strnp_6 (stat_code,_zy_simnet_stat_code_7_w$);
// F73, L117
ixc_assign  #(5) _zz_strnp_7 (stat_datawords,_zy_simnet_stat_datawords_8_w$);
// F73, L117
ixc_assign  #(5) _zz_strnp_8 (stat_addr,_zy_simnet_stat_addr_9_w$);
// F73, L117
ixc_assign  #(16) _zz_strnp_9 (capability_lst,_zy_simnet_capability_lst_11_w$);
// F73, L117
ixc_assign  #(4) _zz_strnp_10 (capability_type,_zy_simnet_capability_type_12_w$);
// F73, L97
ixc_assign  #(5) _zz_strnp_11 (_zy_simnet_addr_limit_14_w$,addr_limit);
// F73, L117
ixc_assign  #(32) _zz_strnp_12 (rd_dat,_zy_simnet_rd_dat_15_w$);
// F73, L117
ixc_assign  #(1) _zz_strnp_13 (sw_cs,_zz_zy_simnet_sw_cs_16_w$_M132_bcSv1);
// F73, L117
ixc_assign  #(1) _zz_strnp_14 (sw_we,_zz_zy_simnet_sw_we_18_w$_M132_bcSv2);
// F73, L117
ixc_assign  #(5) _zz_strnp_15 (sw_add,_zz_zy_simnet_sw_add_19_w$_M132_bcSv3);
// F73, L117
ixc_assign  #(32) _zz_strnp_16 (sw_wdat,_zz_zy_simnet_sw_wdat_20_w$_M132_bcSv4);
// F73, L94
ixc_assign  #(32) _zz_strnp_17 (_zy_simnet_sw_rdat_21_w$,sw_rdat);
// F73, L124
assign  _zy_simnet_cio_22 = 1'b0;
// F73, L125
assign  _zy_simnet_cio_23 = 4'b0;
// F73, L118
assign  _zy_simnet_cio_24 = 1'b1;
// F73, L117
ixc_assign  #(1) _zz_strnp_18 (reset,_zz_zy_simnet_reset_26_w$_M132_bcSv5);
// F73, L34
ixc_context_read #(1024) _zzixc_ctxrd_0 ({{mem_a[32'sd0][32'sd31:32'sd0],mem_a[32'sd1][32'sd31:32'sd0],mem_a[32'sd2][32'sd31:32'sd0],mem_a[32'sd3][32'sd31:32'sd0],mem_a[32'sd4][32'sd31:32'sd0],mem_a[32'sd5][32'sd31:32'sd0],mem_a[32'sd6][32'sd31:32'sd0],mem_a[32'sd7][32'sd31:32'sd0],mem_a[32'sd8][32'sd31:32'sd0],mem_a[32'sd9][32'sd31:32'sd0],
mem_a[32'sd10][32'sd31:32'sd0],mem_a[32'sd11][32'sd31:32'sd0],mem_a[32'sd12][32'sd31:32'sd0],mem_a[32'sd13][32'sd31:32'sd0],mem_a[32'sd14][32'sd31:32'sd0],mem_a[32'sd15][32'sd31:32'sd0],mem_a[32'sd16][32'sd31:32'sd0],mem_a[32'sd17][32'sd31:32'sd0],mem_a[32'sd18][32'sd31:32'sd0],mem_a[32'sd19][32'sd31:32'sd0],
mem_a[32'sd20][32'sd31:32'sd0],mem_a[32'sd21][32'sd31:32'sd0],mem_a[32'sd22][32'sd31:32'sd0],mem_a[32'sd23][32'sd31:32'sd0],mem_a[32'sd24][32'sd31:32'sd0],mem_a[32'sd25][32'sd31:32'sd0],mem_a[32'sd26][32'sd31:32'sd0],mem_a[32'sd27][32'sd31:32'sd0],mem_a[32'sd28][32'sd31:32'sd0],mem_a[32'sd29][32'sd31:32'sd0],
mem_a[32'sd30][32'sd31:32'sd0],mem_a[32'sd31][32'sd31:32'sd0]}});
// F73, L34
ixc_context_write #(1024,1) _zzixc_ctxwr_1 ({{mem_a[32'sd0][32'sd31:32'sd0],mem_a[32'sd1][32'sd31:32'sd0],mem_a[32'sd2][32'sd31:32'sd0],mem_a[32'sd3][32'sd31:32'sd0],mem_a[32'sd4][32'sd31:32'sd0],mem_a[32'sd5][32'sd31:32'sd0],mem_a[32'sd6][32'sd31:32'sd0],mem_a[32'sd7][32'sd31:32'sd0],mem_a[32'sd8][32'sd31:32'sd0],mem_a[32'sd9][32'sd31:32'sd0],
mem_a[32'sd10][32'sd31:32'sd0],mem_a[32'sd11][32'sd31:32'sd0],mem_a[32'sd12][32'sd31:32'sd0],mem_a[32'sd13][32'sd31:32'sd0],mem_a[32'sd14][32'sd31:32'sd0],mem_a[32'sd15][32'sd31:32'sd0],mem_a[32'sd16][32'sd31:32'sd0],mem_a[32'sd17][32'sd31:32'sd0],mem_a[32'sd18][32'sd31:32'sd0],mem_a[32'sd19][32'sd31:32'sd0],
mem_a[32'sd20][32'sd31:32'sd0],mem_a[32'sd21][32'sd31:32'sd0],mem_a[32'sd22][32'sd31:32'sd0],mem_a[32'sd23][32'sd31:32'sd0],mem_a[32'sd24][32'sd31:32'sd0],mem_a[32'sd25][32'sd31:32'sd0],mem_a[32'sd26][32'sd31:32'sd0],mem_a[32'sd27][32'sd31:32'sd0],mem_a[32'sd28][32'sd31:32'sd0],mem_a[32'sd29][32'sd31:32'sd0],
mem_a[32'sd30][32'sd31:32'sd0],mem_a[32'sd31][32'sd31:32'sd0]}});
// F73, L132
ixc_mevClk #(2,0,0,2'b11,2'b01,2'b0,2'b01,2'b0) _zzM132L132_bcMevClkP0 (_zzM132L132_bcMevClk0,{clk,rst_n},{2{1'b1}},1'b0,1'b0,_zzM132L132_bcReq0,_zzM132L132_bcBusy0,_zzM132L132_bcWait0);
// F73, L92
ixc_sample_logic #(1,0)_zz_zy_simnet_sw_cs_16_w$_M132_bcSp1 (_zz_zy_simnet_sw_cs_16_w$_M132_bcSv1,_zy_simnet_sw_cs_16_w$);
// F73, L95
ixc_sample_logic #(1,0)_zz_zy_simnet_sw_we_18_w$_M132_bcSp2 (_zz_zy_simnet_sw_we_18_w$_M132_bcSv2,_zy_simnet_sw_we_18_w$);
// F73, L91
ixc_sample_logic #(5,0)_zz_zy_simnet_sw_add_19_w$_M132_bcSp3 (_zz_zy_simnet_sw_add_19_w$_M132_bcSv3,_zy_simnet_sw_add_19_w$);
// F73, L93
ixc_sample_logic #(32,0)_zz_zy_simnet_sw_wdat_20_w$_M132_bcSp4 (_zz_zy_simnet_sw_wdat_20_w$_M132_bcSv4,_zy_simnet_sw_wdat_20_w$);
// F73, L90
ixc_sample_logic #(1,0)_zz_zy_simnet_reset_26_w$_M132_bcSp5 (_zz_zy_simnet_reset_26_w$_M132_bcSv5,_zy_simnet_reset_26_w$);
// F73, L34
ixc_capLoopXp _zzM132L34_bcBehEvalP0 (_zzM132_bcBehEvalClk,1'b0,,_zzM132_bcBehHalt);
nx_indirect_access_cntrl_xcm111 u_cntrl(clk,rst_n,wr_stb,addr,cmnd_op,cmnd_addr,_zy_simnet_cio_6,_zy_simnet_stat_code_7_w$,_zy_simnet_stat_datawords_8_w$,_zy_simnet_stat_addr_9_w$,
  _zy_simnet_dio_10,_zy_simnet_capability_lst_11_w$,_zy_simnet_capability_type_12_w$,_zy_simnet_dio_13,_zy_simnet_addr_limit_14_w$,wr_dat,_zy_simnet_rd_dat_15_w$,_zy_simnet_sw_cs_16_w$,_zy_simnet_dio_17,_zy_simnet_sw_we_18_w$,
  _zy_simnet_sw_add_19_w$,_zy_simnet_sw_wdat_20_w$,_zy_simnet_sw_rdat_21_w$,_zy_simnet_cio_22,_zy_simnet_cio_23,_zy_simnet_cio_24,_zy_simnet_dio_25,_zy_simnet_reset_26_w$); 
// F73, L132
always 
 @(posedge _zzM132L132_bcMevClk0)
  // F73, L132
  begin:mem_wr_rst
   // F73, L133
   if (( !rst_n ))
    // F73, L133
    begin:rst
     // F73, L134
     // F73, L134
     begin:unmblk0
      int ii;
      // F73, L134
      for (ii = 0;(ii < 32); ii = (ii + 1))
       mem_a[ii] <= rst_dat[ii];
     end
    end
   else
    if (reset)
     // F73, L137
     begin
      // F73, L138
      // F73, L138
      begin:unmblk1
       int ii;
       // F73, L138
       for (ii = 0;(ii < 32); ii = (ii + 1))
        mem_a[ii] <= rst_dat[ii];
      end
     end
    else
     if (((sw_cs && sw_we) && (16'(sw_add) < 16'b0100000)))
      // F73, L140
      begin
       // F73, L143
       mem_a[sw_add] <= sw_wdat;
      end
  end
// F73, L148
always_ff 
 @(posedge clk or negedge rst_n)
  // F73, L148
  begin:mem_rd
   // F73, L149
   if (( !rst_n ))
    // F73, L149
    begin:rst
     // F73, L150
     sw_rdat <= 32'b0;
    end
   else
    if (sw_cs)
     // F73, L152
     begin
      // F73, L153
      if ((16'(sw_add) < 16'b0100000))
       // F73, L153
       begin
        // F73, L154
        if (sw_we)
         sw_rdat <= sw_wdat;
        else
         sw_rdat <= mem_a[sw_add];
       end
      else
       sw_rdat <= 32'b0;
     end
  end
// F73, L34
always 
 @(posedge _zzM132_bcBehEvalClk)
  if (_zzM132L132_bcWait0)
   // F73, L34
   begin
    // F73, L34
    if (( ~& _zzM132_bcBehEval[30:0] ))
     _zzM132_bcBehEval[30:0] <= (_zzM132_bcBehEval[30:0] + 1'b1);
    _zzM132_bcBehEval[31] <= _zzM132_bcBehHalt;
   end
// pragma CVASTRPROP MODULE nx_reg_indirect_access PROP_RANOFF TRUE
endmodule

