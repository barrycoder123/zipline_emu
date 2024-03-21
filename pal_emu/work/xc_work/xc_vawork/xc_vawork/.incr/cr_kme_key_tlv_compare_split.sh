`begin_keywords "1800-2012"
module cr_kme_key_tlv_compare_split ( set_key_tlv_miscmp_int, cceip_encrypt_ob_full, cceip_encrypt_ob_afull, cceip_validate_ob_full, cceip_validate_ob_afull, cceip_ob_wr, cceip_ob_tlv, clk, rst_n, suppress_key_tlvs, cceip_encrypt_ob_wr, cceip_encrypt_ob_tlv, cceip_validate_ob_wr, cceip_validate_ob_tlv, cceip_ob_full, cceip_ob_afull );
typedef enum reg  [7 : 0] {RQE=0,CMD=1,KEY=2,PHD=3,PFD=4,DATA_UNK=5,FTR=6,LZ77=7,STAT=8,CQE=9,GUID=10,FRMD_USER_NULL=11,FRMD_USER_PI16=12,FRMD_USER_PI64=13,FRMD_USER_VM=14,FRMD_INT_APP=15,FRMD_INT_SIP=16,FRMD_INT_LIP=17,FRMD_INT_VM=18,DATA=19,CR_IV=20,AUX_CMD=21,FRMD_INT_VM_SHORT=22,AUX_CMD_IV=23,AUX_CMD_GUID=24,AUX_CMD_GUID_IV=25,SCH=26,RSV_TLV=255} tlv_types_e ;
typedef struct packed {logic insert ; logic [12 : 0] ordern ; tlv_types_e typen ; logic sot ; logic eot ; logic tlast ; logic [0 : 0] tid ; logic [7 : 0] tstrb ; logic [7 : 0] tuser ; logic [63 : 0] tdata ;} tlvp_if_bus_t ;
output wire logic set_key_tlv_miscmp_int ;
output wire logic cceip_encrypt_ob_full ;
output wire logic cceip_encrypt_ob_afull ;
output wire logic cceip_validate_ob_full ;
output wire logic cceip_validate_ob_afull ;
output logic [3 : 0] cceip_ob_wr ;
output tlvp_if_bus_t[3 : 0] cceip_ob_tlv ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic suppress_key_tlvs ;
input wire logic cceip_encrypt_ob_wr ;
input tlvp_if_bus_t cceip_encrypt_ob_tlv ;
input wire logic cceip_validate_ob_wr ;
input tlvp_if_bus_t cceip_validate_ob_tlv ;
input wire logic [3 : 0] cceip_ob_full ;
input wire logic [3 : 0] cceip_ob_afull ;
endmodule
`end_keywords
/**portGenericDumpBegin tlv_types_e RQE CMD KEY PHD PFD DATA_UNK FTR LZ77 STAT CQE GUID FRMD_USER_NULL FRMD_USER_PI16 FRMD_USER_PI64 FRMD_USER_VM FRMD_INT_APP FRMD_INT_SIP FRMD_INT_LIP FRMD_INT_VM DATA CR_IV AUX_CMD FRMD_INT_VM_SHORT AUX_CMD_IV AUX_CMD_GUID AUX_CMD_GUID_IV SCH RSV_TLV tlvp_if_bus_t insert ordern typen sot eot tlast tid tstrb tuser tdata DUMMY0 set_key_tlv_miscmp_int cceip_encrypt_ob_full cceip_encrypt_ob_afull cceip_validate_ob_full cceip_validate_ob_afull cceip_ob_wr cceip_ob_tlv clk rst_n suppress_key_tlvs cceip_encrypt_ob_wr cceip_encrypt_ob_tlv cceip_validate_ob_wr cceip_validate_ob_tlv cceip_ob_full cceip_ob_afull portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
