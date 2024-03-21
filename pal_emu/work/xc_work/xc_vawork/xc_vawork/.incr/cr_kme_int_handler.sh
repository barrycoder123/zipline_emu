`begin_keywords "1800-2012"
module cr_kme_int_handler ( kme_interrupt, interrupt_status, suppress_key_tlvs, clk, rst_n, set_drbg_expired_int, set_txc_bp_int, set_gcm_tag_fail_int, set_key_tlv_miscmp_int, set_tlv_bip2_error_int, cceip0_ism_mbe, cceip1_ism_mbe, cceip2_ism_mbe, cceip3_ism_mbe, cddip0_ism_mbe, cddip1_ism_mbe, cddip2_ism_mbe, cddip3_ism_mbe, kim_mbe, ckv_mbe, cceip_encrypt_mbe, cceip_validate_mbe, cddip_decrypt_mbe, axi_mbe, bimc_interrupt, wr_stb, wr_data, reg_addr, o_interrupt_mask );
output logic kme_interrupt ;
output logic [4 : 0] interrupt_status ;
output wire logic suppress_key_tlvs ;
input wire logic clk ;
input wire logic rst_n ;
input wire logic set_drbg_expired_int ;
input wire logic set_txc_bp_int ;
input wire logic set_gcm_tag_fail_int ;
input wire logic set_key_tlv_miscmp_int ;
input wire logic set_tlv_bip2_error_int ;
input wire logic cceip0_ism_mbe ;
input wire logic cceip1_ism_mbe ;
input wire logic cceip2_ism_mbe ;
input wire logic cceip3_ism_mbe ;
input wire logic cddip0_ism_mbe ;
input wire logic cddip1_ism_mbe ;
input wire logic cddip2_ism_mbe ;
input wire logic cddip3_ism_mbe ;
input wire logic kim_mbe ;
input wire logic ckv_mbe ;
input wire logic cceip_encrypt_mbe ;
input wire logic cceip_validate_mbe ;
input wire logic cddip_decrypt_mbe ;
input wire logic axi_mbe ;
input wire logic bimc_interrupt ;
input wire logic wr_stb ;
input wire logic [31 : 0] wr_data ;
input wire logic [10 : 0] reg_addr ;
input wire logic [4 : 0] o_interrupt_mask ;
endmodule
`end_keywords
/**portGenericDumpBegin kme_interrupt interrupt_status suppress_key_tlvs clk rst_n set_drbg_expired_int set_txc_bp_int set_gcm_tag_fail_int set_key_tlv_miscmp_int set_tlv_bip2_error_int cceip0_ism_mbe cceip1_ism_mbe cceip2_ism_mbe cceip3_ism_mbe cddip0_ism_mbe cddip1_ism_mbe cddip2_ism_mbe cddip3_ism_mbe kim_mbe ckv_mbe cceip_encrypt_mbe cceip_validate_mbe cddip_decrypt_mbe axi_mbe bimc_interrupt wr_stb wr_data reg_addr o_interrupt_mask portGenericDumpEnd**/
/**ParamPreferVectorBegin ParamPreferVectorEnd**/
