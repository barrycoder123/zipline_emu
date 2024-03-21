`begin_keywords "1800-2012"
module cr_kme_drng ( drng_health_fail, drng_seed_expired, drng_256_out, drng_valid, seed0_invalidate, seed1_invalidate, stat_drbg_reseed, drng_idle, clk, rst_n, drng_ack, seed0_valid, seed0_internal_state_key, seed0_internal_state_value, seed0_reseed_interval, seed1_valid, seed1_internal_state_key, seed1_internal_state_value, seed1_reseed_interval );
output logic drng_health_fail ;
output wire logic drng_seed_expired ;
output wire logic [127 : 0] drng_256_out ;
output wire logic drng_valid ;
output wire logic seed0_invalidate ;
output wire logic seed1_invalidate ;
output wire logic stat_drbg_reseed ;
output wire logic drng_idle ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic drng_ack ;
input wire logic seed0_valid ;
input wire logic [255 : 0] seed0_internal_state_key ;
input wire logic [127 : 0] seed0_internal_state_value ;
input wire logic [47 : 0] seed0_reseed_interval ;
input wire logic seed1_valid ;
input wire logic [255 : 0] seed1_internal_state_key ;
input wire logic [127 : 0] seed1_internal_state_value ;
input wire logic [47 : 0] seed1_reseed_interval ;
endmodule
`end_keywords
/**portGenericDumpBegin drng_health_fail drng_seed_expired drng_256_out drng_valid seed0_invalidate seed1_invalidate stat_drbg_reseed drng_idle clk rst_n drng_ack seed0_valid seed0_internal_state_key seed0_internal_state_value seed0_reseed_interval seed1_valid seed1_internal_state_key seed1_internal_state_value seed1_reseed_interval portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
