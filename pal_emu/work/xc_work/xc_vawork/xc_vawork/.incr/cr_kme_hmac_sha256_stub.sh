`begin_keywords "1800-2012"
module cr_kme_hmac_sha256_stub ( hash_cmdfifo_ack, hash_keyfifo_ack, hash_len_data_out_ack, hash_in_stall, sha_tag_data, sha_tag_valid, sha_tag_last, clk, rst_n, scan_en, scan_mode, scan_rst_n, cmdfifo_hash_valid, cmdfifo_hash_skip, cmdfifo_hash_small_size, keyfifo_hash_data, keyfifo_hash_valid, hash_len_data_out, hash_len_data_out_valid, in_hash_valid, in_hash_eof, in_hash_eoc, in_hash_num_bytes, in_hash_data, sha_tag_stall );
output wire logic hash_cmdfifo_ack ;
output wire logic hash_keyfifo_ack ;
output wire logic hash_len_data_out_ack ;
output wire logic hash_in_stall ;
output wire logic [127 : 0] sha_tag_data ;
output wire logic sha_tag_valid ;
output wire logic sha_tag_last ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic scan_en ;
input wire logic scan_mode ;
input wire logic scan_rst_n ;
input wire logic cmdfifo_hash_valid ;
input wire logic cmdfifo_hash_skip ;
input wire logic cmdfifo_hash_small_size ;
input wire logic [255 : 0] keyfifo_hash_data ;
input wire logic keyfifo_hash_valid ;
input wire logic [31 : 0] hash_len_data_out ;
input wire logic hash_len_data_out_valid ;
input wire logic in_hash_valid ;
input wire logic in_hash_eof ;
input wire logic in_hash_eoc ;
input wire logic [4 : 0] in_hash_num_bytes ;
input wire logic [127 : 0] in_hash_data ;
input wire logic sha_tag_stall ;
endmodule
`end_keywords
/**portGenericDumpBegin hash_cmdfifo_ack hash_keyfifo_ack hash_len_data_out_ack hash_in_stall sha_tag_data sha_tag_valid sha_tag_last clk rst_n scan_en scan_mode scan_rst_n cmdfifo_hash_valid cmdfifo_hash_skip cmdfifo_hash_small_size keyfifo_hash_data keyfifo_hash_valid hash_len_data_out hash_len_data_out_valid in_hash_valid in_hash_eof in_hash_eoc in_hash_num_bytes in_hash_data sha_tag_stall portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
