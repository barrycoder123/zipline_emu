`begin_keywords "1800-2012"
module cr_tlvp2_rsm ( pt_ob_rd, usr_ob_full, usr_ob_afull, tlvp_ob_empty, tlvp_ob_aempty, tlvp_ob, tlvp_rsm_bimc_odat, tlvp_rsm_bimc_osync, tlvp_ob_ro_uncorrectable_ecc_error, usr_ob_ro_uncorrectable_ecc_error, clk, rst_n, pt_ob_empty, pt_ob_aempty, pt_ob_tlv, usr_ob_wr, usr_ob_tlv, tlvp_ob_rd, tlvp_rsm_bimc_idat, tlvp_rsm_bimc_isync, bimc_rst_n );
parameter UF_USE_RAM = 0 ;
parameter N_UF_ENTRIES = 16 ;
parameter N_UF_AFULL_VAL = 1 ;
parameter N_UF_AEMPTY_VAL = 1 ;
parameter OF_USE_RAM = 1 ;
parameter N_OF_ENTRIES = 168 ;
parameter N_OF_AFULL_VAL = 4 ;
parameter N_OF_AEMPTY_VAL = 1 ;
parameter N_UF_DATA_BITS = 106 ;
parameter N_OF_DATA_BITS = 83 ;
typedef struct packed {logic tvalid ; logic tlast ; logic [0 : 0] tid ; logic [7 : 0] tstrb ; logic [7 : 0] tuser ; logic [63 : 0] tdata ;} axi4s_dp_bus_t ;
typedef enum reg  [7 : 0] {RQE=0,CMD=1,KEY=2,PHD=3,PFD=4,DATA_UNK=5,FTR=6,LZ77=7,STAT=8,CQE=9,GUID=10,FRMD_USER_NULL=11,FRMD_USER_PI16=12,FRMD_USER_PI64=13,FRMD_USER_VM=14,FRMD_INT_APP=15,FRMD_INT_SIP=16,FRMD_INT_LIP=17,FRMD_INT_VM=18,DATA=19,CR_IV=20,AUX_CMD=21,FRMD_INT_VM_SHORT=22,AUX_CMD_IV=23,AUX_CMD_GUID=24,AUX_CMD_GUID_IV=25,SCH=26,RSV_TLV=255} tlv_types_e ;
typedef struct packed {logic insert ; logic [12 : 0] ordern ; tlv_types_e typen ; logic sot ; logic eot ; logic tlast ; logic [0 : 0] tid ; logic [7 : 0] tstrb ; logic [7 : 0] tuser ; logic [63 : 0] tdata ;} tlvp_if_bus_t ;
output logic pt_ob_rd ;
output logic usr_ob_full ;
output logic usr_ob_afull ;
output logic tlvp_ob_empty ;
output logic tlvp_ob_aempty ;
output axi4s_dp_bus_t tlvp_ob ;
output logic tlvp_rsm_bimc_odat ;
output logic tlvp_rsm_bimc_osync ;
output logic tlvp_ob_ro_uncorrectable_ecc_error ;
output logic usr_ob_ro_uncorrectable_ecc_error ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic pt_ob_empty ;
input wire logic pt_ob_aempty ;
input tlvp_if_bus_t pt_ob_tlv ;
input wire logic usr_ob_wr ;
input tlvp_if_bus_t usr_ob_tlv ;
input wire logic tlvp_ob_rd ;
input wire logic tlvp_rsm_bimc_idat ;
input wire logic tlvp_rsm_bimc_isync ;
input wire logic bimc_rst_n ;
endmodule
`end_keywords
/**portGenericDumpBegin UF_USE_RAM N_UF_ENTRIES N_UF_AFULL_VAL N_UF_AEMPTY_VAL OF_USE_RAM N_OF_ENTRIES N_OF_AFULL_VAL N_OF_AEMPTY_VAL N_UF_DATA_BITS N_OF_DATA_BITS axi4s_dp_bus_t tvalid tlast tid tstrb tuser tdata tlv_types_e RQE CMD KEY PHD PFD DATA_UNK FTR LZ77 STAT CQE GUID FRMD_USER_NULL FRMD_USER_PI16 FRMD_USER_PI64 FRMD_USER_VM FRMD_INT_APP FRMD_INT_SIP FRMD_INT_LIP FRMD_INT_VM DATA CR_IV AUX_CMD FRMD_INT_VM_SHORT AUX_CMD_IV AUX_CMD_GUID AUX_CMD_GUID_IV SCH RSV_TLV tlvp_if_bus_t insert ordern typen sot eot tlast tid tstrb tuser tdata pt_ob_rd usr_ob_full usr_ob_afull tlvp_ob_empty tlvp_ob_aempty tlvp_ob tlvp_rsm_bimc_odat tlvp_rsm_bimc_osync tlvp_ob_ro_uncorrectable_ecc_error usr_ob_ro_uncorrectable_ecc_error clk rst_n pt_ob_empty pt_ob_aempty pt_ob_tlv usr_ob_wr usr_ob_tlv tlvp_ob_rd tlvp_rsm_bimc_idat tlvp_rsm_bimc_isync bimc_rst_n portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
