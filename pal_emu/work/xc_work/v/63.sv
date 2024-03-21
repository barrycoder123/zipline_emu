// xc_work/v/63.sv
// /home/ibarry/Project-Zipline-master/rtl/common/cr_crc/cr_crc.v:33
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
module cr_crc(crc,clk,rst_n,data_in,data_valid,data_vbytes,enable,init_value,init);
parameter POLYNOMIAL = 32'b10000010111101100011101101111000;
parameter N_CRC_WIDTH = 32;
parameter N_DATA_WIDTH = 64;
localparam N_VBYTES_WIDTH = 8;
input  clk;
input  rst_n;
input  [63:0] data_in ;
input  data_valid;
input  [7:0] data_vbytes ;
input  enable;
input  [31:0] init_value ;
input  init;
output logic [31:0] crc ;
logic [31:0] crc_r ;
logic [7:0] data_vbits ;
wire  [0:31] _zy_simnet_crc_0_w$ ;
ixc_assign  #(32) _zz_strnp_0 (_zy_simnet_crc_0_w$,crc);

function  [31:0] mycrc;
 input reg [63:0] data ;
 input reg [31:0] crc ;
 input reg [6:0] bits ;
 logic [31:0] shifted_poly ;
 shifted_poly = 32'b10000010111101100011101101111000;
 begin
  data = (data ^ 64'(crc));
 end
 data = (64'(({2{data}} >> bits)) & ( ~(64'b1111111111111111111111111111111111111111111111111111111111111111 >> bits) ));
 mycrc = (32'(({2{crc}} >> bits)) & (32'b11111111111111111111111111111111 >> bits));
 begin:unmblk0
  int ii;
  for (ii = 63;(ii >= 0); ii = (ii - 1))
   begin
    begin
     mycrc = (mycrc ^ ({32{data[ii]}} & shifted_poly));
    end
    shifted_poly = (32'((shifted_poly >> 1)) ^ ({32{shifted_poly[0]}} & 32'b10000010111101100011101101111000));
   end
 end
 return mycrc;
endfunction

always_comb 
 begin
  if (enable)
   begin
    crc = ( ~crc_r );
   end
  else
   begin
    crc = 32'b0;
   end
 end
always_comb 
 begin
  case (data_vbytes)
   8'b01:
    data_vbits = 8'b01000;
   8'b011:
    data_vbits = 8'b010000;
   8'b0111:
    data_vbits = 8'b011000;
   8'b01111:
    data_vbits = 8'b0100000;
   8'b011111:
    data_vbits = 8'b0101000;
   8'b0111111:
    data_vbits = 8'b0110000;
   8'b01111111:
    data_vbits = 8'b0111000;
   8'b11111111:
    data_vbits = 8'b01000000;
   default:
    data_vbits = 8'b0;
  endcase
 end
always 
 @(posedge clk or negedge rst_n)
  begin
   if (( ~rst_n ))
    begin
     crc_r <= 32'b0;
    end
   else
    begin
     if (init)
      begin
       crc_r <= init_value;
      end
     else
      if (data_valid)
       begin
        crc_r <= mycrc(data_in,crc_r,data_vbits);
       end
    end
  end
endmodule

