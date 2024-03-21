`begin_keywords "1800-2012"
module cr_kme_kop_kdf_stream_gen ( kdfstream_cmdfifo_ack, cmdfifo_hash_valid, cmdfifo_hash_skip, cmdfifo_hash_small_size, hash_len_data_out, hash_len_data_out_valid, in_hash_valid, in_hash_eof, in_hash_eoc, in_hash_num_bytes, in_hash_data, clk, rst_n, cmdfifo_kdfstream_valid, cmdfifo_kdfstream_cmd, labels, hash_cmdfifo_ack, hash_len_data_out_ack, hash_in_stall, kdf_test_key_size, kdf_test_mode_en );
typedef struct packed {logic [0 : 0] combo_mode ; logic [0 : 0] skip ; logic [255 : 0] guid ; logic [2 : 0] label_index ; logic [1 : 0] num_iter ;} kdfstream_cmd_t ;
typedef struct packed {logic [0 : 0] guid_size ; logic [5 : 0] label_size ; logic [255 : 0] label ; logic [0 : 0] delimiter_valid ; logic [7 : 0] delimiter ;} label_t ;
output logic kdfstream_cmdfifo_ack ;
output logic cmdfifo_hash_valid ;
output logic cmdfifo_hash_skip ;
output logic cmdfifo_hash_small_size ;
output logic [31 : 0] hash_len_data_out ;
output logic hash_len_data_out_valid ;
output logic in_hash_valid ;
output logic in_hash_eof ;
output logic in_hash_eoc ;
output logic [4 : 0] in_hash_num_bytes ;
output logic [127 : 0] in_hash_data ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic cmdfifo_kdfstream_valid ;
input kdfstream_cmd_t cmdfifo_kdfstream_cmd ;
input label_t[7 : 0] labels ;
input wire logic hash_cmdfifo_ack ;
input wire logic hash_len_data_out_ack ;
input wire logic hash_in_stall ;
input wire logic [31 : 0] kdf_test_key_size ;
input wire logic kdf_test_mode_en ;
endmodule
`end_keywords
/**portGenericDumpBegin kdfstream_cmd_t combo_mode skip guid label_index num_iter label_t guid_size label_size DUMMY1 delimiter_valid delimiter DUMMY2 kdfstream_cmdfifo_ack cmdfifo_hash_valid cmdfifo_hash_skip cmdfifo_hash_small_size hash_len_data_out hash_len_data_out_valid in_hash_valid in_hash_eof in_hash_eoc in_hash_num_bytes in_hash_data clk rst_n cmdfifo_kdfstream_valid cmdfifo_kdfstream_cmd labels hash_cmdfifo_ack hash_len_data_out_ack hash_in_stall kdf_test_key_size kdf_test_mode_en portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
