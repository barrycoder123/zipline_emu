// xc_work/v/96n.sv
// /home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_rbus_ring.v:33
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module nx_rbus_ring(input  clk,input  rst_n,input  [15:0] cfg_start_addr ,input  [15:0] cfg_end_addr ,input  [15:0] rbus_addr_i ,input  rbus_wr_strb_i,input  [31:0] rbus_wr_data_i ,input  rbus_rd_strb_i,output reg [15:0] rbus_addr_o ,output reg rbus_wr_strb_o,output reg [31:0] rbus_wr_data_o ,output reg rbus_rd_strb_o
,output reg [10:0] locl_addr_o ,output reg locl_wr_strb_o,output reg [31:0] locl_wr_data_o ,output reg locl_rd_strb_o,input  [31:0] rbus_rd_data_i ,input  rbus_ack_i,input  rbus_err_ack_i,input  [31:0] locl_rd_data_i ,input  locl_ack_i,input  locl_err_ack_i,output reg [31:0] rbus_rd_data_o ,output reg rbus_ack_o
,output reg rbus_err_ack_o);
parameter IO_ASYNC = 0;
parameter N_RBUS_ADDR_BITS = 16;
parameter N_LOCL_ADDR_BITS = 11;
parameter N_RBUS_DATA_BITS = 32;
wire  [0:15] _zy_simnet_rbus_addr_o_0_w$ ;
wire  _zy_simnet_rbus_wr_strb_o_1_w$;
wire  [0:31] _zy_simnet_rbus_wr_data_o_2_w$ ;
wire  _zy_simnet_rbus_rd_strb_o_3_w$;
wire  [0:10] _zy_simnet_locl_addr_o_4_w$ ;
wire  _zy_simnet_locl_wr_strb_o_5_w$;
wire  [0:31] _zy_simnet_locl_wr_data_o_6_w$ ;
wire  _zy_simnet_locl_rd_strb_o_7_w$;
wire  [0:31] _zy_simnet_rbus_rd_data_o_8_w$ ;
wire  _zy_simnet_rbus_ack_o_9_w$;
wire  _zy_simnet_rbus_err_ack_o_10_w$;
assign  _zy_simnet_rbus_addr_o_0_w$ = rbus_addr_o;
assign  _zy_simnet_rbus_wr_strb_o_1_w$ = rbus_wr_strb_o;
assign  _zy_simnet_rbus_wr_data_o_2_w$ = rbus_wr_data_o;
assign  _zy_simnet_rbus_rd_strb_o_3_w$ = rbus_rd_strb_o;
assign  _zy_simnet_locl_addr_o_4_w$ = locl_addr_o;
assign  _zy_simnet_locl_wr_strb_o_5_w$ = locl_wr_strb_o;
assign  _zy_simnet_locl_wr_data_o_6_w$ = locl_wr_data_o;
assign  _zy_simnet_locl_rd_strb_o_7_w$ = locl_rd_strb_o;
assign  _zy_simnet_rbus_rd_data_o_8_w$ = rbus_rd_data_o;
assign  _zy_simnet_rbus_ack_o_9_w$ = rbus_ack_o;
assign  _zy_simnet_rbus_err_ack_o_10_w$ = rbus_err_ack_o;
if(1) begin: sync_io
 reg [15:0] rbus_addr_i_reg ;
 reg rbus_wr_strb_i_reg;
 reg [31:0] rbus_wr_data_i_reg ;
 reg rbus_rd_strb_i_reg;
 reg [31:0] rbus_rd_data_i_reg ;
 reg rbus_ack_i_reg;
 reg rbus_err_ack_i_reg;
 always_ff 
  @(posedge clk or negedge rst_n)
   begin
    if (( !rst_n ))
     begin
      locl_addr_o <= 11'b0;
      locl_rd_strb_o <= 1'b0;
      locl_wr_data_o <= 32'b0;
      locl_wr_strb_o <= 1'b0;
      rbus_ack_i_reg <= 1'b0;
      rbus_ack_o <= 1'b0;
      rbus_addr_i_reg <= 16'b0;
      rbus_addr_o <= 16'b0;
      rbus_err_ack_i_reg <= 1'b0;
      rbus_err_ack_o <= 1'b0;
      rbus_rd_data_i_reg <= 32'b0;
      rbus_rd_data_o <= 32'b0;
      rbus_rd_strb_i_reg <= 1'b0;
      rbus_rd_strb_o <= 1'b0;
      rbus_wr_data_i_reg <= 32'b0;
      rbus_wr_data_o <= 32'b0;
      rbus_wr_strb_i_reg <= 1'b0;
      rbus_wr_strb_o <= 1'b0;
     end
    else
     begin
      locl_wr_strb_o <= 1'b0;
      locl_rd_strb_o <= 1'b0;
      rbus_wr_strb_o <= 1'b0;
      rbus_rd_strb_o <= 1'b0;
      rbus_ack_o <= 1'b0;
      rbus_err_ack_o <= 1'b0;
      rbus_addr_i_reg <= rbus_addr_i;
      rbus_wr_strb_i_reg <= rbus_wr_strb_i;
      rbus_wr_data_i_reg <= rbus_wr_data_i;
      rbus_rd_strb_i_reg <= rbus_rd_strb_i;
      rbus_rd_data_i_reg <= rbus_rd_data_i;
      rbus_ack_i_reg <= rbus_ack_i;
      rbus_err_ack_i_reg <= rbus_err_ack_i;
      if ((rbus_wr_strb_i_reg || rbus_rd_strb_i_reg))
       begin
        if (((rbus_addr_i_reg >= cfg_start_addr) && (rbus_addr_i_reg <= cfg_end_addr)))
         begin
          locl_addr_o <= rbus_addr_i_reg[10:0];
          locl_wr_strb_o <= rbus_wr_strb_i_reg;
          locl_wr_data_o <= rbus_wr_data_i_reg;
          locl_rd_strb_o <= rbus_rd_strb_i_reg;
         end
        else
         begin
          rbus_addr_o <= rbus_addr_i_reg;
          rbus_wr_strb_o <= rbus_wr_strb_i_reg;
          rbus_wr_data_o <= rbus_wr_data_i_reg;
          rbus_rd_strb_o <= rbus_rd_strb_i_reg;
         end
       end
      if ((locl_ack_i || locl_err_ack_i))
       begin
        rbus_rd_data_o <= locl_rd_data_i;
        rbus_ack_o <= locl_ack_i;
        rbus_err_ack_o <= locl_err_ack_i;
       end
      else
       begin
        rbus_rd_data_o <= rbus_rd_data_i_reg;
        rbus_ack_o <= rbus_ack_i_reg;
        rbus_err_ack_o <= rbus_err_ack_i_reg;
       end
     end
   end
end
endmodule

