`begin_keywords "1800-2012"
module cr_kme_kop_tlv_inspector_xcm70 ( kme_internal_out_ack, gcm_cmd_in, gcm_cmd_in_valid, gcm_tag_data_in, gcm_tag_data_in_valid, inspector_upsizer_valid, inspector_upsizer_eof, inspector_upsizer_data, keyfilter_cmd_in, keyfilter_cmd_in_valid, kdfstream_cmd_in, kdfstream_cmd_in_valid, kdf_cmd_in, kdf_cmd_in_valid, tlv_sb_data_in, tlv_sb_data_in_valid, clk, rst_n, labels, kme_internal_out, kme_internal_out_valid, gcm_cmd_in_stall, gcm_tag_data_in_stall, upsizer_inspector_stall, keyfilter_cmd_in_stall, kdfstream_cmd_in_stall, kdf_cmd_in_stall, tlv_sb_data_in_stall );
parameter CCEIP_ENCRYPT_KOP = 1 ;
typedef enum reg  [2 : 0] {PT_CKV=3'b0,PT_KEY_BLOB=3'b01,DECRYPT_DEK256=3'b010,DECRYPT_DEK512=3'b011,DECRYPT_DAK=3'b100,DECRYPT_DEK256_COMB=3'b101,DECRYPT_DEK512_COMB=3'b110,DECRYPT_DAK_COMB=3'b111} gcm_op_e ;
typedef struct packed {logic [255 : 0] key0 ; logic [255 : 0] key1 ; logic [95 : 0] iv ; gcm_op_e op ;} gcm_cmd_t ;
typedef struct packed {logic [0 : 0] combo_mode ;} keyfilter_cmd_t ;
typedef struct packed {logic [0 : 0] combo_mode ; logic [0 : 0] skip ; logic [255 : 0] guid ; logic [2 : 0] label_index ; logic [1 : 0] num_iter ;} kdfstream_cmd_t ;
typedef enum reg  [0 : 0] {NOOP=0,KDF=1} aux_key_op_e ;
typedef struct packed {logic [0 : 0] kdf_dek_iter ; logic [0 : 0] combo_mode ; aux_key_op_e dek_key_op ; aux_key_op_e dak_key_op ;} kdf_cmd_t ;
typedef struct packed {logic [0 : 0] guid_size ; logic [5 : 0] label_size ; logic [255 : 0] label ; logic [0 : 0] delimiter_valid ; logic [7 : 0] delimiter ;} label_t ;
typedef enum reg  [3 : 0] {KME_WORD0=4'b0,KME_DEBUG_KEYHDR=4'b01,KME_IVTWEAK=4'b010,KME_GUID=4'b011,KME_KIM=4'b0100,KME_DEK_CKV0=4'b0101,KME_DEK_CKV1=4'b0110,KME_DAK_CKV=4'b0111,KME_EIV=4'b1000,KME_DEK0=4'b1001,KME_DEK1=4'b1010,KME_ETAG=4'b1011,KME_AIV=4'b1100,KME_DAK=4'b1101,KME_ATAG=4'b1110,KME_ERROR=4'b1111} kme_internal_id ;
typedef struct packed {logic [0 : 0] sot ; logic [0 : 0] eoi ; logic [0 : 0] eot ; kme_internal_id id ; logic [63 : 0] tdata ;} kme_internal_t ;
output logic kme_internal_out_ack ;
output gcm_cmd_t gcm_cmd_in ;
output logic gcm_cmd_in_valid ;
output logic [95 : 0] gcm_tag_data_in ;
output logic gcm_tag_data_in_valid ;
output logic inspector_upsizer_valid ;
output logic inspector_upsizer_eof ;
output logic [63 : 0] inspector_upsizer_data ;
output keyfilter_cmd_t keyfilter_cmd_in ;
output logic keyfilter_cmd_in_valid ;
output kdfstream_cmd_t kdfstream_cmd_in ;
output logic kdfstream_cmd_in_valid ;
output kdf_cmd_t kdf_cmd_in ;
output logic kdf_cmd_in_valid ;
output logic [63 : 0] tlv_sb_data_in ;
output logic tlv_sb_data_in_valid ;
input wire logic clk ;
input wire logic rst_n ;
input label_t[7 : 0] labels ;
input kme_internal_t kme_internal_out ;
input wire logic kme_internal_out_valid ;
input wire logic gcm_cmd_in_stall ;
input wire logic gcm_tag_data_in_stall ;
input wire logic upsizer_inspector_stall ;
input wire logic keyfilter_cmd_in_stall ;
input wire logic kdfstream_cmd_in_stall ;
input wire logic kdf_cmd_in_stall ;
input wire logic tlv_sb_data_in_stall ;
endmodule
`end_keywords
/**portGenericDumpBegin CCEIP_ENCRYPT_KOP gcm_op_e PT_CKV PT_KEY_BLOB DECRYPT_DEK256 DECRYPT_DEK512 DECRYPT_DAK DECRYPT_DEK256_COMB DECRYPT_DEK512_COMB DECRYPT_DAK_COMB gcm_cmd_t key0 key1 iv op keyfilter_cmd_t combo_mode kdfstream_cmd_t combo_mode skip guid label_index num_iter aux_key_op_e NOOP KDF kdf_cmd_t kdf_dek_iter combo_mode dek_key_op dak_key_op label_t guid_size label_size DUMMY1 delimiter_valid delimiter DUMMY2 kme_internal_id KME_WORD0 KME_DEBUG_KEYHDR KME_IVTWEAK KME_GUID KME_KIM KME_DEK_CKV0 KME_DEK_CKV1 KME_DAK_CKV KME_EIV KME_DEK0 KME_DEK1 KME_ETAG KME_AIV KME_DAK KME_ATAG KME_ERROR kme_internal_t sot eoi eot id tdata kme_internal_out_ack gcm_cmd_in gcm_cmd_in_valid gcm_tag_data_in gcm_tag_data_in_valid inspector_upsizer_valid inspector_upsizer_eof inspector_upsizer_data keyfilter_cmd_in keyfilter_cmd_in_valid kdfstream_cmd_in kdfstream_cmd_in_valid kdf_cmd_in kdf_cmd_in_valid tlv_sb_data_in tlv_sb_data_in_valid clk rst_n labels kme_internal_out kme_internal_out_valid gcm_cmd_in_stall gcm_tag_data_in_stall upsizer_inspector_stall keyfilter_cmd_in_stall kdfstream_cmd_in_stall kdf_cmd_in_stall tlv_sb_data_in_stall portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
