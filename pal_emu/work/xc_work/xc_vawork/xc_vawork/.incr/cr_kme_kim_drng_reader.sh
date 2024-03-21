`begin_keywords "1800-2012"
module cr_kme_kim_drng_reader ( kimreader_parser_ack, kimreader_ckvreader_valid, kimreader_ckvreader_data, drng_ack, kim_rd, kim_addr, stat_req_with_expired_seed, stat_aux_key_type_0, stat_aux_key_type_1, stat_aux_key_type_2, stat_aux_key_type_3, stat_aux_key_type_4, stat_aux_key_type_5, stat_aux_key_type_6, stat_aux_key_type_7, stat_aux_key_type_8, stat_aux_key_type_9, stat_aux_key_type_10, stat_aux_key_type_11, stat_aux_key_type_12, stat_aux_key_type_13, stat_aux_cmd_with_vf_pf_fail, clk, rst_n, parser_kimreader_valid, parser_kimreader_data, ckvreader_kimreader_ack, drng_seed_expired, drng_health_fail, drng_256_out, drng_valid, kim_dout, kim_mbe, disable_unencrypted_keys );
typedef enum reg  [3 : 0] {KME_WORD0=4'b0,KME_DEBUG_KEYHDR=4'b01,KME_IVTWEAK=4'b010,KME_GUID=4'b011,KME_KIM=4'b0100,KME_DEK_CKV0=4'b0101,KME_DEK_CKV1=4'b0110,KME_DAK_CKV=4'b0111,KME_EIV=4'b1000,KME_DEK0=4'b1001,KME_DEK1=4'b1010,KME_ETAG=4'b1011,KME_AIV=4'b1100,KME_DAK=4'b1101,KME_ATAG=4'b1110,KME_ERROR=4'b1111} kme_internal_id ;
typedef struct packed {logic [0 : 0] sot ; logic [0 : 0] eoi ; logic [0 : 0] eot ; kme_internal_id id ; logic [63 : 0] tdata ;} kme_internal_t ;
typedef struct packed {logic [0 : 0] valid ; logic [2 : 0] label_index ; logic [1 : 0] ckv_length ; logic [14 : 0] ckv_pointer ; logic [3 : 0] pf_num ; logic [11 : 0] vf_num ; logic [0 : 0] vf_valid ;} kim_entry_t ;
output logic kimreader_parser_ack ;
output logic kimreader_ckvreader_valid ;
output kme_internal_t kimreader_ckvreader_data ;
output logic drng_ack ;
output logic kim_rd ;
output logic [13 : 0] kim_addr ;
output logic stat_req_with_expired_seed ;
output logic stat_aux_key_type_0 ;
output logic stat_aux_key_type_1 ;
output logic stat_aux_key_type_2 ;
output logic stat_aux_key_type_3 ;
output logic stat_aux_key_type_4 ;
output logic stat_aux_key_type_5 ;
output logic stat_aux_key_type_6 ;
output logic stat_aux_key_type_7 ;
output logic stat_aux_key_type_8 ;
output logic stat_aux_key_type_9 ;
output logic stat_aux_key_type_10 ;
output logic stat_aux_key_type_11 ;
output logic stat_aux_key_type_12 ;
output logic stat_aux_key_type_13 ;
output logic stat_aux_cmd_with_vf_pf_fail ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic parser_kimreader_valid ;
input kme_internal_t parser_kimreader_data ;
input wire logic ckvreader_kimreader_ack ;
input wire logic drng_seed_expired ;
input wire logic drng_health_fail ;
input wire logic [127 : 0] drng_256_out ;
input wire logic drng_valid ;
input kim_entry_t kim_dout ;
input wire logic kim_mbe ;
input wire logic disable_unencrypted_keys ;
endmodule
`end_keywords
/**portGenericDumpBegin kme_internal_id KME_WORD0 KME_DEBUG_KEYHDR KME_IVTWEAK KME_GUID KME_KIM KME_DEK_CKV0 KME_DEK_CKV1 KME_DAK_CKV KME_EIV KME_DEK0 KME_DEK1 KME_ETAG KME_AIV KME_DAK KME_ATAG KME_ERROR kme_internal_t sot eoi eot id tdata kim_entry_t valid label_index ckv_length ckv_pointer pf_num vf_num vf_valid kimreader_parser_ack kimreader_ckvreader_valid kimreader_ckvreader_data drng_ack kim_rd kim_addr stat_req_with_expired_seed stat_aux_key_type_0 stat_aux_key_type_1 stat_aux_key_type_2 stat_aux_key_type_3 stat_aux_key_type_4 stat_aux_key_type_5 stat_aux_key_type_6 stat_aux_key_type_7 stat_aux_key_type_8 stat_aux_key_type_9 stat_aux_key_type_10 stat_aux_key_type_11 stat_aux_key_type_12 stat_aux_key_type_13 stat_aux_cmd_with_vf_pf_fail clk rst_n parser_kimreader_valid parser_kimreader_data ckvreader_kimreader_ack drng_seed_expired drng_health_fail drng_256_out drng_valid kim_dout kim_mbe disable_unencrypted_keys portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
