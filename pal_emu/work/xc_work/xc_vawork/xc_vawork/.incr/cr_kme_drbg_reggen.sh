`begin_keywords "1800-2012"
module cr_kme_drbg_reggen ( set_drbg_expired_int, kdf_drbg_ctrl, seed0_valid, seed0_internal_state_key, seed0_internal_state_value, seed0_reseed_interval, seed1_valid, seed1_internal_state_key, seed1_internal_state_value, seed1_reseed_interval, clk, rst_n, wr_stb, wr_data, reg_addr, o_kdf_drbg_ctrl, o_kdf_drbg_seed_0_reseed_interval_0, o_kdf_drbg_seed_0_reseed_interval_1, o_kdf_drbg_seed_0_state_key_127_96, o_kdf_drbg_seed_0_state_key_159_128, o_kdf_drbg_seed_0_state_key_191_160, o_kdf_drbg_seed_0_state_key_223_192, o_kdf_drbg_seed_0_state_key_255_224, o_kdf_drbg_seed_0_state_key_31_0, o_kdf_drbg_seed_0_state_key_63_32, o_kdf_drbg_seed_0_state_key_95_64, o_kdf_drbg_seed_0_state_value_127_96, o_kdf_drbg_seed_0_state_value_31_0, o_kdf_drbg_seed_0_state_value_63_32, o_kdf_drbg_seed_0_state_value_95_64, o_kdf_drbg_seed_1_reseed_interval_0, o_kdf_drbg_seed_1_reseed_interval_1, o_kdf_drbg_seed_1_state_key_127_96, o_kdf_drbg_seed_1_state_key_159_128, o_kdf_drbg_seed_1_state_key_191_160, o_kdf_drbg_seed_1_state_key_223_192, o_kdf_drbg_seed_1_state_key_255_224, o_kdf_drbg_seed_1_state_key_31_0, o_kdf_drbg_seed_1_state_key_63_32, o_kdf_drbg_seed_1_state_key_95_64, o_kdf_drbg_seed_1_state_value_127_96, o_kdf_drbg_seed_1_state_value_31_0, o_kdf_drbg_seed_1_state_value_63_32, o_kdf_drbg_seed_1_state_value_95_64, seed0_invalidate, seed1_invalidate );
output wire logic set_drbg_expired_int ;
output wire logic [1 : 0] kdf_drbg_ctrl ;
output logic seed0_valid ;
output wire logic [255 : 0] seed0_internal_state_key ;
output wire logic [127 : 0] seed0_internal_state_value ;
output wire logic [47 : 0] seed0_reseed_interval ;
output logic seed1_valid ;
output wire logic [255 : 0] seed1_internal_state_key ;
output wire logic [127 : 0] seed1_internal_state_value ;
output wire logic [47 : 0] seed1_reseed_interval ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic wr_stb ;
input wire logic [31 : 0] wr_data ;
input wire logic [10 : 0] reg_addr ;
input wire logic [1 : 0] o_kdf_drbg_ctrl ;
input wire logic [31 : 0] o_kdf_drbg_seed_0_reseed_interval_0 ;
input wire logic [15 : 0] o_kdf_drbg_seed_0_reseed_interval_1 ;
input wire logic [31 : 0] o_kdf_drbg_seed_0_state_key_127_96 ;
input wire logic [31 : 0] o_kdf_drbg_seed_0_state_key_159_128 ;
input wire logic [31 : 0] o_kdf_drbg_seed_0_state_key_191_160 ;
input wire logic [31 : 0] o_kdf_drbg_seed_0_state_key_223_192 ;
input wire logic [31 : 0] o_kdf_drbg_seed_0_state_key_255_224 ;
input wire logic [31 : 0] o_kdf_drbg_seed_0_state_key_31_0 ;
input wire logic [31 : 0] o_kdf_drbg_seed_0_state_key_63_32 ;
input wire logic [31 : 0] o_kdf_drbg_seed_0_state_key_95_64 ;
input wire logic [31 : 0] o_kdf_drbg_seed_0_state_value_127_96 ;
input wire logic [31 : 0] o_kdf_drbg_seed_0_state_value_31_0 ;
input wire logic [31 : 0] o_kdf_drbg_seed_0_state_value_63_32 ;
input wire logic [31 : 0] o_kdf_drbg_seed_0_state_value_95_64 ;
input wire logic [31 : 0] o_kdf_drbg_seed_1_reseed_interval_0 ;
input wire logic [15 : 0] o_kdf_drbg_seed_1_reseed_interval_1 ;
input wire logic [31 : 0] o_kdf_drbg_seed_1_state_key_127_96 ;
input wire logic [31 : 0] o_kdf_drbg_seed_1_state_key_159_128 ;
input wire logic [31 : 0] o_kdf_drbg_seed_1_state_key_191_160 ;
input wire logic [31 : 0] o_kdf_drbg_seed_1_state_key_223_192 ;
input wire logic [31 : 0] o_kdf_drbg_seed_1_state_key_255_224 ;
input wire logic [31 : 0] o_kdf_drbg_seed_1_state_key_31_0 ;
input wire logic [31 : 0] o_kdf_drbg_seed_1_state_key_63_32 ;
input wire logic [31 : 0] o_kdf_drbg_seed_1_state_key_95_64 ;
input wire logic [31 : 0] o_kdf_drbg_seed_1_state_value_127_96 ;
input wire logic [31 : 0] o_kdf_drbg_seed_1_state_value_31_0 ;
input wire logic [31 : 0] o_kdf_drbg_seed_1_state_value_63_32 ;
input wire logic [31 : 0] o_kdf_drbg_seed_1_state_value_95_64 ;
input wire logic seed0_invalidate ;
input wire logic seed1_invalidate ;
endmodule
`end_keywords
/**portGenericDumpBegin set_drbg_expired_int kdf_drbg_ctrl seed0_valid seed0_internal_state_key seed0_internal_state_value seed0_reseed_interval seed1_valid seed1_internal_state_key seed1_internal_state_value seed1_reseed_interval clk rst_n wr_stb wr_data reg_addr o_kdf_drbg_ctrl o_kdf_drbg_seed_0_reseed_interval_0 o_kdf_drbg_seed_0_reseed_interval_1 o_kdf_drbg_seed_0_state_key_127_96 o_kdf_drbg_seed_0_state_key_159_128 o_kdf_drbg_seed_0_state_key_191_160 o_kdf_drbg_seed_0_state_key_223_192 o_kdf_drbg_seed_0_state_key_255_224 o_kdf_drbg_seed_0_state_key_31_0 o_kdf_drbg_seed_0_state_key_63_32 o_kdf_drbg_seed_0_state_key_95_64 o_kdf_drbg_seed_0_state_value_127_96 o_kdf_drbg_seed_0_state_value_31_0 o_kdf_drbg_seed_0_state_value_63_32 o_kdf_drbg_seed_0_state_value_95_64 o_kdf_drbg_seed_1_reseed_interval_0 o_kdf_drbg_seed_1_reseed_interval_1 o_kdf_drbg_seed_1_state_key_127_96 o_kdf_drbg_seed_1_state_key_159_128 o_kdf_drbg_seed_1_state_key_191_160 o_kdf_drbg_seed_1_state_key_223_192 o_kdf_drbg_seed_1_state_key_255_224 o_kdf_drbg_seed_1_state_key_31_0 o_kdf_drbg_seed_1_state_key_63_32 o_kdf_drbg_seed_1_state_key_95_64 o_kdf_drbg_seed_1_state_value_127_96 o_kdf_drbg_seed_1_state_value_31_0 o_kdf_drbg_seed_1_state_value_63_32 o_kdf_drbg_seed_1_state_value_95_64 seed0_invalidate seed1_invalidate portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
