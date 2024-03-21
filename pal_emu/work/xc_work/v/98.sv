// xc_work/v/98.sv
// /home/ibarry/Project-Zipline-master/rtl/common/nx_library/sync_fifo.v:8
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module sync_fifo(dout,full,empty,clk,rst_n,din,wr_en,rd_en,space_avail);
parameter DATAWIDTH = 96;
parameter DEPTH = 8;
parameter RD_REG_MODE = 0;
parameter RD_LATCH_MODE = 0;
localparam L2DEPTH = 3;
localparam PTRW = 4;
localparam DW = 96;
input  clk;
input  rst_n;
input  [95:0] din ;
input  wr_en;
input  rd_en;
output  [95:0] dout ;
output  full;
output  empty;
output  [3:0] space_avail ;
wire  [3:0] wr_ptr_nxt ;
wire  [3:0] rd_ptr_nxt ;
reg [3:0] wr_ptr_r ;
reg [3:0] rd_ptr_r ;
wire  full_i;
wire  empty_i;
integer i;
reg [95:0] mem_nxt [7:0];
reg [95:0] mem_r [7:0];
reg [95:0] dout_i ;
reg [95:0] dout_r ;
wire  [95:0] default_data ;
reg hit_flag;
assign  wr_ptr_nxt = ((wr_en & (( ~full_i ) | rd_en)) ? (func_check_next_ptr_eq_depth(wr_ptr_r[2:0]) ? {( ~wr_ptr_r[32'sd3] ),3'b0} : (wr_ptr_r + 4'b01)) : wr_ptr_r);
assign  rd_ptr_nxt = ((rd_en & ( ~empty_i )) ? (func_check_next_ptr_eq_depth(rd_ptr_r[2:0]) ? {( ~rd_ptr_r[32'sd3] ),3'b0} : (rd_ptr_r + 4'b01)) : rd_ptr_r);
assign  full_i = ((rd_ptr_r[2:0] == wr_ptr_r[2:0]) & (rd_ptr_r[3] != wr_ptr_r[3]));
assign  empty_i = (rd_ptr_r[3:0] == wr_ptr_r[3:0]);
ixc_assign  #(1) _zz_strnp_1 (full,full_i);
ixc_assign  #(1) _zz_strnp_2 (empty,empty_i);
ixc_assign  #(96) _zz_strnp_3 (dout,dout_r);
ixc_assign  #(4) _zz_strnp_4 (space_avail,4'(((wr_ptr_r[3] == rd_ptr_r[3]) ? (32'b01000 - (wr_ptr_r[2:0] - rd_ptr_r[2:0])) : (rd_ptr_r[2:0] - wr_ptr_r[2:0]))));

function  func_check_next_ptr_eq_depth;
 input reg [2:0] cur_ptr ;
 reg [3:0] cur_ptr_nxt ;
 begin
  cur_ptr_nxt = ({1'b0,cur_ptr} + 32'b01);
  if ((cur_ptr_nxt == 4'b1000))
   func_check_next_ptr_eq_depth = 1'b1;
  else
   func_check_next_ptr_eq_depth = 1'b0;
 end
endfunction

always 
 @(posedge clk or negedge rst_n)
  if (( ~rst_n ))
   begin
    wr_ptr_r <= 4'b0;
    rd_ptr_r <= 4'b0;
   end
  else
   begin
    wr_ptr_r <= wr_ptr_nxt;
    rd_ptr_r <= rd_ptr_nxt;
   end
always 
 @(*)
  begin
   for (i = 0;(i < 8); i = (i + 1))
    begin
     if (((wr_en & (( ~full_i ) | rd_en)) & (wr_ptr_r[2:0] == i)))
      mem_nxt[i] = din;
     else
      mem_nxt[i] = mem_r[i];
    end
  end
always 
 @(posedge clk or negedge rst_n)
  if (( ~rst_n ))
   begin
    for (i = 0;(i < 8); i = (i + 1))
     begin
      mem_r[i] <= 96'b0;
     end
   end
  else
   begin
    for (i = 0;(i < 8); i = (i + 1))
     begin
      mem_r[i] <= mem_nxt[i];
     end
   end
always 
 @(*)
  begin
   hit_flag = 1'b0;
   dout_i = default_data;
   for (i = 0;(i < 8); i = (i + 1))
    begin
     if (((rd_ptr_r[2:0] == i) & (hit_flag == 32'b0)))
      begin
       dout_i = mem_r[i];
       hit_flag = 1'b1;
      end
    end
  end
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "genblk1"
//pragma RTLNAME "genblk1" "genblk1"
if(1) begin: genblk1
  ixc_assign  #(96) _zz_strnp_0 (default_data,mem_r[0]);
end
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "GEN_NO_RD_REG_MODE"
//pragma RTLNAME "GEN_NO_RD_REG_MODE" "GEN_NO_RD_REG_MODE"
if(1) begin: GEN_NO_RD_REG_MODE
 always 
  @(*)
   dout_r = dout_i;
end
  //pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 genblk1  "
  //pragma CVASTRPROP MODULE HDLICE cva_for_generate_1 "-1 GEN_NO_RD_REG_MODE  "
endmodule

