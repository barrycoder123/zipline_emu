`begin_keywords "1800-2012"
module cr_kme_kop_xcm68 ( kme_internal_out_ack, key_tlv_ob_wr, key_tlv_ob_tlv, set_gcm_tag_fail_int, clk, rst_n, scan_en, scan_mode, scan_rst_n, labels, kme_internal_out, kme_internal_out_valid, key_tlv_ob_full, key_tlv_ob_afull, kop_fifo_override, kdf_test_key_size, kdf_test_mode_en );
parameter CCEIP_ENCRYPT_KOP = 1 ;
typedef enum reg  [7 : 0] {RQE=0,CMD=1,KEY=2,PHD=3,PFD=4,DATA_UNK=5,FTR=6,LZ77=7,STAT=8,CQE=9,GUID=10,FRMD_USER_NULL=11,FRMD_USER_PI16=12,FRMD_USER_PI64=13,FRMD_USER_VM=14,FRMD_INT_APP=15,FRMD_INT_SIP=16,FRMD_INT_LIP=17,FRMD_INT_VM=18,DATA=19,CR_IV=20,AUX_CMD=21,FRMD_INT_VM_SHORT=22,AUX_CMD_IV=23,AUX_CMD_GUID=24,AUX_CMD_GUID_IV=25,SCH=26,RSV_TLV=255} tlv_types_e ;
typedef struct packed {logic insert ; logic [12 : 0] ordern ; tlv_types_e typen ; logic sot ; logic eot ; logic tlast ; logic [0 : 0] tid ; logic [7 : 0] tstrb ; logic [7 : 0] tuser ; logic [63 : 0] tdata ;} tlvp_if_bus_t ;
typedef struct packed {logic [0 : 0] guid_size ; logic [5 : 0] label_size ; logic [255 : 0] label ; logic [0 : 0] delimiter_valid ; logic [7 : 0] delimiter ;} label_t ;
typedef enum reg  [3 : 0] {KME_WORD0=4'b0,KME_DEBUG_KEYHDR=4'b01,KME_IVTWEAK=4'b010,KME_GUID=4'b011,KME_KIM=4'b0100,KME_DEK_CKV0=4'b0101,KME_DEK_CKV1=4'b0110,KME_DAK_CKV=4'b0111,KME_EIV=4'b1000,KME_DEK0=4'b1001,KME_DEK1=4'b1010,KME_ETAG=4'b1011,KME_AIV=4'b1100,KME_DAK=4'b1101,KME_ATAG=4'b1110,KME_ERROR=4'b1111} kme_internal_id ;
typedef struct packed {logic [0 : 0] sot ; logic [0 : 0] eoi ; logic [0 : 0] eot ; kme_internal_id id ; logic [63 : 0] tdata ;} kme_internal_t ;
output wire logic kme_internal_out_ack ;
output wire logic key_tlv_ob_wr ;
output tlvp_if_bus_t key_tlv_ob_tlv ;
output wire logic set_gcm_tag_fail_int ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic scan_en ;
input wire logic scan_mode ;
input wire logic scan_rst_n ;
input label_t[7 : 0] labels ;
input kme_internal_t kme_internal_out ;
input wire logic kme_internal_out_valid ;
input wire logic key_tlv_ob_full ;
input wire logic key_tlv_ob_afull ;
input cr_kme_regfilePKG::kop_fifo_override_t kop_fifo_override ;
input wire logic [31 : 0] kdf_test_key_size ;
input wire logic kdf_test_mode_en ;
endmodule
`end_keywords
/**portGenericDumpBegin CCEIP_ENCRYPT_KOP tlv_types_e RQE CMD KEY PHD PFD DATA_UNK FTR LZ77 STAT CQE GUID FRMD_USER_NULL FRMD_USER_PI16 FRMD_USER_PI64 FRMD_USER_VM FRMD_INT_APP FRMD_INT_SIP FRMD_INT_LIP FRMD_INT_VM DATA CR_IV AUX_CMD FRMD_INT_VM_SHORT AUX_CMD_IV AUX_CMD_GUID AUX_CMD_GUID_IV SCH RSV_TLV tlvp_if_bus_t insert ordern typen sot eot tlast tid tstrb tuser tdata label_t guid_size label_size DUMMY1 delimiter_valid delimiter DUMMY2 kme_internal_id KME_WORD0 KME_DEBUG_KEYHDR KME_IVTWEAK KME_GUID KME_KIM KME_DEK_CKV0 KME_DEK_CKV1 KME_DAK_CKV KME_EIV KME_DEK0 KME_DEK1 KME_ETAG KME_AIV KME_DAK KME_ATAG KME_ERROR kme_internal_t sot eoi eot id tdata kme_internal_out_ack key_tlv_ob_wr key_tlv_ob_tlv set_gcm_tag_fail_int clk rst_n scan_en scan_mode scan_rst_n labels kme_internal_out kme_internal_out_valid key_tlv_ob_full key_tlv_ob_afull kop_fifo_override kdf_test_key_size kdf_test_mode_en portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
