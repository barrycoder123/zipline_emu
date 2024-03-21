// xc_work/v/91n.sv
// /home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_rbus_apb.v:33
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module nx_rbus_apb(rbus_addr_o,rbus_wr_strb_o,rbus_wr_data_o,rbus_rd_strb_o,apb_prdata,apb_pready,apb_pslverr,clk,rst_n,rbus_rd_data_i,
rbus_ack_i,rbus_err_ack_i,rbus_wr_strb_i,rbus_rd_strb_i,apb_paddr,apb_psel,apb_penable,apb_pwrite,apb_pwdata);
parameter N_RBUS_ADDR_BITS = 16;
parameter N_RBUS_DATA_BITS = 32;
input  clk;
input  rst_n;
output logic [15:0] rbus_addr_o ;
output logic rbus_wr_strb_o;
output logic [31:0] rbus_wr_data_o ;
output logic rbus_rd_strb_o;
input  [31:0] rbus_rd_data_i ;
input  rbus_ack_i;
input  rbus_err_ack_i;
input  rbus_wr_strb_i;
input  rbus_rd_strb_i;
input  [15:0] apb_paddr ;
input  apb_psel;
input  apb_penable;
input  apb_pwrite;
input  [31:0] apb_pwdata ;
output logic [31:0] apb_prdata ;
output logic apb_pready;
output logic apb_pslverr;
logic [15:0] apb_paddr_reg ;
logic apb_penable_reg;
logic apb_psel_reg;
logic [31:0] apb_pwdata_reg ;
logic apb_pwrite_reg;
logic apb_active;
logic apb_active_reg;
wire  [0:15] _zy_simnet_rbus_addr_o_0_w$ ;
wire  _zy_simnet_rbus_wr_strb_o_1_w$;
wire  [0:31] _zy_simnet_rbus_wr_data_o_2_w$ ;
wire  _zy_simnet_rbus_rd_strb_o_3_w$;
wire  [0:31] _zy_simnet_apb_prdata_4_w$ ;
wire  _zy_simnet_apb_pready_5_w$;
wire  _zy_simnet_apb_pslverr_6_w$;
assign  _zy_simnet_rbus_addr_o_0_w$ = rbus_addr_o;
assign  _zy_simnet_rbus_wr_strb_o_1_w$ = rbus_wr_strb_o;
assign  _zy_simnet_rbus_wr_data_o_2_w$ = rbus_wr_data_o;
assign  _zy_simnet_rbus_rd_strb_o_3_w$ = rbus_rd_strb_o;
assign  _zy_simnet_apb_prdata_4_w$ = apb_prdata;
assign  _zy_simnet_apb_pready_5_w$ = apb_pready;
assign  _zy_simnet_apb_pslverr_6_w$ = apb_pslverr;
always_ff 
 @(posedge clk or negedge rst_n)
  begin
   if (( !rst_n ))
    begin
     apb_active <= 1'b0;
     apb_active_reg <= 1'b0;
     apb_paddr_reg <= 16'b0;
     apb_penable_reg <= 1'b0;
     apb_prdata <= 32'b0;
     apb_pready <= 1'b0;
     apb_psel_reg <= 1'b0;
     apb_pslverr <= 1'b0;
     apb_pwdata_reg <= 32'b0;
     apb_pwrite_reg <= 1'b0;
     rbus_addr_o <= 16'b0;
     rbus_rd_strb_o <= 1'b0;
     rbus_wr_data_o <= 32'b0;
     rbus_wr_strb_o <= 1'b0;
    end
   else
    begin
     rbus_wr_strb_o <= 1'b0;
     rbus_rd_strb_o <= 1'b0;
     apb_paddr_reg <= apb_paddr;
     apb_psel_reg <= apb_psel;
     apb_penable_reg <= apb_penable;
     apb_pwrite_reg <= apb_pwrite;
     apb_pwdata_reg <= apb_pwdata;
     apb_pready <= 1'b0;
     apb_pslverr <= 1'b0;
     apb_active_reg <= apb_active;
     if (((((apb_psel_reg && apb_penable_reg) && ( !apb_active )) && ( !apb_active_reg )) && ( !apb_pready )))
      begin
       apb_active <= 1'b1;
       rbus_addr_o <= apb_paddr_reg;
       rbus_wr_data_o <= apb_pwdata_reg;
       rbus_wr_strb_o <= apb_pwrite_reg;
       rbus_rd_strb_o <= ( ~apb_pwrite_reg );
      end
     if ((((rbus_ack_i || rbus_err_ack_i) || rbus_wr_strb_i) || rbus_rd_strb_i))
      begin
       apb_pready <= 1'b1;
       apb_pslverr <= ((rbus_err_ack_i || rbus_wr_strb_i) || rbus_rd_strb_i);
       apb_prdata <= rbus_rd_data_i;
      end
     if (apb_pready)
      begin
       apb_active <= 1'b0;
      end
    end
  end
endmodule

