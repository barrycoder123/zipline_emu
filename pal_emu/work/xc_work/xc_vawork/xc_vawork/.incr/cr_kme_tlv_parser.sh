`begin_keywords "1800-2012"
module cr_kme_tlv_parser ( stitcher_rd, parser_kimreader_valid, parser_kimreader_data, tlv_parser_idle, tlv_parser_int_tlv_start_pulse, clk, rst_n, disable_debug_cmd_q, always_validate_kim_ref, stitcher_out, stitcher_empty, kimreader_parser_ack );
typedef enum reg  [3 : 0] {KME_WORD0=4'b0,KME_DEBUG_KEYHDR=4'b01,KME_IVTWEAK=4'b010,KME_GUID=4'b011,KME_KIM=4'b0100,KME_DEK_CKV0=4'b0101,KME_DEK_CKV1=4'b0110,KME_DAK_CKV=4'b0111,KME_EIV=4'b1000,KME_DEK0=4'b1001,KME_DEK1=4'b1010,KME_ETAG=4'b1011,KME_AIV=4'b1100,KME_DAK=4'b1101,KME_ATAG=4'b1110,KME_ERROR=4'b1111} kme_internal_id ;
typedef struct packed {logic [0 : 0] sot ; logic [0 : 0] eoi ; logic [0 : 0] eot ; kme_internal_id id ; logic [63 : 0] tdata ;} kme_internal_t ;
typedef struct packed {logic tvalid ; logic tlast ; logic [0 : 0] tid ; logic [7 : 0] tstrb ; logic [7 : 0] tuser ; logic [63 : 0] tdata ;} axi4s_dp_bus_t ;
output logic stitcher_rd ;
output wire logic parser_kimreader_valid ;
output kme_internal_t parser_kimreader_data ;
output wire logic tlv_parser_idle ;
output wire logic tlv_parser_int_tlv_start_pulse ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic disable_debug_cmd_q ;
input wire logic always_validate_kim_ref ;
input axi4s_dp_bus_t stitcher_out ;
input wire logic stitcher_empty ;
input wire logic kimreader_parser_ack ;
endmodule
`end_keywords
/**portGenericDumpBegin kme_internal_id KME_WORD0 KME_DEBUG_KEYHDR KME_IVTWEAK KME_GUID KME_KIM KME_DEK_CKV0 KME_DEK_CKV1 KME_DAK_CKV KME_EIV KME_DEK0 KME_DEK1 KME_ETAG KME_AIV KME_DAK KME_ATAG KME_ERROR kme_internal_t sot eoi eot id tdata axi4s_dp_bus_t tvalid tlast tid tstrb tuser tdata stitcher_rd parser_kimreader_valid parser_kimreader_data tlv_parser_idle tlv_parser_int_tlv_start_pulse clk rst_n disable_debug_cmd_q always_validate_kim_ref stitcher_out stitcher_empty kimreader_parser_ack portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
