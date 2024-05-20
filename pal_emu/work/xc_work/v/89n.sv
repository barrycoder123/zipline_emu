// xc_work/v/89n.sv
// /home/ibarry/Project-Zipline-master/rtl/common/axi/axi_channel_reg_slice.v:10
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
module axi_channel_reg_slice(ready_src,valid_dst,payload_dst,aclk,aresetn,valid_src,payload_src,ready_dst);
parameter PAYLD_WIDTH = 82;
parameter HNDSHK_MODE = 0;
parameter BITS_PER_CHUNK = 8;
localparam CHUNKS = 11;
input  aclk;
input  aresetn;
input  valid_src;
input  [81:0] payload_src ;
output  ready_src;
output  valid_dst;
output  [81:0] payload_dst ;
input  ready_dst;
genvar i;
if(1) begin: full
 reg r_wptr;
 reg c_wptr;
 reg [10:0] r_rptr ;
 reg [10:0] c_rptr ;
 reg r_full;
 reg c_full;
 reg r_empty;
 reg c_empty;
 reg r_enable;
 reg [81:0] r_payload [1:0];
  assign  ready_src = (r_enable && ( !r_full ));
  assign  valid_dst = ( !r_empty );
 genvar i$23; 
 for ( i$23 = 0 ; (i$23 < 11) ; i$23 = (i$23 + 1) ) begin: genblk1
 end
 genvar i$24; 
// pragma cva_vlog_forgen genblk1 
 for ( i$24 = 0 ; (i$24 <= 0) ; i$24 = (i$24 + 1) ) begin: genblk1_0_
  localparam integer i = 0;
  if(1) begin: genblk1
      assign  payload_dst[0 +: 8] = r_payload[r_rptr[0]][0 +: 8];
  end
 end
 genvar i$25; 
// pragma cva_vlog_forgen genblk1 
 for ( i$25 = 1 ; (i$25 <= 1) ; i$25 = (i$25 + 1) ) begin: genblk1_1_
  localparam integer i = 1;
  if(1) begin: genblk1
      assign  payload_dst[8 +: 8] = r_payload[r_rptr[1]][8 +: 8];
  end
 end
 genvar i$26; 
// pragma cva_vlog_forgen genblk1 
 for ( i$26 = 2 ; (i$26 <= 2) ; i$26 = (i$26 + 1) ) begin: genblk1_2_
  localparam integer i = 2;
  if(1) begin: genblk1
      assign  payload_dst[16 +: 8] = r_payload[r_rptr[2]][16 +: 8];
  end
 end
 genvar i$27; 
// pragma cva_vlog_forgen genblk1 
 for ( i$27 = 3 ; (i$27 <= 3) ; i$27 = (i$27 + 1) ) begin: genblk1_3_
  localparam integer i = 3;
  if(1) begin: genblk1
      assign  payload_dst[24 +: 8] = r_payload[r_rptr[3]][24 +: 8];
  end
 end
 genvar i$28; 
// pragma cva_vlog_forgen genblk1 
 for ( i$28 = 4 ; (i$28 <= 4) ; i$28 = (i$28 + 1) ) begin: genblk1_4_
  localparam integer i = 4;
  if(1) begin: genblk1
      assign  payload_dst[32 +: 8] = r_payload[r_rptr[4]][32 +: 8];
  end
 end
 genvar i$29; 
// pragma cva_vlog_forgen genblk1 
 for ( i$29 = 5 ; (i$29 <= 5) ; i$29 = (i$29 + 1) ) begin: genblk1_5_
  localparam integer i = 5;
  if(1) begin: genblk1
      assign  payload_dst[40 +: 8] = r_payload[r_rptr[5]][40 +: 8];
  end
 end
 genvar i$30; 
// pragma cva_vlog_forgen genblk1 
 for ( i$30 = 6 ; (i$30 <= 6) ; i$30 = (i$30 + 1) ) begin: genblk1_6_
  localparam integer i = 6;
  if(1) begin: genblk1
      assign  payload_dst[48 +: 8] = r_payload[r_rptr[6]][48 +: 8];
  end
 end
 genvar i$31; 
// pragma cva_vlog_forgen genblk1 
 for ( i$31 = 7 ; (i$31 <= 7) ; i$31 = (i$31 + 1) ) begin: genblk1_7_
  localparam integer i = 7;
  if(1) begin: genblk1
      assign  payload_dst[56 +: 8] = r_payload[r_rptr[7]][56 +: 8];
  end
 end
 genvar i$32; 
// pragma cva_vlog_forgen genblk1 
 for ( i$32 = 8 ; (i$32 <= 8) ; i$32 = (i$32 + 1) ) begin: genblk1_8_
  localparam integer i = 8;
  if(1) begin: genblk1
      assign  payload_dst[64 +: 8] = r_payload[r_rptr[8]][64 +: 8];
  end
 end
 genvar i$33; 
// pragma cva_vlog_forgen genblk1 
 for ( i$33 = 9 ; (i$33 <= 9) ; i$33 = (i$33 + 1) ) begin: genblk1_9_
  localparam integer i = 9;
  if(1) begin: genblk1
      assign  payload_dst[72 +: 8] = r_payload[r_rptr[9]][72 +: 8];
  end
 end
 genvar i$34; 
// pragma cva_vlog_forgen genblk1 
 for ( i$34 = 10 ; (i$34 <= 10) ; i$34 = (i$34 + 1) ) begin: genblk1_10_
  localparam integer i = 10;
  if(1) begin: genblk1
      assign  payload_dst[80 +: 2] = r_payload[r_rptr[10]][80 +: 2];
  end
 end
 always_comb 
  begin
   c_full = r_full;
   c_empty = r_empty;
   c_rptr = r_rptr;
   c_wptr = r_wptr;
   if ((valid_dst && ready_dst))
    begin
     if (( !r_full ))
      c_empty = 1'b1;
     else
      c_rptr = ( ~r_rptr );
     c_full = 1'b0;
    end
   if ((valid_src && ready_src))
    begin
     if (( !c_empty ))
      c_full = 1'b1;
     else
      c_rptr = ( ~r_rptr );
     c_empty = 1'b0;
     c_wptr = ( ~r_wptr );
    end
  end
 always_ff 
  @(posedge aclk or negedge aresetn)
   begin
    if (( !aresetn ))
     begin
      r_empty <= 1'b1;
      r_rptr <= 11'b11111111111;
      r_enable <= 1'b0;
      r_full <= 1'b0;
      r_wptr <= 1'b0;
     end
    else
     begin
      r_enable <= 1'b1;
      r_full <= c_full;
      r_empty <= c_empty;
      r_rptr <= c_rptr;
      r_wptr <= c_wptr;
     end
   end
 always_ff 
  @(posedge aclk)
   begin
    if ((valid_src && ready_src))
     r_payload[r_wptr] <= payload_src;
   end
end
endmodule

