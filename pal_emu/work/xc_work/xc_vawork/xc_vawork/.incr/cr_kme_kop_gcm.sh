`begin_keywords "1800-2012"
module cr_kme_kop_gcm ( set_gcm_tag_fail_int, gcm_cmdfifo_ack, gcm_upsizer_stall, gcm_tag_data_out_ack, gcm_kdf_valid, gcm_kdf_eof, gcm_kdf_data, gcm_status_data_in_valid, gcm_status_data_in, clk, rst_n, cmdfifo_gcm_valid, cmdfifo_gcm_cmd, upsizer_gcm_valid, upsizer_gcm_eof, upsizer_gcm_data, gcm_tag_data_out, gcm_tag_data_out_valid, kdf_gcm_stall, gcm_status_data_in_stall );
typedef struct packed {logic [0 : 0] tag_mismatch ;} gcm_status_t ;
typedef enum reg  [2 : 0] {PT_CKV=3'b0,PT_KEY_BLOB=3'b01,DECRYPT_DEK256=3'b010,DECRYPT_DEK512=3'b011,DECRYPT_DAK=3'b100,DECRYPT_DEK256_COMB=3'b101,DECRYPT_DEK512_COMB=3'b110,DECRYPT_DAK_COMB=3'b111} gcm_op_e ;
typedef struct packed {logic [255 : 0] key0 ; logic [255 : 0] key1 ; logic [95 : 0] iv ; gcm_op_e op ;} gcm_cmd_t ;
output wire logic set_gcm_tag_fail_int ;
output logic gcm_cmdfifo_ack ;
output logic gcm_upsizer_stall ;
output logic gcm_tag_data_out_ack ;
output logic gcm_kdf_valid ;
output logic gcm_kdf_eof ;
output logic [127 : 0] gcm_kdf_data ;
output logic gcm_status_data_in_valid ;
output gcm_status_t gcm_status_data_in ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic cmdfifo_gcm_valid ;
input gcm_cmd_t cmdfifo_gcm_cmd ;
input wire logic upsizer_gcm_valid ;
input wire logic upsizer_gcm_eof ;
input wire logic [127 : 0] upsizer_gcm_data ;
input wire logic [95 : 0] gcm_tag_data_out ;
input wire logic gcm_tag_data_out_valid ;
input wire logic kdf_gcm_stall ;
input wire logic gcm_status_data_in_stall ;
endmodule
`end_keywords
/**portGenericDumpBegin gcm_status_t tag_mismatch gcm_op_e PT_CKV PT_KEY_BLOB DECRYPT_DEK256 DECRYPT_DEK512 DECRYPT_DAK DECRYPT_DEK256_COMB DECRYPT_DEK512_COMB DECRYPT_DAK_COMB gcm_cmd_t key0 key1 iv op set_gcm_tag_fail_int gcm_cmdfifo_ack gcm_upsizer_stall gcm_tag_data_out_ack gcm_kdf_valid gcm_kdf_eof gcm_kdf_data gcm_status_data_in_valid gcm_status_data_in clk rst_n cmdfifo_gcm_valid cmdfifo_gcm_cmd upsizer_gcm_valid upsizer_gcm_eof upsizer_gcm_data gcm_tag_data_out gcm_tag_data_out_valid kdf_gcm_stall gcm_status_data_in_stall portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
