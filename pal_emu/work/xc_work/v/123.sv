// xc_work/v/123.sv
// /home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_drbg_reggen.v:18
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
module cr_kme_drbg_reggen(set_drbg_expired_int,kdf_drbg_ctrl,seed0_valid,seed0_internal_state_key,seed0_internal_state_value,seed0_reseed_interval,seed1_valid,seed1_internal_state_key,seed1_internal_state_value,seed1_reseed_interval,
clk,rst_n,wr_stb,wr_data,reg_addr,o_kdf_drbg_ctrl,o_kdf_drbg_seed_0_reseed_interval_0,o_kdf_drbg_seed_0_reseed_interval_1,o_kdf_drbg_seed_0_state_key_127_96,o_kdf_drbg_seed_0_state_key_159_128,o_kdf_drbg_seed_0_state_key_191_160,o_kdf_drbg_seed_0_state_key_223_192,
o_kdf_drbg_seed_0_state_key_255_224,o_kdf_drbg_seed_0_state_key_31_0,o_kdf_drbg_seed_0_state_key_63_32,o_kdf_drbg_seed_0_state_key_95_64,o_kdf_drbg_seed_0_state_value_127_96,o_kdf_drbg_seed_0_state_value_31_0,o_kdf_drbg_seed_0_state_value_63_32,o_kdf_drbg_seed_0_state_value_95_64,o_kdf_drbg_seed_1_reseed_interval_0,o_kdf_drbg_seed_1_reseed_interval_1,o_kdf_drbg_seed_1_state_key_127_96,o_kdf_drbg_seed_1_state_key_159_128,
o_kdf_drbg_seed_1_state_key_191_160,o_kdf_drbg_seed_1_state_key_223_192,o_kdf_drbg_seed_1_state_key_255_224,o_kdf_drbg_seed_1_state_key_31_0,o_kdf_drbg_seed_1_state_key_63_32,o_kdf_drbg_seed_1_state_key_95_64,o_kdf_drbg_seed_1_state_value_127_96,o_kdf_drbg_seed_1_state_value_31_0,o_kdf_drbg_seed_1_state_value_63_32,o_kdf_drbg_seed_1_state_value_95_64,seed0_invalidate,seed1_invalidate);
// synopsys translate_off
import cr_kmePKG::* ;
// synopsys translate_on
import cr_kme_regfilePKG::* ;
input  clk;
input  rst_n;
output  set_drbg_expired_int;
input  wr_stb;
input  [31:0] wr_data ;
input  [10:0] reg_addr ;
output  [1:0] kdf_drbg_ctrl ;
input  [1:0] o_kdf_drbg_ctrl ;
input  [31:0] o_kdf_drbg_seed_0_reseed_interval_0 ;
input  [15:0] o_kdf_drbg_seed_0_reseed_interval_1 ;
input  [31:0] o_kdf_drbg_seed_0_state_key_127_96 ;
input  [31:0] o_kdf_drbg_seed_0_state_key_159_128 ;
input  [31:0] o_kdf_drbg_seed_0_state_key_191_160 ;
input  [31:0] o_kdf_drbg_seed_0_state_key_223_192 ;
input  [31:0] o_kdf_drbg_seed_0_state_key_255_224 ;
input  [31:0] o_kdf_drbg_seed_0_state_key_31_0 ;
input  [31:0] o_kdf_drbg_seed_0_state_key_63_32 ;
input  [31:0] o_kdf_drbg_seed_0_state_key_95_64 ;
input  [31:0] o_kdf_drbg_seed_0_state_value_127_96 ;
input  [31:0] o_kdf_drbg_seed_0_state_value_31_0 ;
input  [31:0] o_kdf_drbg_seed_0_state_value_63_32 ;
input  [31:0] o_kdf_drbg_seed_0_state_value_95_64 ;
input  [31:0] o_kdf_drbg_seed_1_reseed_interval_0 ;
input  [15:0] o_kdf_drbg_seed_1_reseed_interval_1 ;
input  [31:0] o_kdf_drbg_seed_1_state_key_127_96 ;
input  [31:0] o_kdf_drbg_seed_1_state_key_159_128 ;
input  [31:0] o_kdf_drbg_seed_1_state_key_191_160 ;
input  [31:0] o_kdf_drbg_seed_1_state_key_223_192 ;
input  [31:0] o_kdf_drbg_seed_1_state_key_255_224 ;
input  [31:0] o_kdf_drbg_seed_1_state_key_31_0 ;
input  [31:0] o_kdf_drbg_seed_1_state_key_63_32 ;
input  [31:0] o_kdf_drbg_seed_1_state_key_95_64 ;
input  [31:0] o_kdf_drbg_seed_1_state_value_127_96 ;
input  [31:0] o_kdf_drbg_seed_1_state_value_31_0 ;
input  [31:0] o_kdf_drbg_seed_1_state_value_63_32 ;
input  [31:0] o_kdf_drbg_seed_1_state_value_95_64 ;
output reg seed0_valid;
output  [255:0] seed0_internal_state_key ;
output  [127:0] seed0_internal_state_value ;
output  [47:0] seed0_reseed_interval ;
output reg seed1_valid;
output  [255:0] seed1_internal_state_key ;
output  [127:0] seed1_internal_state_value ;
output  [47:0] seed1_reseed_interval ;
input  seed0_invalidate;
input  seed1_invalidate;
wire  _zy_simnet_seed0_valid_0_w$;
wire  _zy_simnet_seed1_valid_1_w$;
assign  set_drbg_expired_int = ((seed0_valid & seed0_invalidate) | (seed1_valid & seed1_invalidate));
ixc_assign  #(2) _zz_strnp_0 (kdf_drbg_ctrl,{seed1_valid,seed0_valid});
ixc_assign  #(256) _zz_strnp_1 (seed0_internal_state_key,{o_kdf_drbg_seed_0_state_key_255_224,o_kdf_drbg_seed_0_state_key_223_192,o_kdf_drbg_seed_0_state_key_191_160,o_kdf_drbg_seed_0_state_key_159_128,o_kdf_drbg_seed_0_state_key_127_96,o_kdf_drbg_seed_0_state_key_95_64,o_kdf_drbg_seed_0_state_key_63_32,o_kdf_drbg_seed_0_state_key_31_0});
ixc_assign  #(128) _zz_strnp_2 (seed0_internal_state_value,{o_kdf_drbg_seed_0_state_value_127_96,o_kdf_drbg_seed_0_state_value_95_64,o_kdf_drbg_seed_0_state_value_63_32,o_kdf_drbg_seed_0_state_value_31_0});
ixc_assign  #(48) _zz_strnp_3 (seed0_reseed_interval,{o_kdf_drbg_seed_0_reseed_interval_1,o_kdf_drbg_seed_0_reseed_interval_0});
ixc_assign  #(256) _zz_strnp_4 (seed1_internal_state_key,{o_kdf_drbg_seed_1_state_key_255_224,o_kdf_drbg_seed_1_state_key_223_192,o_kdf_drbg_seed_1_state_key_191_160,o_kdf_drbg_seed_1_state_key_159_128,o_kdf_drbg_seed_1_state_key_127_96,o_kdf_drbg_seed_1_state_key_95_64,o_kdf_drbg_seed_1_state_key_63_32,o_kdf_drbg_seed_1_state_key_31_0});
ixc_assign  #(128) _zz_strnp_5 (seed1_internal_state_value,{o_kdf_drbg_seed_1_state_value_127_96,o_kdf_drbg_seed_1_state_value_95_64,o_kdf_drbg_seed_1_state_value_63_32,o_kdf_drbg_seed_1_state_value_31_0});
ixc_assign  #(48) _zz_strnp_6 (seed1_reseed_interval,{o_kdf_drbg_seed_1_reseed_interval_1,o_kdf_drbg_seed_1_reseed_interval_0});
ixc_assign  #(1) _zz_strnp_7 (_zy_simnet_seed0_valid_0_w$,seed0_valid);
ixc_assign  #(1) _zz_strnp_8 (_zy_simnet_seed1_valid_1_w$,seed1_valid);
always_ff 
 @(posedge clk or negedge rst_n)
  begin
   if (( !rst_n ))
    begin
     seed0_valid <= 1'b0;
    end
   else
    if (seed0_invalidate)
     begin
      seed0_valid <= 1'b0;
     end
    else
     if (wr_stb)
      begin
       if ((reg_addr == 11'b01100001000))
        begin
         seed0_valid <= wr_data[0];
        end
      end
  end
always_ff 
 @(posedge clk or negedge rst_n)
  begin
   if (( !rst_n ))
    begin
     seed1_valid <= 1'b0;
    end
   else
    if (seed1_invalidate)
     begin
      seed1_valid <= 1'b0;
     end
    else
     if (wr_stb)
      begin
       if ((reg_addr == 11'b01100001000))
        begin
         seed1_valid <= wr_data[1];
        end
      end
  end
endmodule

