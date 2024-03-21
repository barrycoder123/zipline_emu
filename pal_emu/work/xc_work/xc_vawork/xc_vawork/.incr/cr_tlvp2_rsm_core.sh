`begin_keywords "1800-2012"
module cr_tlvp2_rsm_core ( pt_ob_rd, tlvp_rsm_usr_ob_ren, tlvp_rsm_ob_wen, tlvp_rsm_ob_wdata, clk, rst_n, pt_ob_empty, pt_ob_aempty, pt_ob_tlv, tlvp_rsm_usr_ob_rdata, usr_ob_empty, usr_ob_aempty, tlvp_ob_full, tlvp_ob_afull );
typedef struct packed {logic tvalid ; logic tlast ; logic [0 : 0] tid ; logic [7 : 0] tstrb ; logic [7 : 0] tuser ; logic [63 : 0] tdata ;} axi4s_dp_bus_t ;
typedef enum reg  [7 : 0] {RQE=0,CMD=1,KEY=2,PHD=3,PFD=4,DATA_UNK=5,FTR=6,LZ77=7,STAT=8,CQE=9,GUID=10,FRMD_USER_NULL=11,FRMD_USER_PI16=12,FRMD_USER_PI64=13,FRMD_USER_VM=14,FRMD_INT_APP=15,FRMD_INT_SIP=16,FRMD_INT_LIP=17,FRMD_INT_VM=18,DATA=19,CR_IV=20,AUX_CMD=21,FRMD_INT_VM_SHORT=22,AUX_CMD_IV=23,AUX_CMD_GUID=24,AUX_CMD_GUID_IV=25,SCH=26,RSV_TLV=255} tlv_types_e ;
typedef struct packed {logic insert ; logic [12 : 0] ordern ; tlv_types_e typen ; logic sot ; logic eot ; logic tlast ; logic [0 : 0] tid ; logic [7 : 0] tstrb ; logic [7 : 0] tuser ; logic [63 : 0] tdata ;} tlvp_if_bus_t ;
output logic pt_ob_rd ;
output logic tlvp_rsm_usr_ob_ren ;
output logic tlvp_rsm_ob_wen ;
output axi4s_dp_bus_t tlvp_rsm_ob_wdata ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic pt_ob_empty ;
input wire logic pt_ob_aempty ;
input tlvp_if_bus_t pt_ob_tlv ;
input tlvp_if_bus_t tlvp_rsm_usr_ob_rdata ;
input wire logic usr_ob_empty ;
input wire logic usr_ob_aempty ;
input wire logic tlvp_ob_full ;
input wire logic tlvp_ob_afull ;
endmodule
`end_keywords
/**portGenericDumpBegin axi4s_dp_bus_t tvalid tlast tid tstrb tuser tdata tlv_types_e RQE CMD KEY PHD PFD DATA_UNK FTR LZ77 STAT CQE GUID FRMD_USER_NULL FRMD_USER_PI16 FRMD_USER_PI64 FRMD_USER_VM FRMD_INT_APP FRMD_INT_SIP FRMD_INT_LIP FRMD_INT_VM DATA CR_IV AUX_CMD FRMD_INT_VM_SHORT AUX_CMD_IV AUX_CMD_GUID AUX_CMD_GUID_IV SCH RSV_TLV tlvp_if_bus_t insert ordern typen sot eot tlast tid tstrb tuser tdata pt_ob_rd tlvp_rsm_usr_ob_ren tlvp_rsm_ob_wen tlvp_rsm_ob_wdata clk rst_n pt_ob_empty pt_ob_aempty pt_ob_tlv tlvp_rsm_usr_ob_rdata usr_ob_empty usr_ob_aempty tlvp_ob_full tlvp_ob_afull portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
