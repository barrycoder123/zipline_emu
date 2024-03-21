// xc_work/v/122.sv
// /home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_indirect_access_cntrl_v2.v:23
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module nx_indirect_access_cntrl_v2_xcm124(input  clk,input  rst_n,input  wr_stb,input  [10:0] reg_addr ,input  [3:0] cmnd_op ,input  [13:0] cmnd_addr ,input  [0:0] cmnd_table_id ,output logic [2:0] stat_code ,output logic [4:0] stat_datawords ,output logic [13:0] stat_addr ,output logic [0:0] stat_table_id ,output logic [15:0] capability_lst 
,output logic [3:0] capability_type ,output logic enable,input  [0:0][13:0] addr_limit ,input  [37:0] wr_dat ,output logic [37:0] rd_dat ,output logic sw_cs,output logic sw_ce,output logic sw_we,output logic [13:0] sw_add ,output logic [37:0] sw_wdat ,input  [37:0] sw_rdat ,input  sw_match
,input  [12:0] sw_aindex ,input  grant,input  rsp,output logic yield,output logic reset);
// pkg external : PKG - nx_mem_typePKG_v2 : ENUM_LIT - REG
parameter MEM_TYPE = 4'b0;
parameter CMND_ADDRESS = 11'b0110111000;
parameter STAT_ADDRESS = 11'b0110101100;
parameter ALIGNMENT = 2;
parameter N_TIMER_BITS = 6;
parameter N_REG_ADDR_BITS = 11;
parameter N_DATA_BITS = 38;
parameter N_TABLES = 1;
parameter N_ENTRIES = 16384;
parameter N_INIT_INC_BITS = 0;
parameter reg [15:0] CAPABILITIES  = 16'b1100000101111111;
parameter reg [37:0] RESET_DATA  = 38'b0;
import nx_mem_typePKG_v2::* ;
typedef enum bit [3:0] {NOP=4'b0,READ=4'b01,WRITE=4'b010,ENABLE=4'b011,DISABLED=4'b0100,RESET=4'b0101,INIT=4'b0110,INIT_INC=4'b0111,SET_INIT_START=4'b1000,COMPARE=4'b1001,
SIM_TMO=4'b1110,ACK_ERROR=4'b1111} ia_operation_e;
ia_operation_e cmnd;
typedef enum bit [2:0] {RDY=3'b0,BSY=3'b01,TMO=3'b010,OVR=3'b011,NXM=3'b100,UOP=3'b101,PDN=3'b111} ia_status_e;
logic init_r;
logic [0:0] inc_r ;
logic init_inc_r;
logic sw_cs_r;
logic sw_ce_r;
logic rst_r;
logic rst_or_ini_r;
logic [13:0] rst_addr_r ;
logic sw_we_r;
logic cmnd_rd_stb;
logic cmnd_wr_stb;
logic cmnd_ena_stb;
logic cmnd_dis_stb;
logic cmnd_rst_stb;
logic cmnd_ini_stb;
logic cmnd_inc_stb;
logic cmnd_sis_stb;
logic cmnd_tmo_stb;
logic cmnd_cmp_stb;
logic cmnd_issued;
logic ack_error;
logic unsupported_op;
typedef enum bit [3:0] {POWERDOWN=0,READY=4'b01,ERROR=4'b010,DO_RESET=4'b011,DO_INIT=4'b0100,DO_WRITE=4'b0101,DO_READ=4'b0110,READ_DONE=4'b0111,DO_COMPARE=4'b1000,COMPARE_DONE=4'b1001} state_e;
state_e state_r;
logic [5:0] timer_r ;
logic timeout;
logic sim_tmo_r;
logic [13:0] maxaddr ;
logic badaddr;
logic igrant;
ia_status_e stat;
wire  [0:2] _zy_simnet_stat_code_0_w$ ;
wire  [0:4] _zy_simnet_stat_datawords_1_w$ ;
wire  [0:13] _zy_simnet_stat_addr_2_w$ ;
wire  _zy_simnet_stat_table_id_3_w$;
wire  [0:15] _zy_simnet_capability_lst_4_w$ ;
wire  [0:3] _zy_simnet_capability_type_5_w$ ;
wire  _zy_simnet_enable_6_w$;
wire  [0:37] _zy_simnet_rd_dat_7_w$ ;
wire  _zy_simnet_sw_cs_8_w$;
wire  _zy_simnet_sw_ce_9_w$;
wire  _zy_simnet_sw_we_10_w$;
wire  [0:13] _zy_simnet_sw_add_11_w$ ;
wire  [0:37] _zy_simnet_sw_wdat_12_w$ ;
wire  _zy_simnet_yield_13_w$;
wire  _zy_simnet_reset_14_w$;
ixc_assign  #(4) _zz_strnp_1 (cmnd,ia_operation_e'(cmnd_op));
assign  capability_lst = 16'b1100000101111111;
assign  capability_type = 4'b0;
assign  enable = ( !init_r );
ixc_assign  #(1) _zz_strnp_2 (sw_cs,sw_cs_r);
ixc_assign  #(1) _zz_strnp_3 (sw_ce,sw_ce_r);
ixc_assign  #(1) _zz_strnp_4 (sw_we,sw_we_r);
assign  sw_add = (rst_or_ini_r ? rst_addr_r : cmnd_addr);
ixc_assign  #(1) _zz_strnp_5 (yield,timer_r[5]);
assign  timeout = (timer_r == 6'b111111);
assign  maxaddr = (init_r ? 32'b0 : addr_limit[(cmnd_table_id % 32'b01)]);
assign  badaddr = (cmnd_issued && (cmnd_addr > maxaddr));
assign  igrant = (( !sim_tmo_r ) && grant);
assign  stat_datawords = 5'b01;
ixc_assign  #(14) _zz_strnp_6 (stat_addr,maxaddr);
assign  stat_table_id = (init_r ? 0 : 0);
ixc_assign  #(3) _zz_strnp_7 (stat,ia_status_e'(stat_code));
ixc_assign  #(3) _zz_strnp_8 (_zy_simnet_stat_code_0_w$,stat_code);
ixc_assign  #(5) _zz_strnp_9 (_zy_simnet_stat_datawords_1_w$,stat_datawords);
ixc_assign  #(14) _zz_strnp_10 (_zy_simnet_stat_addr_2_w$,stat_addr);
ixc_assign  #(1) _zz_strnp_11 (_zy_simnet_stat_table_id_3_w$,stat_table_id);
ixc_assign  #(16) _zz_strnp_12 (_zy_simnet_capability_lst_4_w$,capability_lst);
ixc_assign  #(4) _zz_strnp_13 (_zy_simnet_capability_type_5_w$,capability_type);
ixc_assign  #(1) _zz_strnp_14 (_zy_simnet_enable_6_w$,enable);
ixc_assign  #(38) _zz_strnp_15 (_zy_simnet_rd_dat_7_w$,rd_dat);
ixc_assign  #(1) _zz_strnp_16 (_zy_simnet_sw_cs_8_w$,sw_cs);
ixc_assign  #(1) _zz_strnp_17 (_zy_simnet_sw_ce_9_w$,sw_ce);
ixc_assign  #(1) _zz_strnp_18 (_zy_simnet_sw_we_10_w$,sw_we);
ixc_assign  #(14) _zz_strnp_19 (_zy_simnet_sw_add_11_w$,sw_add);
ixc_assign  #(38) _zz_strnp_20 (_zy_simnet_sw_wdat_12_w$,sw_wdat);
ixc_assign  #(1) _zz_strnp_21 (_zy_simnet_yield_13_w$,yield);
ixc_assign  #(1) _zz_strnp_22 (_zy_simnet_reset_14_w$,reset);
ixc_context_read #(6) _zzixc_ctxrd_0 ({stat_code,stat});
always_comb 
 begin
  cmnd_rd_stb = 1'b0;
  cmnd_wr_stb = 1'b0;
  cmnd_ena_stb = 1'b0;
  cmnd_dis_stb = 1'b0;
  cmnd_rst_stb = 1'b0;
  cmnd_ini_stb = 1'b0;
  cmnd_inc_stb = 1'b0;
  cmnd_sis_stb = 1'b0;
  cmnd_tmo_stb = 1'b0;
  cmnd_cmp_stb = 1'b0;
  ack_error = 1'b0;
  cmnd_issued = 1'b0;
  unsupported_op = 1'b0;
  if ((wr_stb && (reg_addr == 11'b0110111000)))
   begin
    if ((cmnd != SIM_TMO))
     cmnd_issued = 1'b1;
    unique case (cmnd)
     NOP:
      cmnd_issued = 1'b0;
     READ:
      cmnd_rd_stb = 1'b1;
     WRITE:
      cmnd_wr_stb = 1'b1;
     ENABLE:
      cmnd_ena_stb = 1'b1;
     DISABLED:
      cmnd_dis_stb = 1'b1;
     RESET:
      cmnd_rst_stb = 1'b1;
     INIT:
      cmnd_ini_stb = 1'b1;
     INIT_INC:
      cmnd_inc_stb = 1'b1;
     SET_INIT_START:
      cmnd_sis_stb = 1'b1;
     COMPARE:
      cmnd_cmp_stb = 1'b1;
     SIM_TMO:
      cmnd_tmo_stb = 1'b1;
     ACK_ERROR:
      ack_error = 1'b1;
     default:
      unsupported_op = 1'b1;
    endcase
   end
 end
always 
 @(posedge clk or negedge rst_n)
  begin
   if (( !rst_n ))
    begin:rst
     stat_code <= 3'b111;
     state_r <= POWERDOWN;
     init_r <= 1'b1;
     rd_dat <= 38'b0;
     sw_cs_r <= 1'b0;
     sw_we_r <= 1'b0;
     sw_ce_r <= 1'b0;
     timer_r <= 6'b0;
     rst_r <= 1'b0;
     rst_or_ini_r <= 1'b0;
     rst_addr_r <= 14'b0;
     inc_r <= 1'b0;
     init_inc_r <= 1'b0;
     sim_tmo_r <= 1'b0;
    end
   else
    begin:cntrlr
     state_e state_v;
     state_v = state_r;
     rst_r <= 1'b0;
     rst_or_ini_r <= 1'b0;
     timer_r <= 6'b0;
     sw_cs_r <= 1'b0;
     sw_ce_r <= 1'b0;
     sw_we_r <= 1'b0;
     if (cmnd_sis_stb)
      rst_addr_r <= cmnd_addr;
     else
      if (cmnd_rst_stb)
       rst_addr_r <= 14'b0;
     if (cmnd_tmo_stb)
      sim_tmo_r <= 1'b1;
     else
      if (timeout)
       sim_tmo_r <= 1'b0;
     if (badaddr)
      state_v = ERROR;
     else
      unique case (state_r)
       POWERDOWN:
        begin
         rd_dat <= wr_dat;
         if (cmnd_ena_stb)
          begin
          init_r <= 1'b0;
          state_v = READY;
          end
        end
       READY:
        begin
         inc_r <= 1'b0;
         init_inc_r <= 1'b0;
         unique case (1'b1)
          cmnd_wr_stb:
          state_v = DO_WRITE;
          cmnd_rd_stb:
          state_v = DO_READ;
          cmnd_cmp_stb:
          state_v = DO_COMPARE;
          cmnd_rst_stb:
          state_v = DO_RESET;
          (cmnd_ini_stb || cmnd_inc_stb):
          state_v = DO_INIT;
          cmnd_dis_stb:
          state_v = POWERDOWN;
          unsupported_op:
          state_v = ERROR;
          default:
          state_v = state_r;
         endcase
         init_inc_r <= 1'b0;
        end
       DO_WRITE:
        begin
         if (igrant)
          state_v = READY;
        end
       DO_READ:
        begin
         if (igrant)
          state_v = READ_DONE;
        end
       DO_COMPARE:
        begin
         if (igrant)
          state_v = COMPARE_DONE;
        end
       DO_RESET:
        begin
         rst_addr_r <= 14'((rst_addr_r + igrant));
         if ((igrant && (rst_addr_r == maxaddr)))
          state_v = READY;
        end
       DO_INIT:
        begin
         rst_addr_r <= 14'((rst_addr_r + igrant));
         inc_r <= 1'((inc_r + (init_inc_r && igrant)));
         if ((igrant && (rst_addr_r == cmnd_addr)))
          state_v = READY;
        end
       READ_DONE:
        begin
         if (rsp)
          begin
          rd_dat <= sw_rdat;
          state_v = READY;
          end
        end
       COMPARE_DONE:
        begin
         if (rsp)
          begin
          rd_dat <= (sw_aindex | (sw_match << 13));
          state_v = READY;
          end
        end
       default:
        begin
         if (ack_error)
          state_v = (init_r ? POWERDOWN : READY);
         else
          state_v = ERROR;
        end
      endcase
     if (((((timeout || cmnd_issued) && (state_r != POWERDOWN)) && (state_r != READY)) && (state_r != ERROR)))
      state_v = ERROR;
     case (state_v)
      POWERDOWN:
       begin
        stat_code <= 3'b111;
        if ((state_r != POWERDOWN))
         init_r <= 1'b1;
       end
      READY:
       begin
        stat_code <= 3'b0;
       end
      ERROR:
       begin
        if ((state_r != ERROR))
         begin
          priority case (1'b1)
          unsupported_op:
          stat_code <= 3'b101;
          badaddr:
          stat_code <= 3'b100;
          timeout:
          stat_code <= 3'b010;
          cmnd_issued:
          stat_code <= 3'b011;
          endcase
         end
       end
      DO_WRITE:
       begin
        stat_code <= 3'b01;
        timer_r <= (timer_r + 32'b01);
        sw_cs_r <= 1'b1;
        sw_we_r <= 1'b1;
       end
      DO_READ:
       begin
        stat_code <= 3'b01;
        timer_r <= (timer_r + 32'b01);
        sw_cs_r <= 1'b1;
       end
      DO_COMPARE:
       begin
        stat_code <= 3'b01;
        timer_r <= (timer_r + 32'b01);
        sw_cs_r <= 1'b1;
        sw_ce_r <= 1'b1;
       end
      DO_RESET:
       begin
        stat_code <= 3'b01;
        timer_r <= (timer_r + 32'b01);
        rst_or_ini_r <= 1'b1;
        rst_r <= 1'b1;
        sw_cs_r <= 1'b1;
        sw_we_r <= 1'b1;
       end
      DO_INIT:
       begin
        stat_code <= 3'b01;
        timer_r <= (timer_r + 32'b01);
        rst_or_ini_r <= 1'b1;
        sw_cs_r <= 1'b1;
        sw_we_r <= 1'b1;
       end
      default:
       stat_code <= 3'b01;
     endcase
     if (igrant)
      timer_r <= 6'b0;
     state_r <= state_v;
    end
  end
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "genblk1"
//pragma RTLNAME "genblk1" "genblk1"
if(1) begin: genblk1
  ixc_assign  #(1) _zz_strnp_0 (reset,rst_or_ini_r);
end
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "genblk2"
//pragma RTLNAME "genblk2" "genblk2"
if(1) begin: genblk2
  assign  sw_wdat = (rst_r ? 38'b0 : wr_dat);
end
  //pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 genblk1  "
  //pragma CVASTRPROP MODULE HDLICE cva_for_generate_1 "-1 genblk2  "
endmodule

