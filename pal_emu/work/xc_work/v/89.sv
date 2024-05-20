// xc_work/v/89.sv
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
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "full"
//pragma RTLNAME "full" "full"
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
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[0]"
//pragma RTLNAME "genblk1[0]" "genblk1_0_"
 if(1) begin: genblk1_0_
  localparam integer i = 0;
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[0].genblk1"
//pragma RTLNAME "genblk1" "genblk1"
  if(1) begin: genblk1
      ixc_assign  #(8) _zz_strnp_0 (payload_dst[0 +: 8],r_payload[r_rptr[0]][0 +: 8]);
  end
 end
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[1]"
//pragma RTLNAME "genblk1[1]" "genblk1_1_"
 if(1) begin: genblk1_1_
  localparam integer i = 1;
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[1].genblk1"
//pragma RTLNAME "genblk1" "genblk1"
  if(1) begin: genblk1
      ixc_assign  #(8) _zz_strnp_1 (payload_dst[8 +: 8],r_payload[r_rptr[1]][8 +: 8]);
  end
 end
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[2]"
//pragma RTLNAME "genblk1[2]" "genblk1_2_"
 if(1) begin: genblk1_2_
  localparam integer i = 2;
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[2].genblk1"
//pragma RTLNAME "genblk1" "genblk1"
  if(1) begin: genblk1
      ixc_assign  #(8) _zz_strnp_2 (payload_dst[16 +: 8],r_payload[r_rptr[2]][16 +: 8]);
  end
 end
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[3]"
//pragma RTLNAME "genblk1[3]" "genblk1_3_"
 if(1) begin: genblk1_3_
  localparam integer i = 3;
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[3].genblk1"
//pragma RTLNAME "genblk1" "genblk1"
  if(1) begin: genblk1
      ixc_assign  #(8) _zz_strnp_3 (payload_dst[24 +: 8],r_payload[r_rptr[3]][24 +: 8]);
  end
 end
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[4]"
//pragma RTLNAME "genblk1[4]" "genblk1_4_"
 if(1) begin: genblk1_4_
  localparam integer i = 4;
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[4].genblk1"
//pragma RTLNAME "genblk1" "genblk1"
  if(1) begin: genblk1
      ixc_assign  #(8) _zz_strnp_4 (payload_dst[32 +: 8],r_payload[r_rptr[4]][32 +: 8]);
  end
 end
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[5]"
//pragma RTLNAME "genblk1[5]" "genblk1_5_"
 if(1) begin: genblk1_5_
  localparam integer i = 5;
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[5].genblk1"
//pragma RTLNAME "genblk1" "genblk1"
  if(1) begin: genblk1
      ixc_assign  #(8) _zz_strnp_5 (payload_dst[40 +: 8],r_payload[r_rptr[5]][40 +: 8]);
  end
 end
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[6]"
//pragma RTLNAME "genblk1[6]" "genblk1_6_"
 if(1) begin: genblk1_6_
  localparam integer i = 6;
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[6].genblk1"
//pragma RTLNAME "genblk1" "genblk1"
  if(1) begin: genblk1
      ixc_assign  #(8) _zz_strnp_6 (payload_dst[48 +: 8],r_payload[r_rptr[6]][48 +: 8]);
  end
 end
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[7]"
//pragma RTLNAME "genblk1[7]" "genblk1_7_"
 if(1) begin: genblk1_7_
  localparam integer i = 7;
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[7].genblk1"
//pragma RTLNAME "genblk1" "genblk1"
  if(1) begin: genblk1
      ixc_assign  #(8) _zz_strnp_7 (payload_dst[56 +: 8],r_payload[r_rptr[7]][56 +: 8]);
  end
 end
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[8]"
//pragma RTLNAME "genblk1[8]" "genblk1_8_"
 if(1) begin: genblk1_8_
  localparam integer i = 8;
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[8].genblk1"
//pragma RTLNAME "genblk1" "genblk1"
  if(1) begin: genblk1
      ixc_assign  #(8) _zz_strnp_8 (payload_dst[64 +: 8],r_payload[r_rptr[8]][64 +: 8]);
  end
 end
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[9]"
//pragma RTLNAME "genblk1[9]" "genblk1_9_"
 if(1) begin: genblk1_9_
  localparam integer i = 9;
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[9].genblk1"
//pragma RTLNAME "genblk1" "genblk1"
  if(1) begin: genblk1
      ixc_assign  #(8) _zz_strnp_9 (payload_dst[72 +: 8],r_payload[r_rptr[9]][72 +: 8]);
  end
 end
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[10]"
//pragma RTLNAME "genblk1[10]" "genblk1_10_"
 if(1) begin: genblk1_10_
  localparam integer i = 10;
//pragma CVASTRPROP MODULE HDLICE cva_for_generate "full.genblk1[10].genblk1"
//pragma RTLNAME "genblk1" "genblk1"
  if(1) begin: genblk1
      ixc_assign  #(2) _zz_strnp_10 (payload_dst[80 +: 2],r_payload[r_rptr[10]][80 +: 2]);
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
  //pragma CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 full  "
  //pragma CVASTRPROP MODULE HDLICE cva_for_generate_1 "0 genblk1 0 10 "
  //pragma CVASTRPROP MODULE HDLICE cva_for_generate_2 "1 genblk1  "
endmodule

