`begin_keywords "1800-2012"
module cr_kme_ckv_reader ( ckvreader_kimreader_ack, ckvreader_kopassigner_valid, ckvreader_kopassigner_data, ckv_rd, ckv_addr, clk, rst_n, kimreader_ckvreader_valid, kimreader_ckvreader_data, kopassigner_ckvreader_ack, ckv_dout, ckv_mbe );
typedef enum reg  [3 : 0] {KME_WORD0=4'b0,KME_DEBUG_KEYHDR=4'b01,KME_IVTWEAK=4'b010,KME_GUID=4'b011,KME_KIM=4'b0100,KME_DEK_CKV0=4'b0101,KME_DEK_CKV1=4'b0110,KME_DAK_CKV=4'b0111,KME_EIV=4'b1000,KME_DEK0=4'b1001,KME_DEK1=4'b1010,KME_ETAG=4'b1011,KME_AIV=4'b1100,KME_DAK=4'b1101,KME_ATAG=4'b1110,KME_ERROR=4'b1111} kme_internal_id ;
typedef struct packed {logic [0 : 0] sot ; logic [0 : 0] eoi ; logic [0 : 0] eot ; kme_internal_id id ; logic [63 : 0] tdata ;} kme_internal_t ;
output logic ckvreader_kimreader_ack ;
output logic ckvreader_kopassigner_valid ;
output kme_internal_t ckvreader_kopassigner_data ;
output logic ckv_rd ;
output logic [14 : 0] ckv_addr ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic kimreader_ckvreader_valid ;
input kme_internal_t kimreader_ckvreader_data ;
input wire logic kopassigner_ckvreader_ack ;
input wire logic [63 : 0] ckv_dout ;
input wire logic ckv_mbe ;
endmodule
`end_keywords
/**portGenericDumpBegin kme_internal_id KME_WORD0 KME_DEBUG_KEYHDR KME_IVTWEAK KME_GUID KME_KIM KME_DEK_CKV0 KME_DEK_CKV1 KME_DAK_CKV KME_EIV KME_DEK0 KME_DEK1 KME_ETAG KME_AIV KME_DAK KME_ATAG KME_ERROR kme_internal_t sot eoi eot id tdata ckvreader_kimreader_ack ckvreader_kopassigner_valid ckvreader_kopassigner_data ckv_rd ckv_addr clk rst_n kimreader_ckvreader_valid kimreader_ckvreader_data kopassigner_ckvreader_ack ckv_dout ckv_mbe portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
