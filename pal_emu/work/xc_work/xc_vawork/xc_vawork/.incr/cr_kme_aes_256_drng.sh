`begin_keywords "1800-2012"
module cr_kme_aes_256_drng ( seed_expired, drng_valid, drng_256_out, drng_fifo_overflow, drng_fifo_underflow, drng_idle, start, seed, seed_life, drng_ack, clk, rst_n );
output logic seed_expired ;
output wire logic drng_valid ;
output wire logic [127 : 0] drng_256_out ;
output wire logic drng_fifo_overflow ;
output wire logic drng_fifo_underflow ;
output logic drng_idle ;
input wire logic start ;
input wire logic [383 : 0] seed ;
input wire logic [47 : 0] seed_life ;
input wire logic drng_ack ;
input wire logic clk ;
input wire logic rst_n ;
endmodule
`end_keywords
/**portGenericDumpBegin seed_expired drng_valid drng_256_out drng_fifo_overflow drng_fifo_underflow drng_idle start seed seed_life drng_ack clk rst_n portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
