`begin_keywords "1800-2012"
module cr_kme_kop_keybuilder ( tlv_sb_data_out_ack, keybuilder_kdf_stall, gcm_status_data_out_ack, key_tlv_ob_wr, key_tlv_ob_tlv, clk, rst_n, tlv_sb_data_out, tlv_sb_data_out_valid, kdf_keybuilder_data, kdf_keybuilder_valid, gcm_status_data_out_valid, gcm_status_data_out, key_tlv_ob_full, key_tlv_ob_afull );
typedef enum reg  [7 : 0] {RQE=0,CMD=1,KEY=2,PHD=3,PFD=4,DATA_UNK=5,FTR=6,LZ77=7,STAT=8,CQE=9,GUID=10,FRMD_USER_NULL=11,FRMD_USER_PI16=12,FRMD_USER_PI64=13,FRMD_USER_VM=14,FRMD_INT_APP=15,FRMD_INT_SIP=16,FRMD_INT_LIP=17,FRMD_INT_VM=18,DATA=19,CR_IV=20,AUX_CMD=21,FRMD_INT_VM_SHORT=22,AUX_CMD_IV=23,AUX_CMD_GUID=24,AUX_CMD_GUID_IV=25,SCH=26,RSV_TLV=255} tlv_types_e ;
typedef struct packed {logic insert ; logic [12 : 0] ordern ; tlv_types_e typen ; logic sot ; logic eot ; logic tlast ; logic [0 : 0] tid ; logic [7 : 0] tstrb ; logic [7 : 0] tuser ; logic [63 : 0] tdata ;} tlvp_if_bus_t ;
typedef struct packed {logic [0 : 0] tag_mismatch ;} gcm_status_t ;
output logic tlv_sb_data_out_ack ;
output logic keybuilder_kdf_stall ;
output logic gcm_status_data_out_ack ;
output logic key_tlv_ob_wr ;
output tlvp_if_bus_t key_tlv_ob_tlv ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic [63 : 0] tlv_sb_data_out ;
input wire logic tlv_sb_data_out_valid ;
input wire logic [63 : 0] kdf_keybuilder_data ;
input wire logic kdf_keybuilder_valid ;
input wire logic gcm_status_data_out_valid ;
input gcm_status_t gcm_status_data_out ;
input wire logic key_tlv_ob_full ;
input wire logic key_tlv_ob_afull ;
endmodule
`end_keywords
/**portGenericDumpBegin tlv_types_e RQE CMD KEY PHD PFD DATA_UNK FTR LZ77 STAT CQE GUID FRMD_USER_NULL FRMD_USER_PI16 FRMD_USER_PI64 FRMD_USER_VM FRMD_INT_APP FRMD_INT_SIP FRMD_INT_LIP FRMD_INT_VM DATA CR_IV AUX_CMD FRMD_INT_VM_SHORT AUX_CMD_IV AUX_CMD_GUID AUX_CMD_GUID_IV SCH RSV_TLV tlvp_if_bus_t insert ordern typen sot eot tlast tid tstrb tuser tdata gcm_status_t tag_mismatch tlv_sb_data_out_ack keybuilder_kdf_stall gcm_status_data_out_ack key_tlv_ob_wr key_tlv_ob_tlv clk rst_n tlv_sb_data_out tlv_sb_data_out_valid kdf_keybuilder_data kdf_keybuilder_valid gcm_status_data_out_valid gcm_status_data_out key_tlv_ob_full key_tlv_ob_afull portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
