`begin_keywords "1800-2012"
module cr_kme_kop_kdf_keyfilter ( keyfilter_cmdfifo_ack, keyfilter_upsizer_stall, hash_key_in, hash_key_in_valid, clk, rst_n, cmdfifo_keyfilter_valid, cmdfifo_keyfilter_cmd, upsizer_keyfilter_data, upsizer_keyfilter_valid, upsizer_keyfilter_eof, hash_key_in_stall );
typedef struct packed {logic [0 : 0] combo_mode ;} keyfilter_cmd_t ;
output logic keyfilter_cmdfifo_ack ;
output logic keyfilter_upsizer_stall ;
output logic [255 : 0] hash_key_in ;
output logic hash_key_in_valid ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic cmdfifo_keyfilter_valid ;
input keyfilter_cmd_t cmdfifo_keyfilter_cmd ;
input wire logic [255 : 0] upsizer_keyfilter_data ;
input wire logic upsizer_keyfilter_valid ;
input wire logic upsizer_keyfilter_eof ;
input wire logic hash_key_in_stall ;
endmodule
`end_keywords
/**portGenericDumpBegin keyfilter_cmd_t combo_mode keyfilter_cmdfifo_ack keyfilter_upsizer_stall hash_key_in hash_key_in_valid clk rst_n cmdfifo_keyfilter_valid cmdfifo_keyfilter_cmd upsizer_keyfilter_data upsizer_keyfilter_valid upsizer_keyfilter_eof hash_key_in_stall portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
