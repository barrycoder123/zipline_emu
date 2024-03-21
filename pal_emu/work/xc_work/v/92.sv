// xc_work/v/92.sv
// /home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_regfile.v:18
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
module cr_kme_regfile(suppress_key_tlvs,kme_interrupt,rbus_ring_o,kme_cceip0_ob_out,kme_cceip0_ob_in_mod,kme_cceip1_ob_out,kme_cceip1_ob_in_mod,kme_cceip2_ob_out,kme_cceip2_ob_in_mod,kme_cceip3_ob_out,
kme_cceip3_ob_in_mod,kme_cddip0_ob_out,kme_cddip0_ob_in_mod,kme_cddip1_ob_out,kme_cddip1_ob_in_mod,kme_cddip2_ob_out,kme_cddip2_ob_in_mod,kme_cddip3_ob_out,kme_cddip3_ob_in_mod,ckv_dout,ckv_mbe,kim_dout,
kim_mbe,bimc_rst_n,cceip_encrypt_bimc_isync,cceip_encrypt_bimc_idat,cceip_validate_bimc_isync,cceip_validate_bimc_idat,cddip_decrypt_bimc_isync,cddip_decrypt_bimc_idat,axi_bimc_isync,axi_bimc_idat,labels,seed0_valid,
seed0_internal_state_key,seed0_internal_state_value,seed0_reseed_interval,seed1_valid,seed1_internal_state_key,seed1_internal_state_value,seed1_reseed_interval,tready_override,cceip_encrypt_kop_fifo_override,cceip_validate_kop_fifo_override,cddip_decrypt_kop_fifo_override,manual_txc,
always_validate_kim_ref,kdf_test_mode_en,kdf_test_key_size,sa_global_ctrl,sa_ctrl,debug_kme_ib_tvalid,debug_kme_ib_tlast,debug_kme_ib_tid,debug_kme_ib_tstrb,debug_kme_ib_tuser,debug_kme_ib_tdata,clk,
rst_n,ovstb,lvm,mlvm,rbus_ring_i,cfg_start_addr,cfg_end_addr,kme_cceip0_ob_out_pre,kme_cceip0_ob_in,kme_cceip1_ob_out_pre,kme_cceip1_ob_in,kme_cceip2_ob_out_pre,
kme_cceip2_ob_in,kme_cceip3_ob_out_pre,kme_cceip3_ob_in,kme_cddip0_ob_out_pre,kme_cddip0_ob_in,kme_cddip1_ob_out_pre,kme_cddip1_ob_in,kme_cddip2_ob_out_pre,kme_cddip2_ob_in,kme_cddip3_ob_out_pre,kme_cddip3_ob_in,ckv_rd,
ckv_addr,kim_rd,kim_addr,cceip_encrypt_bimc_osync,cceip_encrypt_bimc_odat,cceip_encrypt_mbe,cceip_validate_bimc_osync,cceip_validate_bimc_odat,cceip_validate_mbe,cddip_decrypt_bimc_osync,cddip_decrypt_bimc_odat,cddip_decrypt_mbe,
axi_bimc_osync,axi_bimc_odat,axi_mbe,seed0_invalidate,seed1_invalidate,set_txc_bp_int,set_gcm_tag_fail_int,set_key_tlv_miscmp_int,set_tlv_bip2_error_int,set_rsm_is_backpressuring,idle_components,sa_snapshot,
sa_count,debug_kme_ib_tready);
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : PARAM - sa_ctrl_t_reset
typedef enum logic [1:0] {ENET=0,IPV4=1,IPV6=2,MPLS=3} pkt_hdr_e;
typedef enum logic [3:0] {CMD_SIMPLE=0,COMPND_4K=5,COMPND_8K=6,COMPND_RSV=15} cmd_compound_cmd_frm_size_e;
typedef enum logic [0:0] {GUID_NOT_PRESENT=0,GUID_PRESENT=1} cmd_guid_present_e;
typedef enum logic [0:0] {CRC_NOT_PRESENT=0,CRC_PRESENT=1} cmd_frmd_crc_in_e;
typedef enum logic [6:0] {CCEIP_FRMD_USER_NULL=11,CCEIP_FRMD_USER_PI16=12,CCEIP_FRMD_USER_PI64=13,CCEIP_FRMD_USER_VM=14,CCEIP_TYPE_IN_RSV=127} cceip_cmd_frmd_in_type_e;
typedef enum logic [6:0] {CDDIP_FRMD_INT_APP=15,CDDIP_FRMD_INT_SIP=16,CDDIP_FRMD_INT_LIP=17,CDDIP_FRMD_INT_VM=18,CDDIP_FRMD_INT_VM_SHORT=22,CDDIP_TYPE_IN_RSV=127} cddip_cmd_frmd_in_type_e;
typedef enum logic [6:0] {CCEIP_FRMD_INT_APP=15,CCEIP_FRMD_INT_SIP=16,CCEIP_FRMD_INT_LIP=17,CCEIP_FRMD_INT_VM=18,CCEIP_FRMD_INT_VM_SHORT=22,CCEIP_TYPE_OUT_RSV=127} cceip_cmd_frmd_out_type_e;
typedef enum logic [6:0] {CDDIP_FRMD_USER_NULL=11,CDDIP_FRMD_USER_PI16=12,CDDIP_FRMD_USER_PI64=13,CDDIP_FRMD_USER_VM=14,CDDIP_TYPE_OUT_RSV=127} cddip_cmd_frmd_out_type_e;
typedef enum logic [0:0] {NOT_GEN=0,GEN=1} cmd_frmd_out_crc_e;
typedef enum logic [1:0] {FRMD_T10_DIX=0,FRMD_CRC64=1,FRMD_CRC64E=2,FRMD_CRC_RSV=3} cmd_frmd_out_crc_type_e;
typedef enum logic [1:0] {NO_CRC=0,CRC_8B_CRC64=1,CRC_8B_CRC64E=2,MD_TYPE_RSV=3} cmd_md_type_e;
typedef enum logic [1:0] {CRC_GEN_VERIFY=0,CRC_RSV1=1,CRC_RSV2=2,CRC_RSV3=3} cmd_md_op_e;
typedef enum logic [0:0] {FRMD_MAC_NOP=0,FRMD_MAC_CAL=1} cmd_frmd_raw_mac_sel_e;
typedef enum logic [0:0] {CHU_NORMAL=0,CHU_APPEND=1} cmd_chu_append_e;
typedef enum logic [3:0] {NONE=0,ZLIB=1,GZIP=2,XP9=3,XP10=4,CHU4K=5,CHU8K=6,RSV_MODE=15} cmd_comp_mode_e;
typedef enum logic [3:0] {WIN_32B=0,WIN_4K=1,WIN_8K=2,WIN_16K=3,WIN_32K=4,WIN_64K=5,RSV_WIN=15} cmd_lz77_win_size_e;
typedef enum logic [1:0] {NO_MATCH=0,CHAR_1=1,CHAR_2=2,RSV_DLY=3} cmd_lz77_dly_match_win_e;
typedef enum logic [0:0] {CHAR_3=0,CHAR_4=1} cmd_lz77_min_match_len_e;
typedef enum logic [1:0] {LEN_LZ77_WIN=0,LEN_256B=1,MIN_MTCH_14=2,LEN_64B=3} cmd_lz77_max_symb_len_e;
typedef enum logic [1:0] {NO_PREFIX=0,USER_PREFIX=1,PREDEF_PREFIX=2,PREDET_HUFF=3} cmd_xp10_prefix_mode_e;
typedef enum logic [0:0] {CRC32=0,CRC64=1} cmd_xp10_crc_mode_e;
typedef enum logic [1:0] {FRM=0,FRM_LESS_16=1,INF=2,RSV_THRSH=3} cmd_chu_comp_thrsh_e;
typedef enum logic [0:0] {NO_CIPHER=0,CIPHER=1} cmd_cipher_mode_e;
typedef enum logic [3:0] {AUTH_NULL=0,SHA2=1,HMAC_SHA2=2,AUTH_RSVD=15} cmd_auth_op_e;
typedef enum logic [3:0] {CPH_NULL=0,AES_GCM=1,AES_XTS_XEX=2,AES_GMAC=3,CPH_RSVD=15} cmd_cipher_op_e;
typedef enum logic [1:0] {IV_NONE=0,IV_AUX_CMD=1,IV_KEYS=2,IV_AUX_FRMD=3} cmd_iv_src_e;
typedef enum logic [1:0] {IV_SRC=0,IV_RND=1,IV_INC=2,IV_RSV=3} cmd_iv_op_e;
typedef enum logic [0:0] {NO_PAD=0,PAD_16B=1} cmd_cipher_pad_e;
typedef enum logic [0:0] {DGST_256=0,DGST_64=1} cmd_digest_size_e;
typedef enum logic [0:0] {SIMPLE=0,COMPOUND=1} rqe_frame_type_e;
typedef enum logic [0:0] {TRACE_OFF=0,TRACE_ON=1} rqe_trace_e;
typedef enum logic [3:0] {RQE_SIMPLE=0,RQE_COMPOUND_4K=5,RQE_COMPOUND_8K=6,RQE_RSV_FRAME_SIZE=15} rqe_frame_size_e;
typedef enum logic [1:0] {PARSEABLE=0,RAW=1,XP10CFH4K=2,XP10CFH8K=3} frmd_coding_e;
typedef enum logic [1:0] {DIGEST_64b=0,DIGEST_128b=1,DIGEST_256b=2,DIGEST_0b=3} frmd_mac_size_e;
typedef enum logic [7:0] {RQE=0,CMD=1,KEY=2,PHD=3,PFD=4,DATA_UNK=5,FTR=6,LZ77=7,STAT=8,CQE=9,
GUID=10,FRMD_USER_NULL=11,FRMD_USER_PI16=12,FRMD_USER_PI64=13,FRMD_USER_VM=14,FRMD_INT_APP=15,FRMD_INT_SIP=16,FRMD_INT_LIP=17,FRMD_INT_VM=18,DATA=19,
CR_IV=20,AUX_CMD=21,FRMD_INT_VM_SHORT=22,AUX_CMD_IV=23,AUX_CMD_GUID=24,AUX_CMD_GUID_IV=25,SCH=26,RSV_TLV=255} tlv_types_e;
typedef enum logic [1:0] {REP=0,PASS=1,MODIFY=2,DELETE=3} tlv_parse_action_e;
typedef enum logic [0:0] {USER=0,TLVP=1} tlvp_corrupt_e;
typedef enum logic [0:0] {DATAPATH_CORRUPT=0,FUNCTIONAL_ERROR=1} cmd_type_e;
typedef enum logic [1:0] {SINGLE_ERR=0,CONTINUOUS_ERROR=1,STOP=2,EOT=3} cmd_mode_e;
typedef enum logic [5:0] {NO_AUX_KEY=0,AUX_KEY_ONLY=1,DEK256=2,DEK512=3,DAK=4,DEK256_DAK=5,DEK512_DAK=6,ENC_DEK256=7,ENC_DEK512=8,ENC_DAK=9,
ENC_DEK256_DAK=10,ENC_DEK512_DAK=11,ENC_DEK256_DAK_COMB=12,ENC_DEK512_DAK_COMB=13,KEY_TYPE_RSV=63} aux_key_type_e;
typedef enum logic [0:0] {NOOP=0,KDF=1} aux_key_op_e;
typedef enum logic [1:0] {KDF_MODE_GUID=0,KDF_MODE_RGUID=1,KDF_MODE_COMB_GUID=2,KDF_MODE_COMB_RGUID=3} aux_kdf_mode_e;
typedef enum logic [9:0] {CKMIC_IV_MISMATCH_FRAME=0,CKMIC_ENGINE_ID_MISMATCH_FRAME=1,CKMIC_SEQ_ID_MISMATCH_FRAME=2,CKMIC_HMAC_SHA256_TAG_FAIL_FRAME=3,CKMIC_SHA256_TAG_FAIL_FRAME=4,CKMIC_GMAC_TAG_FAIL_FRAME=5,CKMIC_GCM_TAG_FAIL_FRAME=6,CKMIC_AUTH_NOP_FRAME=7,CKMIC_AUTH_HMAC_SHA256_FRAME=8,CKMIC_AUTH_SHA256_FRAME=9,
CKMIC_AUTH_AES_GMAC_FRAME=10,CKMIC_CIPH_NOP_FRAME=11,CKMIC_CIPH_AES_XEX_FRAME=12,CKMIC_CIPH_AES_XTS_FRAME=13,CKMIC_CIPH_AES_GCM_FRAME=14,CRCG0_RAW_CHSUM_GOOD_TOTAL=64,CRCG0_RAW_CHSUM_ERROR_TOTAL=65,CRCG0_CRC64E_CHSUM_GOOD_TOTAL=66,CRCG0_CRC64E_CHSUM_ERROR_TOTAL=67,CRCG0_ENC_CHSUM_GOOD_TOTAL=68,
CRCG0_ENC_CHSUM_ERROR_TOTAL=69,CRCG0_NVME_CHSUM_GOOD_TOTAL=70,CRCG0_NVME_CHSUM_ERROR_TOTAL=71,CRCGC0_RAW_CHSUM_GOOD_TOTAL=72,CRCGC0_RAW_CHSUM_ERROR_TOTAL=73,CRCGC0_CRC64E_CHSUM_GOOD_TOTAL=74,CRCGC0_CRC64E_CHSUM_ERROR_TOTAL=75,CRCGC0_ENC_CHSUM_GOOD_TOTAL=76,CRCGC0_ENC_CHSUM_ERROR_TOTAL=77,CRCGC0_NVME_CHSUM_GOOD_TOTAL=78,
CRCGC0_NVME_CHSUM_ERROR_TOTAL=79,CRCC1_RAW_CHSUM_GOOD_TOTAL=80,CRCC1_RAW_CHSUM_ERROR_TOTAL=81,CRCC1_CRC64E_CHSUM_GOOD_TOTAL=82,CRCC1_CRC64E_CHSUM_ERROR_TOTAL=83,CRCC1_ENC_CHSUM_GOOD_TOTAL=84,CRCC1_ENC_CHSUM_ERROR_TOTAL=85,CRCC1_NVME_CHSUM_GOOD_TOTAL=86,CRCC1_NVME_CHSUM_ERROR_TOTAL=87,CRCC0_RAW_CHSUM_GOOD_TOTAL=88,
CRCC0_RAW_CHSUM_ERROR_TOTAL=89,CRCC0_CRC64E_CHSUM_GOOD_TOTAL=90,CRCC0_CRC64E_CHSUM_ERROR_TOTAL=91,CRCC0_ENC_CHSUM_GOOD_TOTAL=92,CRCC0_ENC_CHSUM_ERROR_TOTAL=93,CRCC0_NVME_CHSUM_GOOD_TOTAL=94,CRCC0_NVME_CHSUM_ERROR_TOTAL=95,CG_ENGINE_ERROR_COMMAND=96,CG_SELECT_ENGINE_ERROR_COMMAND=97,CG_SYSTEM_ERROR_COMMAND=98,
CG_CQE_OUTPUT_COMMAND=99,HUFD_FE_XP9_FRM_TOTAL=320,HUFD_FE_XP9_BLK_TOTAL=321,HUFD_FE_XP9_RAW_FRM_TOTAL=322,HUFD_FE_XP10_FRM_TOTAL=323,HUFD_FE_XP10_FRM_PFX_TOTAL=324,HUFD_FE_XP10_FRM_PDH_TOTAL=325,HUFD_FE_XP10_BLK_TOTAL=326,HUFD_FE_XP10_RAW_BLK_TOTAL=327,HUFD_FE_GZIP_FRM_TOTAL=328,
HUFD_FE_GZIP_BLK_TOTAL=329,HUFD_FE_GZIP_RAW_BLK_TOTAL=330,HUFD_FE_ZLIB_FRM_TOTAL=331,HUFD_FE_ZLIB_BLK_TOTAL=332,HUFD_FE_ZLIB_RAW_BLK_TOTAL=333,HUFD_FE_CHU4K_TOTAL=334,HUFD_FE_CHU8K_TOTAL=335,HUFD_FE_CHU4K_RAW_TOTAL=336,HUFD_FE_CHU8K_RAW_TOTAL=337,HUFD_FE_PFX_CRC_ERR_TOTAL=338,
HUFD_FE_PHD_CRC_ERR_TOTAL=339,HUFD_FE_XP9_CRC_ERR_TOTAL=340,HUFD_HTF_XP9_SIMPLE_SHORT_BLK_TOTAL=341,HUFD_HTF_XP9_RETRO_SHORT_BLK_TOTAL=342,HUFD_HTF_XP9_SIMPLE_LONG_BLK_TOTAL=343,HUFD_HTF_XP9_RETRO_LONG_BLK_TOTAL=344,HUFD_HTF_XP10_SIMPLE_SHORT_BLK_TOTAL=345,HUFD_HTF_XP10_RETRO_SHORT_BLK_TOTAL=346,HUFD_HTF_XP10_PREDEF_SHORT_BLK_TOTAL=347,HUFD_HTF_XP10_SIMPLE_LONG_BLK_TOTAL=348,
HUFD_HTF_XP10_RETRO_LONG_BLK_TOTAL=349,HUFD_HTF_XP10_PREDEF_LONG_BLK_TOTAL=350,HUFD_HTF_CHU4K_SIMPLE_SHORT_BLK_TOTAL=351,HUFD_HTF_CHU4K_RETRO_SHORT_BLK_TOTAL=352,HUFD_HTF_CHU4K_PREDEF_SHORT_BLK_TOTAL=353,HUFD_HTF_CHU4K_SIMPLE_LONG_BLK_TOTAL=354,HUFD_HTF_CHU4K_RETRO_LONG_BLK_TOTAL=355,HUFD_HTF_CHU4K_PREDEF_LONG_BLK_TOTAL=356,HUFD_HTF_CHU8K_SIMPLE_SHORT_BLK_TOTAL=357,HUFD_HTF_CHU8K_RETRO_SHORT_BLK_TOTAL=358,
HUFD_HTF_CHU8K_PREDEF_SHORT_BLK_TOTAL=359,HUFD_HTF_CHU8K_SIMPLE_LONG_BLK_TOTAL=360,HUFD_HTF_CHU8K_RETRO_LONG_BLK_TOTAL=361,HUFD_HTF_CHU8K_PREDEF_LONG_BLK_TOTAL=362,HUFD_HTF_DEFLATE_DYNAMIC_BLK_TOTAL=363,HUFD_HTF_DEFLATE_FIXED_BLK_TOTAL=364,HUFD_MTF_0_TOTAL=365,HUFD_MTF_1_TOTAL=366,HUFD_MTF_2_TOTAL=367,HUFD_MTF_3_TOTAL=368,
HUFD_FE_FHP_STALL_TOTAL=369,HUFD_FE_LFA_STALL_TOTAL=370,HUFD_HTF_PREDEF_STALL_TOTAL=371,HUFD_HTF_HDR_DATA_STALL_TOTAL=372,HUFD_HTF_HDR_INFO_STALL_TOTAL=373,HUFD_SDD_INPUT_STALL_TOTAL=374,HUFD_SDD_BUF_FULL_STALL_TOTAL=375,LZ77D_PTR_LEN_256_TOTAL=384,LZ77D_PTR_LEN_128_TOTAL=385,LZ77D_PTR_LEN_64_TOTAL=386,
LZ77D_PTR_LEN_32_TOTAL=387,LZ77D_PTR_LEN_11_TOTAL=388,LZ77D_PTR_LEN_10_TOTAL=389,LZ77D_PTR_LEN_9_TOTAL=390,LZ77D_PTR_LEN_8_TOTAL=391,LZ77D_PTR_LEN_7_TOTAL=392,LZ77D_PTR_LEN_6_TOTAL=393,LZ77D_PTR_LEN_5_TOTAL=394,LZ77D_PTR_LEN_4_TOTAL=395,LZ77D_PTR_LEN_3_TOTAL=396,
LZ77D_LANE_1_LITERALS_TOTAL=397,LZ77D_LANE_2_LITERALS_TOTAL=398,LZ77D_LANE_3_LITERALS_TOTAL=399,LZ77D_LANE_4_LITERALS_TOTAL=400,LZ77D_PTRS_TOTAL=401,LZ77D_FRM_IN_TOTAL=402,LZ77D_FRM_OUT_TOTAL=403,LZ77D_STALL_TOTAL=404,DECRYPT_IV_MISMATCH_FRAME=448,DECRYPT_ENGINE_ID_MISMATCH_FRAME=449,
DECRYPT_SEQ_ID_MISMATCH_FRAME=450,DECRYPT_HMAC_SHA256_TAG_FAIL_FRAME=451,DECRYPT_SHA256_TAG_FAIL_FRAME=452,DECRYPT_GMAC_TAG_FAIL_FRAME=453,DECRYPT_GCM_TAG_FAIL_FRAME=454,DECRYPT_AUTH_NOP_FRAME=455,DECRYPT_AUTH_HMAC_SHA256_FRAME=456,DECRYPT_AUTH_SHA256_FRAME=457,DECRYPT_AUTH_AES_GMAC_FRAME=458,DECRYPT_CIPH_NOP_FRAME=459,
DECRYPT_CIPH_AES_XEX_FRAME=460,DECRYPT_CIPH_AES_XTS_FRAME=461,DECRYPT_CIPH_AES_GCM_FRAME=462,OSF_DATA_INPUT_STALL_TOTAL=512,OSF_CG_INPUT_STALL_TOTAL=513,OSF_OUTPUT_BACKPRESSURE_TOTAL=514,OSF_OUTPUT_STALL_TOTAL=515,ENCRYPT_IV_MISMATCH_FRAME=576,ENCRYPT_ENGINE_ID_MISMATCH_FRAME=577,ENCRYPT_SEQ_ID_MISMATCH_FRAME=578,
ENCRYPT_HMAC_SHA256_TAG_FAIL_FRAME=579,ENCRYPT_SHA256_TAG_FAIL_FRAME=580,ENCRYPT_GMAC_TAG_FAIL_FRAME=581,ENCRYPT_GCM_TAG_FAIL_FRAME=582,ENCRYPT_AUTH_NOP_FRAME=583,ENCRYPT_AUTH_HMAC_SHA256_FRAME=584,ENCRYPT_AUTH_SHA256_FRAME=585,ENCRYPT_AUTH_AES_GMAC_FRAME=586,ENCRYPT_CIPH_NOP_FRAME=587,ENCRYPT_CIPH_AES_XEX_FRAME=588,
ENCRYPT_CIPH_AES_XTS_FRAME=589,ENCRYPT_CIPH_AES_GCM_FRAME=590,SHORT_MAP_ERR_TOTAL=640,LONG_MAP_ERR_TOTAL=641,XP9_BLK_COMP_TOTAL=642,XP9_FRM_RAW_TOTAL=643,XP9_FRM_TOTAL=644,XP9_BLK_SHORT_SIM_TOTAL=645,XP9_BLK_LONG_SIM_TOTAL=646,XP9_BLK_SHORT_RET_TOTAL=647,
XP9_BLK_LONG_RET_TOTAL=648,XP10_BLK_COMP_TOTAL=649,XP10_BLK_RAW_TOTAL=650,XP10_BLK_SHORT_SIM_TOTAL=651,XP10_BLK_LONG_SIM_TOTAL=652,XP10_BLK_SHORT_RET_TOTAL=653,XP10_BLK_LONG_RET_TOTAL=654,XP10_BLK_SHORT_PRE_TOTAL=655,XP10_BLK_LONG_PRE_TOTAL=656,XP10_FRM_TOTAL=657,
CHU8_FRM_RAW_TOTAL=658,CHU8_FRM_COMP_TOTAL=659,CHU8_FRM_SHORT_SIM_TOTAL=660,CHU8_FRM_LONG_SIM_TOTAL=661,CHU8_FRM_SHORT_RET_TOTAL=662,CHU8_FRM_LONG_RET_TOTAL=663,CHU8_FRM_SHORT_PRE_TOTAL=664,CHU8_FRM_LONG_PRE_TOTAL=665,CHU8_CMD_TOTAL=666,CHU4_FRM_RAW_TOTAL=667,
CHU4_FRM_COMP_TOTAL=668,CHU4_FRM_SHORT_SIM_TOTAL=669,CHU4_FRM_LONG_SIM_TOTAL=670,CHU4_FRM_SHORT_RET_TOTAL=671,CHU4_FRM_LONG_RET_TOTAL=672,CHU4_FRM_SHORT_PRE_TOTAL=673,CHU4_FRM_LONG_PRE_TOTAL=674,CHU4_CMD_TOTAL=675,DF_BLK_COMP_TOTAL=676,DF_BLK_RAW_TOTAL=677,
DF_BLK_SHORT_SIM_TOTAL=678,DF_BLK_LONG_SIM_TOTAL=679,DF_BLK_SHORT_RET_TOTAL=680,DF_BLK_LONG_RET_TOTAL=681,DF_FRM_TOTAL=682,PASS_THRU_FRM_TOTAL=683,BYTE_0_TOTAL=684,BYTE_1_TOTAL=685,BYTE_2_TOTAL=686,BYTE_3_TOTAL=687,
BYTE_4_TOTAL=688,BYTE_5_TOTAL=689,BYTE_6_TOTAL=690,BYTE_7_TOTAL=691,ENCRYPT_STALL_TOTAL=692,LZ77_STALL_TOTAL=693,LZ77C_eof_FRAME=704,LZ77C_bypass_FRAME=705,LZ77C_mtf_3_TOTAL=706,LZ77C_mtf_2_TOTAL=707,
LZ77C_mtf_1_TOTAL=708,LZ77C_mtf_0_TOTAL=709,LZ77C_run_256_nup_TOTAL=710,LZ77C_run_128_255_TOTAL=711,LZ77C_run_64_127_TOTAL=712,LZ77C_run_32_63_TOTAL=713,LZ77C_run_11_31_TOTAL=714,LZ77C_run_10_TOTAL=715,LZ77C_run_9_TOTAL=716,LZ77C_run_8_TOTAL=717,
LZ77C_run_7_TOTAL=718,LZ77C_run_6_TOTAL=719,LZ77C_run_5_TOTAL=720,LZ77C_run_4_TOTAL=721,LZ77C_run_3_TOTAL=722,LZ77C_mtf_TOTAL=723,LZ77C_ptr_TOTAL=724,LZ77C_four_lit_TOTAL=725,LZ77C_three_lit_TOTAL=726,LZ77C_two_lit_TOTAL=727,
LZ77C_one_lit_TOTAL=728,LZ77C_throttled_FRAME=729,PREFIX_NUM_0_TOTAL=832,PREFIX_NUM_1_TOTAL=833,PREFIX_NUM_2_TOTAL=834,PREFIX_NUM_3_TOTAL=835,PREFIX_NUM_4_TOTAL=836,PREFIX_NUM_5_TOTAL=837,PREFIX_NUM_6_TOTAL=838,PREFIX_NUM_7_TOTAL=839,
PREFIX_NUM_8_TOTAL=840,PREFIX_NUM_9_TOTAL=841,PREFIX_NUM_10_TOTAL=842,PREFIX_NUM_11_TOTAL=843,PREFIX_NUM_12_TOTAL=844,PREFIX_NUM_13_TOTAL=845,PREFIX_NUM_14_TOTAL=846,PREFIX_NUM_15_TOTAL=847,PREFIX_NUM_16_TOTAL=848,PREFIX_NUM_17_TOTAL=849,
PREFIX_NUM_18_TOTAL=850,PREFIX_NUM_19_TOTAL=851,PREFIX_NUM_20_TOTAL=852,PREFIX_NUM_21_TOTAL=853,PREFIX_NUM_22_TOTAL=854,PREFIX_NUM_23_TOTAL=855,PREFIX_NUM_24_TOTAL=856,PREFIX_NUM_25_TOTAL=857,PREFIX_NUM_26_TOTAL=858,PREFIX_NUM_27_TOTAL=859,
PREFIX_NUM_28_TOTAL=860,PREFIX_NUM_29_TOTAL=861,PREFIX_NUM_30_TOTAL=862,PREFIX_NUM_31_TOTAL=863,PREFIX_NUM_32_TOTAL=864,PREFIX_NUM_33_TOTAL=865,PREFIX_NUM_34_TOTAL=866,PREFIX_NUM_35_TOTAL=867,PREFIX_NUM_36_TOTAL=868,PREFIX_NUM_37_TOTAL=869,
PREFIX_NUM_38_TOTAL=870,PREFIX_NUM_39_TOTAL=871,PREFIX_NUM_40_TOTAL=872,PREFIX_NUM_41_TOTAL=873,PREFIX_NUM_42_TOTAL=874,PREFIX_NUM_43_TOTAL=875,PREFIX_NUM_44_TOTAL=876,PREFIX_NUM_45_TOTAL=877,PREFIX_NUM_46_TOTAL=878,PREFIX_NUM_47_TOTAL=879,
PREFIX_NUM_48_TOTAL=880,PREFIX_NUM_49_TOTAL=881,PREFIX_NUM_50_TOTAL=882,PREFIX_NUM_51_TOTAL=883,PREFIX_NUM_52_TOTAL=884,PREFIX_NUM_53_TOTAL=885,PREFIX_NUM_54_TOTAL=886,PREFIX_NUM_55_TOTAL=887,PREFIX_NUM_56_TOTAL=888,PREFIX_NUM_57_TOTAL=889,
PREFIX_NUM_58_TOTAL=890,PREFIX_NUM_59_TOTAL=891,PREFIX_NUM_60_TOTAL=892,PREFIX_NUM_61_TOTAL=893,PREFIX_NUM_62_TOTAL=894,PREFIX_NUM_63_TOTAL=895,ISF_INPUT_COMMANDS=896,ISF_INPUT_FRAMES=897,ISF_INPUT_STALL_TOTAL=898,ISF_INPUT_SYSTEM_STALL_TOTAL=899,
ISF_OUTPUT_BACKPRESSURE_TOTAL=900,ISF_AUX_CMD_COMPRESS_CTL_MATCH_COMMAND_0=901,ISF_AUX_CMD_COMPRESS_CTL_MATCH_COMMAND_1=902,ISF_AUX_CMD_COMPRESS_CTL_MATCH_COMMAND_2=903,ISF_AUX_CMD_COMPRESS_CTL_MATCH_COMMAND_3=904,HUF_COMP_LZ77D_PTR_LEN_256_TOTAL=960,HUF_COMP_LZ77D_PTR_LEN_128_TOTAL=961,HUF_COMP_LZ77D_PTR_LEN_64_TOTAL=962,HUF_COMP_LZ77D_PTR_LEN_32_TOTAL=963,HUF_COMP_LZ77D_PTR_LEN_11_TOTAL=964,
HUF_COMP_LZ77D_PTR_LEN_10_TOTAL=965,HUF_COMP_LZ77D_PTR_LEN_9_TOTAL=966,HUF_COMP_LZ77D_PTR_LEN_8_TOTAL=967,HUF_COMP_LZ77D_PTR_LEN_7_TOTAL=968,HUF_COMP_LZ77D_PTR_LEN_6_TOTAL=969,HUF_COMP_LZ77D_PTR_LEN_5_TOTAL=970,HUF_COMP_LZ77D_PTR_LEN_4_TOTAL=971,HUF_COMP_LZ77D_PTR_LEN_3_TOTAL=972,HUF_COMP_LZ77D_LANE_4_LITERALS_TOTAL=973,HUF_COMP_LZ77D_LANE_3_LITERALS_TOTAL=974,
HUF_COMP_LZ77D_LANE_2_LITERALS_TOTAL=975,HUF_COMP_LZ77D_LANE_1_LITERALS_TOTAL=976,HUF_COMP_LZ77D_PTRS_TOTAL=977,HUF_COMP_LZ77D_FRM_IN_TOTAL=978,HUF_COMP_LZ77D_FRM_OUT_TOTAL=979,HUF_COMP_LZ77D_STALL_STB_TOTAL=980,CCEIP_STATS_RESERVED=1023} cceip_stats_e;
typedef enum logic [7:0] {NO_ERRORS=0,CRCCG_CRC_ERROR=50,CRCC0_CRC_ERROR=51,CRCC1_CRC_ERROR=52,CRCG0_CRC_ERROR=53,CRCGC0_CRC_ERROR=54,CRCDG0_CRC_ERROR=55,CRCDC0_CRC_ERROR=56,PREFIX_PC_OVERRUN_ERROR=150,PREFIX_NUM_WR_ERROR=151,
PREFIX_ILLEGAL_OPCODE=152,PREFIX_REC_US_SW_EN_ERROR=153,PREFIX_ATTACH_PHD_CRC_ERROR=155,PREFIX_ATTACH_PFD_CRC_ERROR=156,LZ77_COMP_PREFIX_CRC_ERROR=64,LZ77_COMP_INVALID_COMP_ALG=65,LZ77_COMP_INVALID_WIN_SIZE=66,LZ77_COMP_INVALID_MIN_LEN=67,LZ77_COMP_INVALID_NUM_MTF=68,LZ77_COMP_INVALID_MAX_LEN=69,
LZ77_COMP_INVALID_DMW_SIZE=70,LZ77_COMP_LZ_ERROR=71,HE_MEM_ECC=80,HE_PDH_CRC=81,HE_PFX_CRC=82,HE_SYM_MAP_ERR=83,CRYPTO_ENC_DRNG_HEALTH_FAIL=108,CRYPTO_ENC_AAD_LEN_ERROR=107,CRYPTO_ENC_XTS_LEN_ERROR=106,CRYPTO_ENC_MAL_CMD=105,
CRYPTO_ENC_KEY_TLV_CRC_ERROR=104,CRYPTO_ENC_INVALID_ENGINE_ID=103,CRYPTO_ENC_INVALID_SEQNUM=102,CRYPTO_ENC_IV_MISSING=101,CRYPTO_ENC_SEED_EXPIRED=100,CRYPTO_DEC_AAD_LEN_ERROR=118,CRYPTO_DEC_XTS_LEN_ERROR=117,CRYPTO_DEC_MAL_CMD=116,CRYPTO_DEC_KEY_TLV_CRC_ERROR=115,CRYPTO_DEC_INVALID_ENGINE_ID=114,
CRYPTO_DEC_INVALID_SEQNUM=113,CRYPTO_DEC_IV_MISSING=112,CRYPTO_DEC_TAG_MISCOMPARE=110,CRYPTO_INT_KEY_TLV_CRC_ERROR=123,CRYPTO_INT_INVALID_ENGINE_ID=122,CRYPTO_INT_INVALID_SEQNUM=121,CRYPTO_INT_TAG_MISCOMPARE=120,KME_DAK_INV_KIM=130,KME_DAK_PF_VF_VAL_ERR=131,KME_DEK_INV_KIM=132,
KME_DEK_PF_VF_VAL_ERR=133,KME_SEED_EXPIRED=134,KME_DEK_GCM_TAG_FAIL=135,KME_DAK_GCM_TAG_FAIL=136,KME_ECC_FAIL=137,KME_UNSUPPORTED_KEY_TYPE=138,KME_DEK_ILLEGAL_KEK_USAGE=139,KME_DAK_ILLEGAL_KEK_USAGE=140,KME_DRNG_HEALTH_FAIL=141,HD_MEM_ECC=1,
HD_FHP_PFX_CRC=2,HD_FHP_PFX_DATA_ABSENT=3,HD_FHP_PHD_CRC=4,HD_FHP_BAD_FORMAT=5,HD_BHP_INVALID_WSIZE=6,HD_BHP_BLK_CRC=7,HD_BHP_HDR_INVALID=8,HD_BHP_XP9_HDR_SEQ=9,HD_BHP_XP10_XTRA_FLAG_PRSNT=10,HD_BHP_ZLIB_FDICT_PRSNT=11,
HD_BHP_GZ_CM_NOT_DEFLATE=12,HD_BHP_ZLIB_CINFO_RANGE=13,HD_BHP_ZLIB_FCHECK=14,HD_BHP_DFLATE_LEN_CHECK=15,HD_LFA_REWIND_FAIL=16,HD_LFA_PREMATURE_EOF=17,HD_LFA_LATE_EOF=18,HD_LFA_MISSING_EOF=19,HD_HTF_XP9_RESERVED_SYMBOL_TABLE_ENCODING=20,HD_HTF_XP10_RESERVED_SYMBOL_TABLE_ENCODING=21,
HD_HTF_XP10_PREDEF_SYMBOL_TABLE_ENCODING=22,HD_HTF_XP9_ILLEGAL_NONZERO_BL=23,HD_HTF_RLE_OVERRUN=24,HD_HTF_BAD_HUFFMAN_CODE=25,HD_HTF_ILLEGAL_SMALL_HUFFTREE=26,HD_HTF_ILLEGAL_HUFFTREE=27,HD_HTF_HDR_UNDERRUN=28,HD_BHP_STBL_SIZE_ERR=29,HD_SDD_INVALID_SYMBOL=32,HD_SDD_END_MISMATCH=33,
HD_SDD_MISSING_EOB_SYM=34,HD_MTF_XP9_MTF3_AFTER_BACKREF=35,HD_MTF_XP10_MISSING_MTF=36,HD_BHP_ILLEGAL_MTF_SZ=37,HD_LZ_HBIF_SOFT_OFLOW=38,HD_BE_FRM_CRC=39,HD_BE_OLIMIT=40,HD_BE_SZ_MISMATCH=41,CG_UNDEF_FRMD_OUT=170,ISF_PREFIX_ERR=180,TLVP_BIP2_ERROR=255} zipline_error_e;
typedef struct packed {
 logic tvalid;
 logic tlast;
 logic [0:0] tid ;
 logic [7:0] tstrb ;
 logic [7:0] tuser ;
 logic [63:0] tdata ;
} axi4s_dp_bus_t;
typedef struct packed {
 logic tready;
} axi4s_dp_rdy_t;
typedef struct packed {
 logic [19:0] addr ;
 logic wr_strb;
 logic [31:0] wr_data ;
 logic rd_strb;
} rbus_in_t;
typedef struct packed {
 logic [31:0] rd_data ;
 logic ack;
 logic err_ack;
} rbus_out_t;
typedef struct packed {
 logic [19:0] addr ;
 logic wr_strb;
 logic [31:0] wr_data ;
 logic rd_strb;
 logic [31:0] rd_data ;
 logic ack;
 logic err_ack;
} rbus_ring_t;
typedef struct packed {
 logic [15:0] addr ;
 logic wr_strb;
 logic [31:0] wr_data ;
 logic rd_strb;
 logic [31:0] rd_data ;
 logic ack;
 logic err_ack;
} kme_rbus_ring_t;
typedef struct packed {
 logic eob;
 logic [7:0] bytes_vld ;
 logic [22:0] im_meta ;
} im_desc_t;
typedef struct packed {
 logic [63:0] data ;
} im_data_t;
typedef struct packed {
 im_data_t data;
 im_desc_t desc;
} im_din_t;
typedef struct packed {
 logic bank_hi;
 logic bank_lo;
} im_available_t;
typedef struct packed {
 logic bank_hi;
 logic bank_lo;
} im_consumed_t;
typedef struct packed {
 logic valid;
 logic [7:0] seq_num ;
} frame_latency_if_bus_t;
typedef struct packed {
 logic valid;
 logic [15:0] rqe_sched_handle ;
 logic last;
 logic [10:0] tlv_frame_num ;
 logic [3:0] tlv_eng_id ;
 logic [7:0] tlv_seq_num ;
 logic [23:0] bytes_in ;
 logic [23:0] bytes_out ;
 logic [23:0] basis ;
} sched_update_if_bus_t;
typedef struct packed {
 logic insert;
 logic [12:0] ordern ;
 tlv_types_e typen;
 logic sot;
 logic eot;
 logic tlast;
 logic [0:0] tid ;
 logic [7:0] tstrb ;
 logic [7:0] tuser ;
 logic [63:0] tdata ;
} tlvp_if_bus_t;
typedef struct packed {
 logic [3:0] framing ;
 logic [7:0] data0 ;
 logic [7:0] data1 ;
 logic [7:0] data2 ;
 logic [7:0] data3 ;
 logic backref;
 logic backref_type;
 logic [1:0] backref_lane ;
 logic [7:0] offset_msb ;
 logic [15:0] length ;
} lz_symbol_bus_t;
typedef struct packed {
 logic [1:0] tlv_bip2 ;
 logic [18:0] resv0 ;
 logic [10:0] tlv_frame_num ;
 logic [3:0] resv1 ;
 logic [3:0] tlv_eng_id ;
 logic [7:0] tlv_seq_num ;
 logic [7:0] tlv_len ;
 tlv_types_e tlv_type;
} tlv_word_0_t;
typedef struct packed {
 logic [1:0] tlv_bip2 ;
 logic no_data;
 logic aux_frmd_crc;
 rqe_frame_size_e frame_size;
 logic vf_valid;
 rqe_trace_e trace;
 logic [10:0] unused ;
 logic [10:0] tlv_frame_num ;
 logic [3:0] resv0 ;
 logic [3:0] tlv_eng_id ;
 logic [7:0] tlv_seq_num ;
 logic [7:0] tlv_len ;
 tlv_types_e tlv_type;
} tlv_rqe_word_0_t;
typedef struct packed {
 logic [1:0] tlv_bip2 ;
 logic last_of_command;
 logic [15:0] resv0 ;
 frmd_coding_e coding;
 logic [10:0] tlv_frame_num ;
 logic [3:0] resv1 ;
 logic [3:0] tlv_eng_id ;
 logic [7:0] tlv_seq_num ;
 logic [7:0] tlv_len ;
 tlv_types_e tlv_type;
} tlv_data_word_0_t;
typedef struct packed {
 logic [3:0] pf_number ;
 logic [11:0] vf_number ;
 logic [15:0] scheduler_handle ;
 logic [31:0] src_data_len ;
} tlv_rqe_word_1_t;
typedef struct packed {
 tlvp_corrupt_e tlvp_corrupt;
 cmd_mode_e cmd_mode;
 logic [4:0] module_id ;
 cmd_type_e cmd_type;
 logic [4:0] tlv_num ;
 logic [9:0] byte_num ;
 logic [7:0] byte_msk ;
} cmd_debug_t;
typedef struct packed {
 logic [0:0] rsvd ;
 logic [10:0] on_count ;
 logic [10:0] off_count ;
} bp_debug_t;
typedef struct packed {
 cmd_debug_t debug;
 logic trace;
 logic dst_guid_present;
 logic [6:0] frmd_out_type ;
 cmd_md_op_e md_op;
 cmd_md_type_e md_type;
 logic [6:0] frmd_in_type ;
 logic [5:0] frmd_in_aux ;
 cmd_frmd_crc_in_e frmd_crc_in;
 cmd_guid_present_e src_guid_present;
 cmd_compound_cmd_frm_size_e compound_cmd_frm_size;
} tlv_cmd_word_1_t;
typedef struct packed {
 logic rsvd2;
 aux_key_type_e key_type;
 logic [1:0] rsvd1 ;
 cmd_cipher_pad_e cipher_pad;
 cmd_iv_op_e iv_op;
 logic [7:0] aad_len ;
 cmd_cipher_op_e cipher_op;
 cmd_auth_op_e auth_op, raw_auth_op;
 logic [7:0] rsvd0 ;
 cmd_chu_comp_thrsh_e chu_comp_thrsh;
 cmd_xp10_crc_mode_e xp10_crc_mode;
 logic [5:0] xp10_user_prefix_size ;
 cmd_xp10_prefix_mode_e xp10_prefix_mode;
 cmd_lz77_max_symb_len_e lz77_max_symb_len;
 cmd_lz77_min_match_len_e lz77_min_match_len;
 cmd_lz77_dly_match_win_e lz77_dly_match_win;
 cmd_lz77_win_size_e lz77_win_size;
 cmd_comp_mode_e comp_mode;
} tlv_cmd_word_2_t;
typedef struct packed {
 logic [63:0] guid ;
} tlv_key_word1_t;
typedef struct packed {
 logic [63:0] guid ;
} tlv_key_word2_t;
typedef struct packed {
 logic [63:0] guid ;
} tlv_key_word3_t;
typedef struct packed {
 logic [63:0] guid ;
} tlv_key_word4_t;
typedef struct packed {
 logic [63:0] ivtweak ;
} tlv_key_word5_t;
typedef struct packed {
 logic [63:0] ivtweak ;
} tlv_key_word6_t;
typedef struct packed {
 logic [63:0] dek ;
} tlv_key_word7_t;
typedef struct packed {
 logic [63:0] dek ;
} tlv_key_word8_t;
typedef struct packed {
 logic [63:0] dek ;
} tlv_key_word9_t;
typedef struct packed {
 logic [63:0] dek ;
} tlv_key_word10_t;
typedef struct packed {
 logic [63:0] dek ;
} tlv_key_word11_t;
typedef struct packed {
 logic [63:0] dek ;
} tlv_key_word12_t;
typedef struct packed {
 logic [63:0] dek ;
} tlv_key_word13_t;
typedef struct packed {
 logic [63:0] dek ;
} tlv_key_word14_t;
typedef struct packed {
 logic [63:0] dak ;
} tlv_key_word15_t;
typedef struct packed {
 logic [63:0] dak ;
} tlv_key_word16_t;
typedef struct packed {
 logic [63:0] dak ;
} tlv_key_word17_t;
typedef struct packed {
 logic [63:0] dak ;
} tlv_key_word18_t;
typedef struct packed {
 logic [55:0] rsvd ;
 zipline_error_e kme_errors;
} tlv_key_word19_t;
typedef struct packed {
 logic [31:0] rsvd ;
 logic [31:0] crc32 ;
} tlv_key_word20_t;
typedef struct packed {
 logic [63:6] rsvd ;
 logic [5:0] xp10_prefix_sel ;
} tlv_phd_word1_t;
typedef struct packed {
 logic [1:0] tlv_bip2 ;
 logic [11:0] resv0 ;
 logic prefix_src;
 logic [5:0] xp10_prefix_sel ;
 logic [10:0] tlv_frame_num ;
 logic [3:0] resv1 ;
 logic [3:0] tlv_eng_id ;
 logic [7:0] tlv_seq_num ;
 logic [7:0] tlv_len ;
 tlv_types_e tlv_type;
} tlv_pfd_word0_t;
typedef struct packed {
 logic [63:6] rsvd ;
 logic [5:0] xp10_prefix_sel ;
} tlv_pfd_word1_t;
typedef struct packed {
 logic [63:0] guid ;
} tlv_guid_word1_t;
typedef struct packed {
 logic [63:0] guid ;
} tlv_guid_word2_t;
typedef struct packed {
 logic [63:0] guid ;
} tlv_guid_word3_t;
typedef struct packed {
 logic [63:0] guid ;
} tlv_guid_word4_t;
typedef struct packed {
 logic [1:0] tlv_bip2 ;
 logic [1:0] rsvd3 ;
 logic [7:0] gen_frmd_out_type ;
 logic [1:0] rsvd2 ;
 frmd_mac_size_e raw_data_mac_size, enc_cmp_data_mac_size;
 frmd_coding_e coding;
 logic rsvd1;
 logic [10:0] tlv_frame_num ;
 logic [3:0] rsvd0 ;
 logic [3:0] tlv_eng_id ;
 logic [7:0] tlv_seq_num ;
 logic [7:0] tlv_len ;
 tlv_types_e tlv_type;
} tlv_ftr_word0_t;
typedef struct packed {
 logic [63:0] raw_data_mac ;
} tlv_ftr_word1_t;
typedef struct packed {
 logic [63:0] raw_data_mac ;
} tlv_ftr_word2_t;
typedef struct packed {
 logic [63:0] raw_data_mac ;
} tlv_ftr_word3_t;
typedef struct packed {
 logic [63:0] raw_data_mac ;
} tlv_ftr_word4_t;
typedef struct packed {
 logic [63:0] raw_data_cksum ;
} tlv_ftr_word5_t;
typedef struct packed {
 logic [63:0] raw_data_cksum_protocol ;
} tlv_ftr_word6_t;
typedef struct packed {
 logic [63:0] enc_cmp_data_mac ;
} tlv_ftr_word7_t;
typedef struct packed {
 logic [63:0] enc_cmp_data_mac ;
} tlv_ftr_word8_t;
typedef struct packed {
 logic [63:0] enc_cmp_data_mac ;
} tlv_ftr_word9_t;
typedef struct packed {
 logic [63:0] enc_cmp_data_mac ;
} tlv_ftr_word10_t;
typedef struct packed {
 logic [63:0] enc_cmp_data_cksum ;
} tlv_ftr_word11_t;
typedef struct packed {
 logic [15:0] nvme_raw_cksum_crc16t ;
 logic [23:0] bytes_in ;
 logic [23:0] bytes_out ;
} tlv_ftr_word12_t;
typedef struct packed {
 logic [19:0] rsvd1 ;
 logic [23:0] compressed_length ;
 zipline_error_e error_code;
 logic rsvd0;
 logic [10:0] errored_frame_number ;
} tlv_ftr_word13_t;
typedef struct packed {
 logic [63:0] guid ;
} tlv_ftr_guid_word0_t;
typedef struct packed {
 logic [63:0] guid ;
} tlv_ftr_guid_word1_t;
typedef struct packed {
 logic [63:0] guid ;
} tlv_ftr_guid_word2_t;
typedef struct packed {
 logic [63:0] guid ;
} tlv_ftr_guid_word3_t;
typedef struct packed {
 logic [31:0] rsvd ;
 logic [31:0] iv ;
} tlv_ftr_iv_word0_t;
typedef struct packed {
 logic [63:0] iv ;
} tlv_ftr_iv_word1_t;
typedef struct packed {
 logic [7:0] rsvd1 ;
 logic [23:0] bytes_in ;
 logic [7:0] rsvd0 ;
 logic [23:0] bytes_out ;
} tlv_stats_word1_t;
typedef struct packed {
 logic [30:0] rsvd1 ;
 logic frame_error;
 logic [7:0] rsvd0 ;
 logic [23:0] latency ;
} tlv_stats_word2_t;
typedef struct packed {
 logic [7:0] status_code ;
 logic do_not_resend;
 logic vf_valid;
 logic [1:0] rsvd0 ;
 logic [7:0] error_code ;
 logic [11:0] errored_frame_number ;
 logic [2:0] status_code_type ;
 logic [12:0] stat_cts ;
 logic [3:0] pf_number ;
 logic [11:0] vf_number ;
} tlv_cqe_word1_t;
typedef struct packed {
 logic [47:0] rsvd ;
 logic [15:0] nvme_raw_cksum_crc16t ;
} fmd_user_pi16_word1_t;
typedef struct packed {
 logic [63:0] raw_data_cksum ;
} fmd_user_pi64_word1_t;
typedef struct packed {
 logic [63:0] ivtweak ;
} fmd_user_vm_word1_t;
typedef struct packed {
 logic [63:0] ivtweak ;
} fmd_user_vm_word2_t;
typedef struct packed {
 logic [63:0] raw_data_cksum ;
} fmd_user_vm_word3_t;
typedef struct packed {
 logic [63:0] raw_data_mac ;
} fmd_user_vm_word4_t;
typedef struct packed {
 logic [63:0] raw_data_mac ;
} fmd_user_vm_word5_t;
typedef struct packed {
 logic [63:0] raw_data_mac ;
} fmd_user_vm_word6_t;
typedef struct packed {
 logic [63:0] raw_data_mac ;
} fmd_user_vm_word7_t;
typedef struct packed {
 logic [31:0] rsvd ;
 logic [5:0] rsvd0 ;
 frmd_coding_e coding;
 logic [23:0] compressed_length ;
} fmd_int_app_word6_t;
typedef struct packed {
 logic [63:0] enc_cmp_data_cksum ;
} fmd_int_app_word1_t;
typedef struct packed {
 logic [63:0] enc_cmp_mac ;
} fmd_int_app_word2_t;
typedef struct packed {
 logic [63:0] enc_cmp_mac ;
} fmd_int_app_word3_t;
typedef struct packed {
 logic [63:0] ivtweak ;
} fmd_int_app_word4_t;
typedef struct packed {
 logic [31:0] rsvd ;
 logic [31:0] ivtweak ;
} fmd_int_app_word5_t;
typedef struct packed {
 logic [31:0] rsvd ;
 logic [5:0] rsvd0 ;
 frmd_coding_e coding;
 logic [23:0] compressed_length ;
} fmd_int_sip_word3_t;
typedef struct packed {
 logic [63:0] enc_cmp_data_cksum ;
} fmd_int_sip_word1_t;
typedef struct packed {
 logic [63:0] raw_data_mac ;
} fmd_int_sip_word2_t;
typedef struct packed {
 logic [31:0] rsvd ;
 logic [5:0] rsvd0 ;
 frmd_coding_e coding;
 logic [23:0] compressed_length ;
} fmd_int_lip_word6_t;
typedef struct packed {
 logic [63:0] enc_cmp_data_cksum ;
} fmd_int_lip_word1_t;
typedef struct packed {
 logic [63:0] raw_data_mac ;
} fmd_int_lip_word2_t;
typedef struct packed {
 logic [63:0] raw_data_mac ;
} fmd_int_lip_word3_t;
typedef struct packed {
 logic [63:0] raw_data_mac ;
} fmd_int_lip_word4_t;
typedef struct packed {
 logic [63:0] raw_data_mac ;
} fmd_int_lip_word5_t;
typedef struct packed {
 logic [31:0] rsvd ;
 logic [5:0] rsvd0 ;
 frmd_coding_e coding;
 logic [23:0] compressed_length ;
} fmd_int_vm_word12_t;
typedef struct packed {
 logic [63:0] enc_cmp_data_cksum ;
} fmd_int_vm_word1_t;
typedef struct packed {
 logic [63:0] enc_cmp_data_mac ;
} fmd_int_vm_word2_t;
typedef struct packed {
 logic [63:0] enc_cmp_data_mac ;
} fmd_int_vm_word3_t;
typedef struct packed {
 logic [63:0] enc_cmp_data_mac ;
} fmd_int_vm_word4_t;
typedef struct packed {
 logic [63:0] enc_cmp_data_mac ;
} fmd_int_vm_word5_t;
typedef struct packed {
 logic [63:0] raw_data_mac ;
} fmd_int_vm_word6_t;
typedef struct packed {
 logic [63:0] raw_data_mac ;
} fmd_int_vm_word7_t;
typedef struct packed {
 logic [63:0] raw_data_mac ;
} fmd_int_vm_word8_t;
typedef struct packed {
 logic [63:0] raw_data_mac ;
} fmd_int_vm_word9_t;
typedef struct packed {
 logic [63:0] ivtweak ;
} fmd_int_vm_word10_t;
typedef struct packed {
 logic [63:0] ivtweak ;
} fmd_int_vm_word11_t;
typedef struct packed {
 logic [31:0] rsvd ;
 logic [5:0] rsvd0 ;
 frmd_coding_e coding;
 logic [23:0] compressed_length ;
} fmd_int_vm_short_word9_t;
typedef struct packed {
 logic [63:0] enc_cmp_data_cksum ;
} fmd_int_vm_short_word1_t;
typedef struct packed {
 logic [63:0] enc_cmp_data_mac ;
} fmd_int_vm_short_word2_t;
typedef struct packed {
 logic [63:0] enc_cmp_data_mac ;
} fmd_int_vm_short_word3_t;
typedef struct packed {
 logic [63:0] enc_cmp_data_mac ;
} fmd_int_vm_short_word4_t;
typedef struct packed {
 logic [63:0] enc_cmp_data_mac ;
} fmd_int_vm_short_word5_t;
typedef struct packed {
 logic [63:0] raw_data_mac ;
} fmd_int_vm_short_word6_t;
typedef struct packed {
 logic [63:0] ivtweak ;
} fmd_int_vm_short_word7_t;
typedef struct packed {
 logic [63:0] ivtweak ;
} fmd_int_vm_short_word8_t;
typedef struct packed {
 logic predet_mem_mask;
 logic [3:0] predet_mem_id ;
 cmd_comp_mode_e comp_mode;
 cmd_lz77_win_size_e lz77_win_size;
 cmd_lz77_min_match_len_e lz77_min_match_len;
 cmd_xp10_prefix_mode_e xp10_prefix_mode;
 logic [5:0] xp10_user_prefix_size ;
 cmd_xp10_crc_mode_e xp10_crc_mode;
 cmd_chu_comp_thrsh_e chu_comp_thrsh;
 logic [0:0] tid ;
 logic [7:0] tuser ;
 logic [23:0] raw_byte_count ;
 logic [17:0] extra_bit_count ;
 logic [10:0] blk_count ;
 logic blk_last;
 logic pdh_crc_err;
 logic [63:0] raw_crc ;
} s_sm_seq_id_intf;
typedef struct packed {
 cmd_comp_mode_e comp_mode;
 cmd_lz77_win_size_e lz77_win_size;
 cmd_xp10_prefix_mode_e xp10_prefix_mode;
} s_seq_id_type_intf;
typedef struct packed {
 logic [17:0] count_part1 ;
 logic [31:0] count_part0 ;
} counter_50_t;
typedef struct packed {
 logic cqe_out;
 logic cqe_sys_err;
 logic cqe_err_sel;
 logic cqe_eng_err;
} cg_stats_t;
typedef struct packed {
 logic [59:0] rsvd ;
 logic ob_stall;
 logic ob_sys_bp;
 logic pdt_fifo_stall;
 logic dat_fifo_stall;
} osf_stats_t;
typedef struct packed {
 logic [54:0] rsvd ;
 logic aux_cmd_match3;
 logic aux_cmd_match2;
 logic aux_cmd_match1;
 logic aux_cmd_match0;
 logic ob_sys_bp;
 logic ib_sys_stall;
 logic ib_stall;
 logic ib_frame;
 logic ib_cmd;
} isf_stats_t;
typedef struct packed {
 logic [9:0] huff_comp_rsvd ;
 logic lz77_stall_stb;
 logic encrypt_stall_stb;
 logic byte_7_stb;
 logic byte_6_stb;
 logic byte_5_stb;
 logic byte_4_stb;
 logic byte_3_stb;
 logic byte_2_stb;
 logic byte_1_stb;
 logic byte_0_stb;
 logic pass_thru_frm_stb;
 logic df_frm_stb;
 logic df_blk_long_ret_stb;
 logic df_blk_shrt_ret_stb;
 logic df_blk_long_sim_stb;
 logic df_blk_shrt_sim_stb;
 logic df_blk_raw_stb;
 logic df_blk_enc_stb;
 logic chu4_cmd_stb;
 logic chu4_frm_long_pre_stb;
 logic chu4_frm_shrt_pre_stb;
 logic chu4_frm_long_ret_stb;
 logic chu4_frm_shrt_ret_stb;
 logic chu4_frm_long_sim_stb;
 logic chu4_frm_shrt_sim_stb;
 logic chu4_frm_enc_stb;
 logic chu4_frm_raw_stb;
 logic chu8_cmd_stb;
 logic chu8_frm_long_pre_stb;
 logic chu8_frm_shrt_pre_stb;
 logic chu8_frm_long_ret_stb;
 logic chu8_frm_shrt_ret_stb;
 logic chu8_frm_long_sim_stb;
 logic chu8_frm_shrt_sim_stb;
 logic chu8_frm_enc_stb;
 logic chu8_frm_raw_stb;
 logic xp10_frm_stb;
 logic xp10_blk_long_pre_stb;
 logic xp10_blk_shrt_pre_stb;
 logic xp10_blk_long_ret_stb;
 logic xp10_blk_shrt_ret_stb;
 logic xp10_blk_long_sim_stb;
 logic xp10_blk_shrt_sim_stb;
 logic xp10_blk_raw_stb;
 logic xp10_blk_enc_stb;
 logic xp9_blk_long_ret_stb;
 logic xp9_blk_shrt_ret_stb;
 logic xp9_blk_long_sim_stb;
 logic xp9_blk_shrt_sim_stb;
 logic xp9_frm_stb;
 logic xp9_frm_raw_stb;
 logic xp9_blk_enc_stb;
 logic long_map_err_stb;
 logic shrt_map_err_stb;
} huf_comp_stats_t;
typedef struct packed {
 logic [48:0] unused ;
 logic [0:0] cipher_aes_gcm ;
 logic [0:0] cipher_aes_xts ;
 logic [0:0] cipher_aes_xex ;
 logic [0:0] cipher_nop ;
 logic [0:0] auth_aes_gmac ;
 logic [0:0] auth_sha256 ;
 logic [0:0] auth_sha256_hmac ;
 logic [0:0] auth_nop ;
 logic [0:0] gcm_tag_fail ;
 logic [0:0] gmac_tag_fail ;
 logic [0:0] sha256_tag_fail ;
 logic [0:0] hmac_sha256_tag_fail ;
 logic [0:0] seq_id_mismatch ;
 logic [0:0] eng_id_mismatch ;
 logic [0:0] reserved ;
} crypto_stats_t;
typedef struct packed {
 aux_key_op_e dak_key_op;
 logic [13:0] dak_key_ref ;
 aux_kdf_mode_e kdf_mode;
 aux_key_op_e dek_key_op;
 logic [13:0] dek_key_ref ;
} aux_key_ctrl_t;
typedef struct packed {
 logic tvalid;
 logic tlast;
 logic [1:0] tuser ;
 logic [7:0] tdata ;
} axi4s_su_dp_bus_t;
typedef struct packed {
 logic tlvp_err;
 logic uncor_ecc_err;
 logic bimc_int;
} generic_int_t;
typedef struct packed {
 logic uncor_ecc_err;
} ecc_int_t;
typedef struct packed {
 logic tlvp_err;
} tlvp_int_t;
typedef struct packed {
 logic bimc_err;
} bimc_int_t;
typedef struct packed {
 logic seed_expire;
 logic id_mismatch;
 logic tlvp_err;
 logic uncor_ecc_err;
} crypto_int_t;
typedef struct packed {
 logic id_mismatch;
 logic tlvp_err;
} crypto_ckmic_int_t;
typedef struct packed {
 logic tlvp_err;
 logic uncor_ecc_err;
} osf_int_t;
typedef struct packed {
 logic sys_stall;
 logic ovfl;
 logic prot_err;
 logic tlvp_int;
 logic uncor_ecc_err;
} isf_int_t;
typedef struct packed {
 logic tlvp_err;
 logic uncor_ecc_err;
} prefix_attach_int_t;
typedef struct packed {
 zipline_error_e error_code;
 logic [10:0] errored_frame_number ;
} ftr_error_t;
typedef struct packed {
 logic [0:0] valid ;
 logic [2:0] label_index ;
 logic [1:0] ckv_length ;
 logic [14:0] ckv_pointer ;
 logic [3:0] pf_num ;
 logic [11:0] vf_num ;
 logic [0:0] vf_valid ;
} kim_entry_t;
typedef struct packed {
 logic [0:0] guid_size ;
 logic [5:0] label_size ;
 logic [255:0] label ;
 logic [0:0] delimiter_valid ;
 logic [7:0] delimiter ;
} label_t;
typedef struct packed {
 logic [0:0] valid ;
 logic [2:0] label_index ;
 logic [0:0] pf_num ;
 logic [0:0] vf_valid ;
 logic [8:0] vf_num ;
 logic [511:0] ckv_key ;
} kim_ckv_resp_t;
typedef enum logic [3:0] {KME_WORD0=4'b0,KME_DEBUG_KEYHDR=4'b01,KME_IVTWEAK=4'b010,KME_GUID=4'b011,KME_KIM=4'b0100,KME_DEK_CKV0=4'b0101,KME_DEK_CKV1=4'b0110,KME_DAK_CKV=4'b0111,KME_EIV=4'b1000,KME_DEK0=4'b1001,
KME_DEK1=4'b1010,KME_ETAG=4'b1011,KME_AIV=4'b1100,KME_DAK=4'b1101,KME_ATAG=4'b1110,KME_ERROR=4'b1111} kme_internal_id;
typedef enum logic [5:0] {IDX_KME_WORD0=6'b0,IDX_KME_DEBUG_KEYHDR=6'b01,IDX_KME_GUID=6'b010,IDX_KME_IVTWEAK=6'b0110,IDX_KME_KIM=6'b01000,IDX_KME_DEK_CKV0=6'b01010,IDX_KME_DEK_CKV1=6'b01110,IDX_KME_DAK_CKV=6'b010010,IDX_KME_EIV=6'b010110,IDX_KME_DEK0=6'b011000,
IDX_KME_DEK1=6'b011100,IDX_KME_ETAG=6'b100000,IDX_KME_AIV=6'b100010,IDX_KME_DAK=6'b100100,IDX_KME_ATAG=6'b101000,IDX_KME_ERROR=6'b101010} kme_internal_idx;
typedef struct packed {
 logic [0:0] sot ;
 logic [0:0] eoi ;
 logic [0:0] eot ;
 kme_internal_id id;
 logic [63:0] tdata ;
} kme_internal_t;
typedef struct packed {
 logic [1:0] tlv_bip2 ;
 logic [12:0] resv0 ;
 logic [0:0] kdf_dek_iter ;
 logic [0:0] keyless_algos ;
 logic [0:0] needs_dek ;
 logic [0:0] needs_dak ;
 aux_key_type_e key_type;
 logic [10:0] tlv_frame_num ;
 logic [3:0] tlv_eng_id ;
 logic [7:0] tlv_seq_num ;
 logic [7:0] tlv_len ;
 tlv_types_e tlv_type;
} kme_internal_word_0_t;
typedef struct packed {
 kim_entry_t dek_kim_entry;
 logic [5:0] unused ;
 logic [0:0] missing_iv ;
 logic [0:0] missing_guid ;
 logic [0:0] validate_dek ;
 logic [0:0] vf_valid ;
 logic [3:0] pf_num ;
 logic [11:0] vf_num ;
} kme_internal_word_8_t;
typedef struct packed {
 kim_entry_t dak_kim_entry;
 logic [7:0] unused ;
 logic [0:0] validate_dak ;
 logic [0:0] vf_valid ;
 logic [3:0] pf_num ;
 logic [11:0] vf_num ;
} kme_internal_word_9_t;
typedef struct packed {
 logic [0:0] corrupt_crc32 ;
 logic [46:0] unused ;
 zipline_error_e error_code;
} kme_internal_word_42_t;
typedef enum logic [2:0] {PT_CKV=3'b0,PT_KEY_BLOB=3'b01,DECRYPT_DEK256=3'b010,DECRYPT_DEK512=3'b011,DECRYPT_DAK=3'b100,DECRYPT_DEK256_COMB=3'b101,DECRYPT_DEK512_COMB=3'b110,DECRYPT_DAK_COMB=3'b111} gcm_op_e;
typedef struct packed {
 logic [255:0] key0 ;
 logic [255:0] key1 ;
 logic [95:0] iv ;
 gcm_op_e op;
} gcm_cmd_t;
typedef struct packed {
 logic [0:0] tag_mismatch ;
} gcm_status_t;
typedef struct packed {
 logic [0:0] combo_mode ;
} keyfilter_cmd_t;
typedef struct packed {
 logic [0:0] kdf_dek_iter ;
 logic [0:0] combo_mode ;
 aux_key_op_e dek_key_op, dak_key_op;
} kdf_cmd_t;
typedef struct packed {
 logic [0:0] combo_mode ;
 logic [0:0] skip ;
 logic [255:0] guid ;
 logic [2:0] label_index ;
 logic [1:0] num_iter ;
} kdfstream_cmd_t;
// synopsys translate_off
import cr_kmePKG::* ;
// synopsys translate_on
import cr_kme_regfilePKG::* ;
localparam CKV_NUM_ENTRIES = 32768;
localparam CKV_DATA_WIDTH = 64;
localparam KIM_NUM_ENTRIES = 16384;
localparam KIM_DATA_WIDTH = 38;
input  clk;
input  rst_n;
output  suppress_key_tlvs;
output  kme_interrupt;
input  ovstb;
input  lvm;
input  mlvm;
input kme_rbus_ring_t rbus_ring_i;
output kme_rbus_ring_t rbus_ring_o;
input  [15:0] cfg_start_addr ;
input  [15:0] cfg_end_addr ;
input axi4s_dp_bus_t kme_cceip0_ob_out_pre;
input axi4s_dp_rdy_t kme_cceip0_ob_in;
output axi4s_dp_bus_t kme_cceip0_ob_out;
output axi4s_dp_rdy_t kme_cceip0_ob_in_mod;
input axi4s_dp_bus_t kme_cceip1_ob_out_pre;
input axi4s_dp_rdy_t kme_cceip1_ob_in;
output axi4s_dp_bus_t kme_cceip1_ob_out;
output axi4s_dp_rdy_t kme_cceip1_ob_in_mod;
input axi4s_dp_bus_t kme_cceip2_ob_out_pre;
input axi4s_dp_rdy_t kme_cceip2_ob_in;
output axi4s_dp_bus_t kme_cceip2_ob_out;
output axi4s_dp_rdy_t kme_cceip2_ob_in_mod;
input axi4s_dp_bus_t kme_cceip3_ob_out_pre;
input axi4s_dp_rdy_t kme_cceip3_ob_in;
output axi4s_dp_bus_t kme_cceip3_ob_out;
output axi4s_dp_rdy_t kme_cceip3_ob_in_mod;
input axi4s_dp_bus_t kme_cddip0_ob_out_pre;
input axi4s_dp_rdy_t kme_cddip0_ob_in;
output axi4s_dp_bus_t kme_cddip0_ob_out;
output axi4s_dp_rdy_t kme_cddip0_ob_in_mod;
input axi4s_dp_bus_t kme_cddip1_ob_out_pre;
input axi4s_dp_rdy_t kme_cddip1_ob_in;
output axi4s_dp_bus_t kme_cddip1_ob_out;
output axi4s_dp_rdy_t kme_cddip1_ob_in_mod;
input axi4s_dp_bus_t kme_cddip2_ob_out_pre;
input axi4s_dp_rdy_t kme_cddip2_ob_in;
output axi4s_dp_bus_t kme_cddip2_ob_out;
output axi4s_dp_rdy_t kme_cddip2_ob_in_mod;
input axi4s_dp_bus_t kme_cddip3_ob_out_pre;
input axi4s_dp_rdy_t kme_cddip3_ob_in;
output axi4s_dp_bus_t kme_cddip3_ob_out;
output axi4s_dp_rdy_t kme_cddip3_ob_in_mod;
input  ckv_rd;
input  [14:0] ckv_addr ;
output  [63:0] ckv_dout ;
output  ckv_mbe;
input  kim_rd;
input  [13:0] kim_addr ;
output kim_entry_t kim_dout;
output  kim_mbe;
output  bimc_rst_n;
input  cceip_encrypt_bimc_osync;
input  cceip_encrypt_bimc_odat;
output  cceip_encrypt_bimc_isync;
output  cceip_encrypt_bimc_idat;
input  cceip_encrypt_mbe;
input  cceip_validate_bimc_osync;
input  cceip_validate_bimc_odat;
output  cceip_validate_bimc_isync;
output  cceip_validate_bimc_idat;
input  cceip_validate_mbe;
input  cddip_decrypt_bimc_osync;
input  cddip_decrypt_bimc_odat;
output  cddip_decrypt_bimc_isync;
output  cddip_decrypt_bimc_idat;
input  cddip_decrypt_mbe;
input  axi_bimc_osync;
input  axi_bimc_odat;
output  axi_bimc_isync;
output  axi_bimc_idat;
input  axi_mbe;
output label_t [7:0] labels ;
output  seed0_valid;
output  [255:0] seed0_internal_state_key ;
output  [127:0] seed0_internal_state_value ;
output  [47:0] seed0_reseed_interval ;
output  seed1_valid;
output  [255:0] seed1_internal_state_key ;
output  [127:0] seed1_internal_state_value ;
output  [47:0] seed1_reseed_interval ;
input  seed0_invalidate;
input  seed1_invalidate;
input  set_txc_bp_int;
input  set_gcm_tag_fail_int;
input  set_key_tlv_miscmp_int;
input  set_tlv_bip2_error_int;
input  [7:0] set_rsm_is_backpressuring ;
output cr_kme_regfilePKG::tready_override_t tready_override;
output cr_kme_regfilePKG::kop_fifo_override_t cceip_encrypt_kop_fifo_override, cceip_validate_kop_fifo_override, cddip_decrypt_kop_fifo_override;
input cr_kme_regfilePKG::idle_t idle_components;
output  manual_txc;
output  always_validate_kim_ref;
output  kdf_test_mode_en;
output  [31:0] kdf_test_key_size ;
output cr_kme_regfilePKG::sa_global_ctrl_t sa_global_ctrl;
output cr_kme_regfilePKG::sa_ctrl_t sa_ctrl [31:0];
input cr_kme_regfilePKG::sa_snapshot_t sa_snapshot [31:0];
input cr_kme_regfilePKG::sa_count_t sa_count [31:0];
output  debug_kme_ib_tvalid;
output  debug_kme_ib_tlast;
output  [0:0] debug_kme_ib_tid ;
output  [7:0] debug_kme_ib_tstrb ;
output  [7:0] debug_kme_ib_tuser ;
output  [63:0] debug_kme_ib_tdata ;
input  debug_kme_ib_tready;
logic axi_term_bimc_idat;
logic axi_term_bimc_isync;
logic [10:0] bimc_cmd2 ;
logic [31:0] bimc_dbgcmd0 ;
logic [31:0] bimc_dbgcmd1 ;
logic [9:0] bimc_dbgcmd2 ;
logic [31:0] bimc_ecc_correctable_error_cnt ;
logic [31:0] bimc_ecc_uncorrectable_error_cnt ;
logic [28:0] bimc_eccpar_debug ;
logic [31:0] bimc_global_config ;
logic bimc_interrupt;
logic [11:0] bimc_memid ;
logic [6:0] bimc_monitor ;
logic [31:0] bimc_parity_error_cnt ;
logic [31:0] bimc_pollrsp0 ;
logic [31:0] bimc_pollrsp1 ;
logic [9:0] bimc_pollrsp2 ;
logic [31:0] bimc_rxcmd0 ;
logic [31:0] bimc_rxcmd1 ;
logic [9:0] bimc_rxcmd2 ;
logic [31:0] bimc_rxrsp0 ;
logic [31:0] bimc_rxrsp1 ;
logic [9:0] bimc_rxrsp2 ;
logic cceip0_im_rdy;
logic cceip0_ism_bimc_idat;
logic cceip0_ism_bimc_isync;
logic cceip0_ism_mbe;
logic cceip1_im_rdy;
logic cceip1_ism_idat;
logic cceip1_ism_isync;
logic cceip1_ism_mbe;
logic cceip2_im_rdy;
logic cceip2_ism_idat;
logic cceip2_ism_isync;
logic cceip2_ism_mbe;
logic cceip3_im_rdy;
logic cceip3_ism_idat;
logic cceip3_ism_isync;
logic cceip3_ism_mbe;
logic cddip0_im_rdy;
logic cddip0_ism_idat;
logic cddip0_ism_isync;
logic cddip0_ism_mbe;
logic cddip1_im_rdy;
logic cddip1_ism_idat;
logic cddip1_ism_isync;
logic cddip1_ism_mbe;
logic cddip2_im_rdy;
logic cddip2_ism_idat;
logic cddip2_ism_isync;
logic cddip2_ism_mbe;
logic cddip3_im_rdy;
logic cddip3_ism_idat;
logic cddip3_ism_isync;
logic cddip3_ism_mbe;
logic cddip3_ism_odat;
logic cddip3_ism_osync;
logic ckv_bimc_idat;
logic ckv_bimc_isync;
logic [15:0] ckv_capability_lst ;
logic [3:0] ckv_capability_type ;
logic [14:0] ckv_cmnd_addr ;
logic [3:0] ckv_cmnd_op ;
cr_kme_regfilePKG::ckv_ia_capability_t ckv_ia_capability;
logic [31:0] ckv_ia_rdata_part0 ;
logic [31:0] ckv_ia_rdata_part1 ;
cr_kme_regfilePKG::ckv_ia_status_t ckv_ia_status;
logic [63:0] ckv_rd_dat ;
logic [14:0] ckv_stat_addr ;
logic [2:0] ckv_stat_code ;
logic [4:0] ckv_stat_datawords ;
logic [63:0] ckv_wr_dat ;
logic disable_ckv_kim_ism_reads;
logic [7:0] engine_sticky_status ;
logic [4:0] interrupt_status ;
logic [1:0] kdf_drbg_ctrl ;
logic kim_bimc_idat;
logic kim_bimc_isync;
logic [15:0] kim_capability_lst ;
logic [3:0] kim_capability_type ;
logic [13:0] kim_cmnd_addr ;
logic [3:0] kim_cmnd_op ;
cr_kme_regfilePKG::kim_ia_capability_t kim_ia_capability;
logic [20:0] kim_ia_rdata_part0 ;
logic [16:0] kim_ia_rdata_part1 ;
cr_kme_regfilePKG::kim_ia_status_t kim_ia_status;
logic [37:0] kim_rd_dat ;
logic [13:0] kim_stat_addr ;
logic [2:0] kim_stat_code ;
logic [4:0] kim_stat_datawords ;
logic [37:0] kim_wr_dat ;
logic locl_ack;
logic locl_err_ack;
logic [31:0] locl_rd_data ;
logic locl_rd_strb;
logic locl_wr_strb;
logic [31:0] o_bimc_cmd0 ;
logic [31:0] o_bimc_cmd1 ;
logic [10:0] o_bimc_cmd2 ;
logic [9:0] o_bimc_dbgcmd2 ;
logic [31:0] o_bimc_ecc_correctable_error_cnt ;
logic [31:0] o_bimc_ecc_uncorrectable_error_cnt ;
logic [28:0] o_bimc_eccpar_debug ;
logic [31:0] o_bimc_global_config ;
logic [6:0] o_bimc_monitor_mask ;
logic [31:0] o_bimc_parity_error_cnt ;
logic [9:0] o_bimc_pollrsp2 ;
logic [9:0] o_bimc_rxcmd2 ;
logic [9:0] o_bimc_rxrsp2 ;
logic [18:0] o_ckv_ia_config ;
logic [31:0] o_ckv_ia_wdata_part0 ;
logic [31:0] o_ckv_ia_wdata_part1 ;
logic o_disable_ckv_kim_ism_reads;
logic [7:0] o_engine_sticky_status ;
logic [4:0] o_interrupt_mask ;
logic [1:0] o_kdf_drbg_ctrl ;
logic [31:0] o_kdf_drbg_seed_0_reseed_interval_0 ;
logic [15:0] o_kdf_drbg_seed_0_reseed_interval_1 ;
logic [31:0] o_kdf_drbg_seed_0_state_key_127_96 ;
logic [31:0] o_kdf_drbg_seed_0_state_key_159_128 ;
logic [31:0] o_kdf_drbg_seed_0_state_key_191_160 ;
logic [31:0] o_kdf_drbg_seed_0_state_key_223_192 ;
logic [31:0] o_kdf_drbg_seed_0_state_key_255_224 ;
logic [31:0] o_kdf_drbg_seed_0_state_key_31_0 ;
logic [31:0] o_kdf_drbg_seed_0_state_key_63_32 ;
logic [31:0] o_kdf_drbg_seed_0_state_key_95_64 ;
logic [31:0] o_kdf_drbg_seed_0_state_value_127_96 ;
logic [31:0] o_kdf_drbg_seed_0_state_value_31_0 ;
logic [31:0] o_kdf_drbg_seed_0_state_value_63_32 ;
logic [31:0] o_kdf_drbg_seed_0_state_value_95_64 ;
logic [31:0] o_kdf_drbg_seed_1_reseed_interval_0 ;
logic [15:0] o_kdf_drbg_seed_1_reseed_interval_1 ;
logic [31:0] o_kdf_drbg_seed_1_state_key_127_96 ;
logic [31:0] o_kdf_drbg_seed_1_state_key_159_128 ;
logic [31:0] o_kdf_drbg_seed_1_state_key_191_160 ;
logic [31:0] o_kdf_drbg_seed_1_state_key_223_192 ;
logic [31:0] o_kdf_drbg_seed_1_state_key_255_224 ;
logic [31:0] o_kdf_drbg_seed_1_state_key_31_0 ;
logic [31:0] o_kdf_drbg_seed_1_state_key_63_32 ;
logic [31:0] o_kdf_drbg_seed_1_state_key_95_64 ;
logic [31:0] o_kdf_drbg_seed_1_state_value_127_96 ;
logic [31:0] o_kdf_drbg_seed_1_state_value_31_0 ;
logic [31:0] o_kdf_drbg_seed_1_state_value_63_32 ;
logic [31:0] o_kdf_drbg_seed_1_state_value_95_64 ;
logic [17:0] o_kim_ia_config ;
logic [20:0] o_kim_ia_wdata_part0 ;
logic [16:0] o_kim_ia_wdata_part1 ;
logic o_send_kme_ib_beat;
logic o_tready_override_val;
logic [31:0] regs_sa_ctrl ;
logic send_kme_ib_beat;
logic set_drbg_expired_int;
logic [31:0] wr_data ;
logic wr_stb;
logic [10:0] reg_addr ;
logic [10:0] locl_addr ;
logic [31:0] locl_wr_data ;
cr_kme_regfilePKG::spare_t spare;
cr_kme_regfilePKG::cceip0_out_t cceip0_out_ia_wdata;
cr_kme_regfilePKG::cceip0_out_ia_config_t cceip0_out_ia_config;
cr_kme_regfilePKG::cceip0_out_t cceip0_out_ia_rdata;
cr_kme_regfilePKG::cceip0_out_ia_status_t cceip0_out_ia_status;
cr_kme_regfilePKG::cceip0_out_ia_capability_t cceip0_out_ia_capability;
cr_kme_regfilePKG::cceip0_out_im_status_t cceip0_out_im_status;
cr_kme_regfilePKG::cceip0_out_im_config_t cceip0_out_im_config;
cr_kme_regfilePKG::cddip0_out_t cddip0_out_ia_wdata;
cr_kme_regfilePKG::cddip0_out_ia_config_t cddip0_out_ia_config;
cr_kme_regfilePKG::cddip0_out_t cddip0_out_ia_rdata;
cr_kme_regfilePKG::cddip0_out_ia_status_t cddip0_out_ia_status;
cr_kme_regfilePKG::cddip0_out_ia_capability_t cddip0_out_ia_capability;
cr_kme_regfilePKG::cddip0_out_im_status_t cddip0_out_im_status;
cr_kme_regfilePKG::cddip0_out_im_config_t cddip0_out_im_config;
cr_kme_regfilePKG::cceip1_out_t cceip1_out_ia_wdata;
cr_kme_regfilePKG::cceip1_out_ia_config_t cceip1_out_ia_config;
cr_kme_regfilePKG::cceip1_out_t cceip1_out_ia_rdata;
cr_kme_regfilePKG::cceip1_out_ia_status_t cceip1_out_ia_status;
cr_kme_regfilePKG::cceip1_out_ia_capability_t cceip1_out_ia_capability;
cr_kme_regfilePKG::cceip1_out_im_status_t cceip1_out_im_status;
cr_kme_regfilePKG::cceip1_out_im_config_t cceip1_out_im_config;
cr_kme_regfilePKG::cddip1_out_t cddip1_out_ia_wdata;
cr_kme_regfilePKG::cddip1_out_ia_config_t cddip1_out_ia_config;
cr_kme_regfilePKG::cddip1_out_t cddip1_out_ia_rdata;
cr_kme_regfilePKG::cddip1_out_ia_status_t cddip1_out_ia_status;
cr_kme_regfilePKG::cddip1_out_ia_capability_t cddip1_out_ia_capability;
cr_kme_regfilePKG::cddip1_out_im_status_t cddip1_out_im_status;
cr_kme_regfilePKG::cddip1_out_im_config_t cddip1_out_im_config;
cr_kme_regfilePKG::cceip2_out_t cceip2_out_ia_wdata;
cr_kme_regfilePKG::cceip2_out_ia_config_t cceip2_out_ia_config;
cr_kme_regfilePKG::cceip2_out_t cceip2_out_ia_rdata;
cr_kme_regfilePKG::cceip2_out_ia_status_t cceip2_out_ia_status;
cr_kme_regfilePKG::cceip2_out_ia_capability_t cceip2_out_ia_capability;
cr_kme_regfilePKG::cceip2_out_im_status_t cceip2_out_im_status;
cr_kme_regfilePKG::cceip2_out_im_config_t cceip2_out_im_config;
cr_kme_regfilePKG::cddip2_out_t cddip2_out_ia_wdata;
cr_kme_regfilePKG::cddip2_out_ia_config_t cddip2_out_ia_config;
cr_kme_regfilePKG::cddip2_out_t cddip2_out_ia_rdata;
cr_kme_regfilePKG::cddip2_out_ia_status_t cddip2_out_ia_status;
cr_kme_regfilePKG::cddip2_out_ia_capability_t cddip2_out_ia_capability;
cr_kme_regfilePKG::cddip2_out_im_status_t cddip2_out_im_status;
cr_kme_regfilePKG::cddip2_out_im_config_t cddip2_out_im_config;
cr_kme_regfilePKG::cceip3_out_t cceip3_out_ia_wdata;
cr_kme_regfilePKG::cceip3_out_ia_config_t cceip3_out_ia_config;
cr_kme_regfilePKG::cceip3_out_t cceip3_out_ia_rdata;
cr_kme_regfilePKG::cceip3_out_ia_status_t cceip3_out_ia_status;
cr_kme_regfilePKG::cceip3_out_ia_capability_t cceip3_out_ia_capability;
cr_kme_regfilePKG::cceip3_out_im_status_t cceip3_out_im_status;
cr_kme_regfilePKG::cceip3_out_im_config_t cceip3_out_im_config;
cr_kme_regfilePKG::cddip3_out_t cddip3_out_ia_wdata;
cr_kme_regfilePKG::cddip3_out_ia_config_t cddip3_out_ia_config;
cr_kme_regfilePKG::cddip3_out_t cddip3_out_ia_rdata;
cr_kme_regfilePKG::cddip3_out_ia_status_t cddip3_out_ia_status;
cr_kme_regfilePKG::cddip3_out_ia_capability_t cddip3_out_ia_capability;
cr_kme_regfilePKG::cddip3_out_im_status_t cddip3_out_im_status;
cr_kme_regfilePKG::cddip3_out_im_config_t cddip3_out_im_config;
cr_kme_regfilePKG::sa_snapshot_t sa_snapshot_ia_wdata, sa_snapshot_ia_rdata;
cr_kme_regfilePKG::sa_snapshot_ia_config_t sa_snapshot_ia_config;
cr_kme_regfilePKG::sa_snapshot_ia_status_t sa_snapshot_ia_status;
cr_kme_regfilePKG::sa_snapshot_ia_capability_t sa_snapshot_ia_capability;
cr_kme_regfilePKG::sa_count_t sa_count_ia_wdata, sa_count_ia_rdata;
cr_kme_regfilePKG::sa_count_ia_config_t sa_count_ia_config;
cr_kme_regfilePKG::sa_count_ia_status_t sa_count_ia_status;
cr_kme_regfilePKG::sa_count_ia_capability_t sa_count_ia_capability;
cr_kme_regfilePKG::sa_ctrl_t sa_ctrl_ia_wdata, sa_ctrl_ia_rdata;
cr_kme_regfilePKG::sa_ctrl_ia_config_t sa_ctrl_ia_config;
cr_kme_regfilePKG::sa_ctrl_ia_status_t sa_ctrl_ia_status;
cr_kme_regfilePKG::sa_ctrl_ia_capability_t sa_ctrl_ia_capability;
cr_kme_regfilePKG::sa_ctrl_t sa_ctrl_rst_dat [31:0];
im_din_t cceip0_im_din;
logic cceip0_im_vld;
im_din_t cddip0_im_din;
logic cddip0_im_vld;
im_din_t cceip1_im_din;
logic cceip1_im_vld;
im_din_t cddip1_im_din;
logic cddip1_im_vld;
im_din_t cceip2_im_din;
logic cceip2_im_vld;
im_din_t cddip2_im_din;
logic cddip2_im_vld;
im_din_t cceip3_im_din;
logic cceip3_im_vld;
im_din_t cddip3_im_din;
logic cddip3_im_vld;
logic [15:0] im_available ;
im_consumed_t im_consumed_kme_cceip0;
im_available_t im_available_kme_cceip0;
im_consumed_t im_consumed_kme_cddip0;
im_available_t im_available_kme_cddip0;
im_consumed_t im_consumed_kme_cceip1;
im_available_t im_available_kme_cceip1;
im_consumed_t im_consumed_kme_cddip1;
im_available_t im_available_kme_cddip1;
im_consumed_t im_consumed_kme_cceip2;
im_available_t im_available_kme_cceip2;
im_consumed_t im_consumed_kme_cddip2;
im_available_t im_available_kme_cddip2;
im_consumed_t im_consumed_kme_cceip3;
im_available_t im_available_kme_cceip3;
im_consumed_t im_consumed_kme_cddip3;
im_available_t im_available_kme_cddip3;
axi4s_dp_bus_t kme_cceip0_ob_out_post, kme_cceip1_ob_out_post, kme_cceip2_ob_out_post, kme_cceip3_ob_out_post, kme_cddip0_ob_out_post, kme_cddip1_ob_out_post, kme_cddip2_ob_out_post, kme_cddip3_ob_out_post;
logic [31:0] blkid_revid_config ;
cr_kme_regfilePKG::revid_t revid_wire;
wire  [0:83] _zy_simnet_rbus_ring_o_0_w$ ;
wire  [0:82] _zy_simnet_kme_cceip0_ob_out_1_w$ ;
wire  _zy_simnet_kme_cceip0_ob_in_mod_2_w$;
wire  [0:82] _zy_simnet_kme_cceip1_ob_out_3_w$ ;
wire  _zy_simnet_kme_cceip1_ob_in_mod_4_w$;
wire  [0:82] _zy_simnet_kme_cceip2_ob_out_5_w$ ;
wire  _zy_simnet_kme_cceip2_ob_in_mod_6_w$;
wire  [0:82] _zy_simnet_kme_cceip3_ob_out_7_w$ ;
wire  _zy_simnet_kme_cceip3_ob_in_mod_8_w$;
wire  [0:82] _zy_simnet_kme_cddip0_ob_out_9_w$ ;
wire  _zy_simnet_kme_cddip0_ob_in_mod_10_w$;
wire  [0:82] _zy_simnet_kme_cddip1_ob_out_11_w$ ;
wire  _zy_simnet_kme_cddip1_ob_in_mod_12_w$;
wire  [0:82] _zy_simnet_kme_cddip2_ob_out_13_w$ ;
wire  _zy_simnet_kme_cddip2_ob_in_mod_14_w$;
wire  [0:82] _zy_simnet_kme_cddip3_ob_out_15_w$ ;
wire  _zy_simnet_kme_cddip3_ob_in_mod_16_w$;
wire  [0:37] _zy_simnet_kim_dout_17_w$ ;
wire  [0:2175] _zy_simnet_labels_18_w$ ;
wire  [0:8] _zy_simnet_tready_override_19_w$ ;
wire  [0:6] _zy_simnet_cceip_encrypt_kop_fifo_override_20_w$ ;
wire  [0:6] _zy_simnet_cceip_validate_kop_fifo_override_21_w$ ;
wire  [0:6] _zy_simnet_cddip_decrypt_kop_fifo_override_22_w$ ;
wire  [0:31] _zy_simnet_sa_global_ctrl_23_w$ ;
wire  _zy_simnet_cio_24;
wire  [0:10] _zy_simnet_locl_addr_25_w$ ;
wire  _zy_simnet_locl_wr_strb_26_w$;
wire  [0:31] _zy_simnet_locl_wr_data_27_w$ ;
wire  _zy_simnet_locl_rd_strb_28_w$;
wire  [0:31] _zy_simnet_locl_rd_data_29_w$ ;
wire  _zy_simnet_locl_ack_30_w$;
wire  _zy_simnet_locl_err_ack_31_w$;
wire  [0:31] _zy_simnet_tvar_32 ;
wire  [0:24] _zy_simnet_tvar_33 ;
wire  _zy_simnet_tvar_34;
wire  _zy_simnet_tvar_35;
wire  _zy_simnet_tvar_36;
wire  _zy_simnet_tvar_37;
wire  [0:31] _zy_simnet_cceip0_out_ia_wdata_38_w$ ;
wire  [0:31] _zy_simnet_cceip0_out_ia_wdata_39_w$ ;
wire  [0:31] _zy_simnet_cceip0_out_ia_wdata_40_w$ ;
wire  [0:12] _zy_simnet_cceip0_out_ia_config_41_w$ ;
wire  [0:11] _zy_simnet_cceip0_out_im_config_42_w$ ;
wire  [0:1] _zy_simnet_dio_43 ;
wire  [0:31] _zy_simnet_cceip1_out_ia_wdata_44_w$ ;
wire  [0:31] _zy_simnet_cceip1_out_ia_wdata_45_w$ ;
wire  [0:31] _zy_simnet_cceip1_out_ia_wdata_46_w$ ;
wire  [0:12] _zy_simnet_cceip1_out_ia_config_47_w$ ;
wire  [0:11] _zy_simnet_cceip1_out_im_config_48_w$ ;
wire  [0:1] _zy_simnet_dio_49 ;
wire  [0:31] _zy_simnet_cceip2_out_ia_wdata_50_w$ ;
wire  [0:31] _zy_simnet_cceip2_out_ia_wdata_51_w$ ;
wire  [0:31] _zy_simnet_cceip2_out_ia_wdata_52_w$ ;
wire  [0:12] _zy_simnet_cceip2_out_ia_config_53_w$ ;
wire  [0:11] _zy_simnet_cceip2_out_im_config_54_w$ ;
wire  [0:1] _zy_simnet_dio_55 ;
wire  [0:31] _zy_simnet_cceip3_out_ia_wdata_56_w$ ;
wire  [0:31] _zy_simnet_cceip3_out_ia_wdata_57_w$ ;
wire  [0:31] _zy_simnet_cceip3_out_ia_wdata_58_w$ ;
wire  [0:12] _zy_simnet_cceip3_out_ia_config_59_w$ ;
wire  [0:11] _zy_simnet_cceip3_out_im_config_60_w$ ;
wire  [0:1] _zy_simnet_dio_61 ;
wire  [0:31] _zy_simnet_cddip0_out_ia_wdata_62_w$ ;
wire  [0:31] _zy_simnet_cddip0_out_ia_wdata_63_w$ ;
wire  [0:31] _zy_simnet_cddip0_out_ia_wdata_64_w$ ;
wire  [0:12] _zy_simnet_cddip0_out_ia_config_65_w$ ;
wire  [0:11] _zy_simnet_cddip0_out_im_config_66_w$ ;
wire  [0:1] _zy_simnet_dio_67 ;
wire  [0:31] _zy_simnet_cddip1_out_ia_wdata_68_w$ ;
wire  [0:31] _zy_simnet_cddip1_out_ia_wdata_69_w$ ;
wire  [0:31] _zy_simnet_cddip1_out_ia_wdata_70_w$ ;
wire  [0:12] _zy_simnet_cddip1_out_ia_config_71_w$ ;
wire  [0:11] _zy_simnet_cddip1_out_im_config_72_w$ ;
wire  [0:1] _zy_simnet_dio_73 ;
wire  [0:31] _zy_simnet_cddip2_out_ia_wdata_74_w$ ;
wire  [0:31] _zy_simnet_cddip2_out_ia_wdata_75_w$ ;
wire  [0:31] _zy_simnet_cddip2_out_ia_wdata_76_w$ ;
wire  [0:12] _zy_simnet_cddip2_out_ia_config_77_w$ ;
wire  [0:11] _zy_simnet_cddip2_out_im_config_78_w$ ;
wire  [0:1] _zy_simnet_dio_79 ;
wire  [0:31] _zy_simnet_cddip3_out_ia_wdata_80_w$ ;
wire  [0:31] _zy_simnet_cddip3_out_ia_wdata_81_w$ ;
wire  [0:31] _zy_simnet_cddip3_out_ia_wdata_82_w$ ;
wire  [0:12] _zy_simnet_cddip3_out_ia_config_83_w$ ;
wire  [0:11] _zy_simnet_cddip3_out_im_config_84_w$ ;
wire  [0:1] _zy_simnet_dio_85 ;
wire  [0:31] _zy_simnet_o_ckv_ia_wdata_part0_86_w$ ;
wire  [0:31] _zy_simnet_o_ckv_ia_wdata_part1_87_w$ ;
wire  [0:18] _zy_simnet_o_ckv_ia_config_88_w$ ;
wire  [0:20] _zy_simnet_o_kim_ia_wdata_part0_89_w$ ;
wire  [0:16] _zy_simnet_o_kim_ia_wdata_part1_90_w$ ;
wire  [0:17] _zy_simnet_o_kim_ia_config_91_w$ ;
wire  [0:15] _zy_simnet_tvar_92 ;
wire  [0:31] _zy_simnet_labels_93_w$ ;
wire  [0:31] _zy_simnet_labels_94_w$ ;
wire  [0:31] _zy_simnet_labels_95_w$ ;
wire  [0:31] _zy_simnet_labels_96_w$ ;
wire  [0:31] _zy_simnet_labels_97_w$ ;
wire  [0:31] _zy_simnet_labels_98_w$ ;
wire  [0:31] _zy_simnet_labels_99_w$ ;
wire  [0:31] _zy_simnet_labels_100_w$ ;
wire  [0:15] _zy_simnet_tvar_101 ;
wire  [0:31] _zy_simnet_labels_102_w$ ;
wire  [0:31] _zy_simnet_labels_103_w$ ;
wire  [0:31] _zy_simnet_labels_104_w$ ;
wire  [0:31] _zy_simnet_labels_105_w$ ;
wire  [0:31] _zy_simnet_labels_106_w$ ;
wire  [0:31] _zy_simnet_labels_107_w$ ;
wire  [0:31] _zy_simnet_labels_108_w$ ;
wire  [0:31] _zy_simnet_labels_109_w$ ;
wire  [0:15] _zy_simnet_tvar_110 ;
wire  [0:31] _zy_simnet_labels_111_w$ ;
wire  [0:31] _zy_simnet_labels_112_w$ ;
wire  [0:31] _zy_simnet_labels_113_w$ ;
wire  [0:31] _zy_simnet_labels_114_w$ ;
wire  [0:31] _zy_simnet_labels_115_w$ ;
wire  [0:31] _zy_simnet_labels_116_w$ ;
wire  [0:31] _zy_simnet_labels_117_w$ ;
wire  [0:31] _zy_simnet_labels_118_w$ ;
wire  [0:15] _zy_simnet_tvar_119 ;
wire  [0:31] _zy_simnet_labels_120_w$ ;
wire  [0:31] _zy_simnet_labels_121_w$ ;
wire  [0:31] _zy_simnet_labels_122_w$ ;
wire  [0:31] _zy_simnet_labels_123_w$ ;
wire  [0:31] _zy_simnet_labels_124_w$ ;
wire  [0:31] _zy_simnet_labels_125_w$ ;
wire  [0:31] _zy_simnet_labels_126_w$ ;
wire  [0:31] _zy_simnet_labels_127_w$ ;
wire  [0:15] _zy_simnet_tvar_128 ;
wire  [0:31] _zy_simnet_labels_129_w$ ;
wire  [0:31] _zy_simnet_labels_130_w$ ;
wire  [0:31] _zy_simnet_labels_131_w$ ;
wire  [0:31] _zy_simnet_labels_132_w$ ;
wire  [0:31] _zy_simnet_labels_133_w$ ;
wire  [0:31] _zy_simnet_labels_134_w$ ;
wire  [0:31] _zy_simnet_labels_135_w$ ;
wire  [0:31] _zy_simnet_labels_136_w$ ;
wire  [0:15] _zy_simnet_tvar_137 ;
wire  [0:31] _zy_simnet_labels_138_w$ ;
wire  [0:31] _zy_simnet_labels_139_w$ ;
wire  [0:31] _zy_simnet_labels_140_w$ ;
wire  [0:31] _zy_simnet_labels_141_w$ ;
wire  [0:31] _zy_simnet_labels_142_w$ ;
wire  [0:31] _zy_simnet_labels_143_w$ ;
wire  [0:31] _zy_simnet_labels_144_w$ ;
wire  [0:31] _zy_simnet_labels_145_w$ ;
wire  [0:15] _zy_simnet_tvar_146 ;
wire  [0:31] _zy_simnet_labels_147_w$ ;
wire  [0:31] _zy_simnet_labels_148_w$ ;
wire  [0:31] _zy_simnet_labels_149_w$ ;
wire  [0:31] _zy_simnet_labels_150_w$ ;
wire  [0:31] _zy_simnet_labels_151_w$ ;
wire  [0:31] _zy_simnet_labels_152_w$ ;
wire  [0:31] _zy_simnet_labels_153_w$ ;
wire  [0:31] _zy_simnet_labels_154_w$ ;
wire  [0:15] _zy_simnet_tvar_155 ;
wire  [0:31] _zy_simnet_labels_156_w$ ;
wire  [0:31] _zy_simnet_labels_157_w$ ;
wire  [0:31] _zy_simnet_labels_158_w$ ;
wire  [0:31] _zy_simnet_labels_159_w$ ;
wire  [0:31] _zy_simnet_labels_160_w$ ;
wire  [0:31] _zy_simnet_labels_161_w$ ;
wire  [0:31] _zy_simnet_labels_162_w$ ;
wire  [0:31] _zy_simnet_labels_163_w$ ;
wire  [0:1] _zy_simnet_o_kdf_drbg_ctrl_164_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_31_0_165_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_63_32_166_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_95_64_167_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_127_96_168_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_159_128_169_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_191_160_170_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_223_192_171_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_255_224_172_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_value_31_0_173_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_value_63_32_174_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_value_95_64_175_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_value_127_96_176_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_reseed_interval_0_177_w$ ;
wire  [0:15] _zy_simnet_o_kdf_drbg_seed_0_reseed_interval_1_178_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_31_0_179_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_63_32_180_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_95_64_181_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_127_96_182_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_159_128_183_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_191_160_184_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_223_192_185_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_255_224_186_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_value_31_0_187_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_value_63_32_188_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_value_95_64_189_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_value_127_96_190_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_reseed_interval_0_191_w$ ;
wire  [0:15] _zy_simnet_o_kdf_drbg_seed_1_reseed_interval_1_192_w$ ;
wire  [0:4] _zy_simnet_dio_193 ;
wire  [0:4] _zy_simnet_o_interrupt_mask_194_w$ ;
wire  [0:7] _zy_simnet_o_engine_sticky_status_195_w$ ;
wire  [0:6] _zy_simnet_o_bimc_monitor_mask_196_w$ ;
wire  [0:31] _zy_simnet_o_bimc_ecc_uncorrectable_error_cnt_197_w$ ;
wire  [0:31] _zy_simnet_o_bimc_ecc_correctable_error_cnt_198_w$ ;
wire  [0:31] _zy_simnet_o_bimc_parity_error_cnt_199_w$ ;
wire  [0:31] _zy_simnet_o_bimc_global_config_200_w$ ;
wire  [0:28] _zy_simnet_o_bimc_eccpar_debug_201_w$ ;
wire  [0:10] _zy_simnet_o_bimc_cmd2_202_w$ ;
wire  [0:31] _zy_simnet_o_bimc_cmd1_203_w$ ;
wire  [0:31] _zy_simnet_o_bimc_cmd0_204_w$ ;
wire  [0:9] _zy_simnet_o_bimc_rxcmd2_205_w$ ;
wire  [0:9] _zy_simnet_o_bimc_rxrsp2_206_w$ ;
wire  [0:9] _zy_simnet_o_bimc_pollrsp2_207_w$ ;
wire  [0:9] _zy_simnet_o_bimc_dbgcmd2_208_w$ ;
wire  [0:15] _zy_simnet_dio_209 ;
wire  [0:8] _zy_simnet_tready_override_210_w$ ;
wire  [0:31] _zy_simnet_regs_sa_ctrl_211_w$ ;
wire  [0:31] _zy_simnet_sa_snapshot_ia_wdata_212_w$ ;
wire  [0:31] _zy_simnet_sa_snapshot_ia_wdata_213_w$ ;
wire  [0:8] _zy_simnet_sa_snapshot_ia_config_214_w$ ;
wire  [0:31] _zy_simnet_sa_count_ia_wdata_215_w$ ;
wire  [0:31] _zy_simnet_sa_count_ia_wdata_216_w$ ;
wire  [0:8] _zy_simnet_sa_count_ia_config_217_w$ ;
wire  [0:6] _zy_simnet_cceip_encrypt_kop_fifo_override_218_w$ ;
wire  [0:6] _zy_simnet_cceip_validate_kop_fifo_override_219_w$ ;
wire  [0:6] _zy_simnet_cddip_decrypt_kop_fifo_override_220_w$ ;
wire  [0:31] _zy_simnet_sa_global_ctrl_221_w$ ;
wire  [0:31] _zy_simnet_sa_ctrl_ia_wdata_222_w$ ;
wire  [0:8] _zy_simnet_sa_ctrl_ia_config_223_w$ ;
wire  [0:31] _zy_simnet_blkid_revid_config_224_w$ ;
wire  [0:7] _zy_simnet_revid_wire_225_w$ ;
wire  [0:31] _zy_simnet_tvar_226 ;
wire  [0:19] _zy_simnet_cceip0_out_ia_capability_227_w$ ;
wire  [0:16] _zy_simnet_cceip0_out_ia_status_228_w$ ;
wire  [0:31] _zy_simnet_tvar_229 ;
wire  [0:31] _zy_simnet_tvar_230 ;
wire  [0:31] _zy_simnet_tvar_231 ;
wire  [0:11] _zy_simnet_cceip0_out_im_status_232_w$ ;
wire  [0:1] _zy_simnet_cio_233 ;
wire  [0:19] _zy_simnet_cceip1_out_ia_capability_234_w$ ;
wire  [0:16] _zy_simnet_cceip1_out_ia_status_235_w$ ;
wire  [0:31] _zy_simnet_tvar_236 ;
wire  [0:31] _zy_simnet_tvar_237 ;
wire  [0:31] _zy_simnet_tvar_238 ;
wire  [0:11] _zy_simnet_cceip1_out_im_status_239_w$ ;
wire  [0:1] _zy_simnet_cio_240 ;
wire  [0:19] _zy_simnet_cceip2_out_ia_capability_241_w$ ;
wire  [0:16] _zy_simnet_cceip2_out_ia_status_242_w$ ;
wire  [0:31] _zy_simnet_tvar_243 ;
wire  [0:31] _zy_simnet_tvar_244 ;
wire  [0:31] _zy_simnet_tvar_245 ;
wire  [0:11] _zy_simnet_cceip2_out_im_status_246_w$ ;
wire  [0:1] _zy_simnet_cio_247 ;
wire  [0:19] _zy_simnet_cceip3_out_ia_capability_248_w$ ;
wire  [0:16] _zy_simnet_cceip3_out_ia_status_249_w$ ;
wire  [0:31] _zy_simnet_tvar_250 ;
wire  [0:31] _zy_simnet_tvar_251 ;
wire  [0:31] _zy_simnet_tvar_252 ;
wire  [0:11] _zy_simnet_cceip3_out_im_status_253_w$ ;
wire  [0:1] _zy_simnet_cio_254 ;
wire  [0:19] _zy_simnet_cddip0_out_ia_capability_255_w$ ;
wire  [0:16] _zy_simnet_cddip0_out_ia_status_256_w$ ;
wire  [0:31] _zy_simnet_tvar_257 ;
wire  [0:31] _zy_simnet_tvar_258 ;
wire  [0:31] _zy_simnet_tvar_259 ;
wire  [0:11] _zy_simnet_cddip0_out_im_status_260_w$ ;
wire  [0:1] _zy_simnet_cio_261 ;
wire  [0:19] _zy_simnet_cddip1_out_ia_capability_262_w$ ;
wire  [0:16] _zy_simnet_cddip1_out_ia_status_263_w$ ;
wire  [0:31] _zy_simnet_tvar_264 ;
wire  [0:31] _zy_simnet_tvar_265 ;
wire  [0:31] _zy_simnet_tvar_266 ;
wire  [0:11] _zy_simnet_cddip1_out_im_status_267_w$ ;
wire  [0:1] _zy_simnet_cio_268 ;
wire  [0:19] _zy_simnet_cddip2_out_ia_capability_269_w$ ;
wire  [0:16] _zy_simnet_cddip2_out_ia_status_270_w$ ;
wire  [0:31] _zy_simnet_tvar_271 ;
wire  [0:31] _zy_simnet_tvar_272 ;
wire  [0:31] _zy_simnet_tvar_273 ;
wire  [0:11] _zy_simnet_cddip2_out_im_status_274_w$ ;
wire  [0:1] _zy_simnet_cio_275 ;
wire  [0:19] _zy_simnet_cddip3_out_ia_capability_276_w$ ;
wire  [0:16] _zy_simnet_cddip3_out_ia_status_277_w$ ;
wire  [0:31] _zy_simnet_tvar_278 ;
wire  [0:31] _zy_simnet_tvar_279 ;
wire  [0:31] _zy_simnet_tvar_280 ;
wire  [0:11] _zy_simnet_cddip3_out_im_status_281_w$ ;
wire  [0:1] _zy_simnet_cio_282 ;
wire  [0:19] _zy_simnet_ckv_ia_capability_283_w$ ;
wire  [0:22] _zy_simnet_ckv_ia_status_284_w$ ;
wire  [0:31] _zy_simnet_ckv_ia_rdata_part0_285_w$ ;
wire  [0:31] _zy_simnet_ckv_ia_rdata_part1_286_w$ ;
wire  [0:19] _zy_simnet_kim_ia_capability_287_w$ ;
wire  [0:21] _zy_simnet_kim_ia_status_288_w$ ;
wire  [0:20] _zy_simnet_kim_ia_rdata_part0_289_w$ ;
wire  [0:16] _zy_simnet_kim_ia_rdata_part1_290_w$ ;
wire  [0:1] _zy_simnet_kdf_drbg_ctrl_291_w$ ;
wire  [0:4] _zy_simnet_interrupt_status_292_w$ ;
wire  [0:7] _zy_simnet_engine_sticky_status_293_w$ ;
wire  [0:6] _zy_simnet_bimc_monitor_294_w$ ;
wire  [0:31] _zy_simnet_bimc_ecc_uncorrectable_error_cnt_295_w$ ;
wire  [0:31] _zy_simnet_bimc_ecc_correctable_error_cnt_296_w$ ;
wire  [0:31] _zy_simnet_bimc_parity_error_cnt_297_w$ ;
wire  [0:31] _zy_simnet_bimc_global_config_298_w$ ;
wire  [0:11] _zy_simnet_bimc_memid_299_w$ ;
wire  [0:28] _zy_simnet_bimc_eccpar_debug_300_w$ ;
wire  [0:10] _zy_simnet_bimc_cmd2_301_w$ ;
wire  [0:9] _zy_simnet_bimc_rxcmd2_302_w$ ;
wire  [0:31] _zy_simnet_bimc_rxcmd1_303_w$ ;
wire  [0:31] _zy_simnet_bimc_rxcmd0_304_w$ ;
wire  [0:9] _zy_simnet_bimc_rxrsp2_305_w$ ;
wire  [0:31] _zy_simnet_bimc_rxrsp1_306_w$ ;
wire  [0:31] _zy_simnet_bimc_rxrsp0_307_w$ ;
wire  [0:9] _zy_simnet_bimc_pollrsp2_308_w$ ;
wire  [0:31] _zy_simnet_bimc_pollrsp1_309_w$ ;
wire  [0:31] _zy_simnet_bimc_pollrsp0_310_w$ ;
wire  [0:9] _zy_simnet_bimc_dbgcmd2_311_w$ ;
wire  [0:31] _zy_simnet_bimc_dbgcmd1_312_w$ ;
wire  [0:31] _zy_simnet_bimc_dbgcmd0_313_w$ ;
wire  [0:15] _zy_simnet_im_available_314_w$ ;
wire  [0:15] _zy_simnet_cio_315 ;
wire  [0:8] _zy_simnet_tready_override_316_w$ ;
wire  [0:31] _zy_simnet_regs_sa_ctrl_317_w$ ;
wire  [0:19] _zy_simnet_sa_snapshot_ia_capability_318_w$ ;
wire  [0:12] _zy_simnet_sa_snapshot_ia_status_319_w$ ;
wire  [0:31] _zy_simnet_sa_snapshot_ia_rdata_320_w$ ;
wire  [0:31] _zy_simnet_sa_snapshot_ia_rdata_321_w$ ;
wire  [0:19] _zy_simnet_sa_count_ia_capability_322_w$ ;
wire  [0:12] _zy_simnet_sa_count_ia_status_323_w$ ;
wire  [0:31] _zy_simnet_sa_count_ia_rdata_324_w$ ;
wire  [0:31] _zy_simnet_sa_count_ia_rdata_325_w$ ;
wire  [0:31] _zy_simnet_sa_global_ctrl_326_w$ ;
wire  [0:19] _zy_simnet_sa_ctrl_ia_capability_327_w$ ;
wire  [0:12] _zy_simnet_sa_ctrl_ia_status_328_w$ ;
wire  [0:31] _zy_simnet_sa_ctrl_ia_rdata_329_w$ ;
wire  _zy_simnet_wr_stb_330_w$;
wire  _zy_simnet_dio_331;
wire  [0:31] _zy_simnet_wr_data_332_w$ ;
wire  [0:10] _zy_simnet_reg_addr_333_w$ ;
wire  [0:15] _zy_simnet_rbus_ring_o_334_w$ ;
wire  _zy_simnet_rbus_ring_o_335_w$;
wire  [0:31] _zy_simnet_rbus_ring_o_336_w$ ;
wire  _zy_simnet_rbus_ring_o_337_w$;
wire  [0:10] _zy_simnet_locl_addr_338_w$ ;
wire  _zy_simnet_locl_wr_strb_339_w$;
wire  [0:31] _zy_simnet_locl_wr_data_340_w$ ;
wire  _zy_simnet_locl_rd_strb_341_w$;
wire  [0:31] _zy_simnet_locl_rd_data_342_w$ ;
wire  _zy_simnet_locl_ack_343_w$;
wire  _zy_simnet_locl_err_ack_344_w$;
wire  [0:31] _zy_simnet_rbus_ring_o_345_w$ ;
wire  _zy_simnet_rbus_ring_o_346_w$;
wire  _zy_simnet_rbus_ring_o_347_w$;
wire  _zy_simnet_kme_cceip0_ob_in_mod_348_w$;
wire  [0:82] _zy_simnet_kme_cceip0_ob_out_post_349_w$ ;
wire  _zy_simnet_cceip0_im_vld_350_w$;
wire  _zy_simnet_tvar_351;
wire  _zy_simnet_cceip0_im_rdy_352_w$;
wire  _zy_simnet_kme_cceip1_ob_in_mod_353_w$;
wire  [0:82] _zy_simnet_kme_cceip1_ob_out_post_354_w$ ;
wire  _zy_simnet_cceip1_im_vld_355_w$;
wire  _zy_simnet_tvar_356;
wire  _zy_simnet_cceip1_im_rdy_357_w$;
wire  _zy_simnet_kme_cceip2_ob_in_mod_358_w$;
wire  [0:82] _zy_simnet_kme_cceip2_ob_out_post_359_w$ ;
wire  _zy_simnet_cceip2_im_vld_360_w$;
wire  _zy_simnet_tvar_361;
wire  _zy_simnet_cceip2_im_rdy_362_w$;
wire  _zy_simnet_kme_cceip3_ob_in_mod_363_w$;
wire  [0:82] _zy_simnet_kme_cceip3_ob_out_post_364_w$ ;
wire  _zy_simnet_cceip3_im_vld_365_w$;
wire  _zy_simnet_tvar_366;
wire  _zy_simnet_cceip3_im_rdy_367_w$;
wire  _zy_simnet_kme_cddip0_ob_in_mod_368_w$;
wire  [0:82] _zy_simnet_kme_cddip0_ob_out_post_369_w$ ;
wire  _zy_simnet_cddip0_im_vld_370_w$;
wire  _zy_simnet_tvar_371;
wire  _zy_simnet_cddip0_im_rdy_372_w$;
wire  _zy_simnet_kme_cddip1_ob_in_mod_373_w$;
wire  [0:82] _zy_simnet_kme_cddip1_ob_out_post_374_w$ ;
wire  _zy_simnet_cddip1_im_vld_375_w$;
wire  _zy_simnet_tvar_376;
wire  _zy_simnet_cddip1_im_rdy_377_w$;
wire  _zy_simnet_kme_cddip2_ob_in_mod_378_w$;
wire  [0:82] _zy_simnet_kme_cddip2_ob_out_post_379_w$ ;
wire  _zy_simnet_cddip2_im_vld_380_w$;
wire  _zy_simnet_tvar_381;
wire  _zy_simnet_cddip2_im_rdy_382_w$;
wire  _zy_simnet_kme_cddip3_ob_in_mod_383_w$;
wire  [0:82] _zy_simnet_kme_cddip3_ob_out_post_384_w$ ;
wire  _zy_simnet_cddip3_im_vld_385_w$;
wire  _zy_simnet_tvar_386;
wire  _zy_simnet_cddip3_im_rdy_387_w$;
wire  [0:2] _zy_simnet_cceip0_out_ia_status_388_w$ ;
wire  [0:4] _zy_simnet_cceip0_out_ia_status_389_w$ ;
wire  [0:8] _zy_simnet_cceip0_out_ia_status_390_w$ ;
wire  [0:15] _zy_simnet_cceip0_out_ia_capability_391_w$ ;
wire  [0:3] _zy_simnet_cceip0_out_ia_capability_392_w$ ;
wire  [0:95] _zy_simnet_cceip0_out_ia_rdata_393_w$ ;
wire  _zy_simnet_cceip1_ism_idat_394_w$;
wire  _zy_simnet_cceip1_ism_isync_395_w$;
wire  _zy_simnet_cceip0_ism_mbe_396_w$;
wire  _zy_simnet_cceip0_im_rdy_397_w$;
wire  [0:1] _zy_simnet_im_available_kme_cceip0_398_w$ ;
wire  [0:11] _zy_simnet_cceip0_out_im_status_399_w$ ;
wire  [0:10] _zy_simnet_reg_addr_400_w$ ;
wire  [0:3] _zy_simnet_cceip0_out_ia_config_401_w$ ;
wire  [0:8] _zy_simnet_cceip0_out_ia_config_402_w$ ;
wire  _zy_simnet_wr_stb_403_w$;
wire  [0:95] _zy_simnet_cceip0_out_ia_wdata_404_w$ ;
wire  _zy_simnet_cio_405;
wire  _zy_simnet_cceip0_ism_bimc_isync_406_w$;
wire  _zy_simnet_cceip0_ism_bimc_idat_407_w$;
wire  [0:95] _zy_simnet_cceip0_im_din_408_w$ ;
wire  _zy_simnet_cceip0_im_vld_409_w$;
wire  [0:1] _zy_simnet_im_consumed_kme_cceip0_410_w$ ;
wire  [0:11] _zy_simnet_cceip0_out_im_config_411_w$ ;
wire  [0:2] _zy_simnet_cceip1_out_ia_status_412_w$ ;
wire  [0:4] _zy_simnet_cceip1_out_ia_status_413_w$ ;
wire  [0:8] _zy_simnet_cceip1_out_ia_status_414_w$ ;
wire  [0:15] _zy_simnet_cceip1_out_ia_capability_415_w$ ;
wire  [0:3] _zy_simnet_cceip1_out_ia_capability_416_w$ ;
wire  [0:95] _zy_simnet_cceip1_out_ia_rdata_417_w$ ;
wire  _zy_simnet_cceip2_ism_idat_418_w$;
wire  _zy_simnet_cceip2_ism_isync_419_w$;
wire  _zy_simnet_cceip1_ism_mbe_420_w$;
wire  _zy_simnet_cceip1_im_rdy_421_w$;
wire  [0:1] _zy_simnet_im_available_kme_cceip1_422_w$ ;
wire  [0:11] _zy_simnet_cceip1_out_im_status_423_w$ ;
wire  [0:10] _zy_simnet_reg_addr_424_w$ ;
wire  [0:3] _zy_simnet_cceip1_out_ia_config_425_w$ ;
wire  [0:8] _zy_simnet_cceip1_out_ia_config_426_w$ ;
wire  _zy_simnet_wr_stb_427_w$;
wire  [0:95] _zy_simnet_cceip1_out_ia_wdata_428_w$ ;
wire  _zy_simnet_cio_429;
wire  _zy_simnet_cceip1_ism_isync_430_w$;
wire  _zy_simnet_cceip1_ism_idat_431_w$;
wire  [0:95] _zy_simnet_cceip1_im_din_432_w$ ;
wire  _zy_simnet_cceip1_im_vld_433_w$;
wire  [0:1] _zy_simnet_im_consumed_kme_cceip1_434_w$ ;
wire  [0:11] _zy_simnet_cceip1_out_im_config_435_w$ ;
wire  [0:2] _zy_simnet_cceip2_out_ia_status_436_w$ ;
wire  [0:4] _zy_simnet_cceip2_out_ia_status_437_w$ ;
wire  [0:8] _zy_simnet_cceip2_out_ia_status_438_w$ ;
wire  [0:15] _zy_simnet_cceip2_out_ia_capability_439_w$ ;
wire  [0:3] _zy_simnet_cceip2_out_ia_capability_440_w$ ;
wire  [0:95] _zy_simnet_cceip2_out_ia_rdata_441_w$ ;
wire  _zy_simnet_cceip3_ism_idat_442_w$;
wire  _zy_simnet_cceip3_ism_isync_443_w$;
wire  _zy_simnet_cceip2_ism_mbe_444_w$;
wire  _zy_simnet_cceip2_im_rdy_445_w$;
wire  [0:1] _zy_simnet_im_available_kme_cceip2_446_w$ ;
wire  [0:11] _zy_simnet_cceip2_out_im_status_447_w$ ;
wire  [0:10] _zy_simnet_reg_addr_448_w$ ;
wire  [0:3] _zy_simnet_cceip2_out_ia_config_449_w$ ;
wire  [0:8] _zy_simnet_cceip2_out_ia_config_450_w$ ;
wire  _zy_simnet_wr_stb_451_w$;
wire  [0:95] _zy_simnet_cceip2_out_ia_wdata_452_w$ ;
wire  _zy_simnet_cio_453;
wire  _zy_simnet_cceip2_ism_isync_454_w$;
wire  _zy_simnet_cceip2_ism_idat_455_w$;
wire  [0:95] _zy_simnet_cceip2_im_din_456_w$ ;
wire  _zy_simnet_cceip2_im_vld_457_w$;
wire  [0:1] _zy_simnet_im_consumed_kme_cceip2_458_w$ ;
wire  [0:11] _zy_simnet_cceip2_out_im_config_459_w$ ;
wire  [0:2] _zy_simnet_cceip3_out_ia_status_460_w$ ;
wire  [0:4] _zy_simnet_cceip3_out_ia_status_461_w$ ;
wire  [0:8] _zy_simnet_cceip3_out_ia_status_462_w$ ;
wire  [0:15] _zy_simnet_cceip3_out_ia_capability_463_w$ ;
wire  [0:3] _zy_simnet_cceip3_out_ia_capability_464_w$ ;
wire  [0:95] _zy_simnet_cceip3_out_ia_rdata_465_w$ ;
wire  _zy_simnet_cddip0_ism_idat_466_w$;
wire  _zy_simnet_cddip0_ism_isync_467_w$;
wire  _zy_simnet_cceip3_ism_mbe_468_w$;
wire  _zy_simnet_cceip3_im_rdy_469_w$;
wire  [0:1] _zy_simnet_im_available_kme_cceip3_470_w$ ;
wire  [0:11] _zy_simnet_cceip3_out_im_status_471_w$ ;
wire  [0:10] _zy_simnet_reg_addr_472_w$ ;
wire  [0:3] _zy_simnet_cceip3_out_ia_config_473_w$ ;
wire  [0:8] _zy_simnet_cceip3_out_ia_config_474_w$ ;
wire  _zy_simnet_wr_stb_475_w$;
wire  [0:95] _zy_simnet_cceip3_out_ia_wdata_476_w$ ;
wire  _zy_simnet_cio_477;
wire  _zy_simnet_cceip3_ism_isync_478_w$;
wire  _zy_simnet_cceip3_ism_idat_479_w$;
wire  [0:95] _zy_simnet_cceip3_im_din_480_w$ ;
wire  _zy_simnet_cceip3_im_vld_481_w$;
wire  [0:1] _zy_simnet_im_consumed_kme_cceip3_482_w$ ;
wire  [0:11] _zy_simnet_cceip3_out_im_config_483_w$ ;
wire  [0:2] _zy_simnet_cddip0_out_ia_status_484_w$ ;
wire  [0:4] _zy_simnet_cddip0_out_ia_status_485_w$ ;
wire  [0:8] _zy_simnet_cddip0_out_ia_status_486_w$ ;
wire  [0:15] _zy_simnet_cddip0_out_ia_capability_487_w$ ;
wire  [0:3] _zy_simnet_cddip0_out_ia_capability_488_w$ ;
wire  [0:95] _zy_simnet_cddip0_out_ia_rdata_489_w$ ;
wire  _zy_simnet_cddip1_ism_idat_490_w$;
wire  _zy_simnet_cddip1_ism_isync_491_w$;
wire  _zy_simnet_cddip0_ism_mbe_492_w$;
wire  _zy_simnet_cddip0_im_rdy_493_w$;
wire  [0:1] _zy_simnet_im_available_kme_cddip0_494_w$ ;
wire  [0:11] _zy_simnet_cddip0_out_im_status_495_w$ ;
wire  [0:10] _zy_simnet_reg_addr_496_w$ ;
wire  [0:3] _zy_simnet_cddip0_out_ia_config_497_w$ ;
wire  [0:8] _zy_simnet_cddip0_out_ia_config_498_w$ ;
wire  _zy_simnet_wr_stb_499_w$;
wire  [0:95] _zy_simnet_cddip0_out_ia_wdata_500_w$ ;
wire  _zy_simnet_cio_501;
wire  _zy_simnet_cddip0_ism_isync_502_w$;
wire  _zy_simnet_cddip0_ism_idat_503_w$;
wire  [0:95] _zy_simnet_cddip0_im_din_504_w$ ;
wire  _zy_simnet_cddip0_im_vld_505_w$;
wire  [0:1] _zy_simnet_im_consumed_kme_cddip0_506_w$ ;
wire  [0:11] _zy_simnet_cddip0_out_im_config_507_w$ ;
wire  [0:2] _zy_simnet_cddip1_out_ia_status_508_w$ ;
wire  [0:4] _zy_simnet_cddip1_out_ia_status_509_w$ ;
wire  [0:8] _zy_simnet_cddip1_out_ia_status_510_w$ ;
wire  [0:15] _zy_simnet_cddip1_out_ia_capability_511_w$ ;
wire  [0:3] _zy_simnet_cddip1_out_ia_capability_512_w$ ;
wire  [0:95] _zy_simnet_cddip1_out_ia_rdata_513_w$ ;
wire  _zy_simnet_cddip2_ism_idat_514_w$;
wire  _zy_simnet_cddip2_ism_isync_515_w$;
wire  _zy_simnet_cddip1_ism_mbe_516_w$;
wire  _zy_simnet_cddip1_im_rdy_517_w$;
wire  [0:1] _zy_simnet_im_available_kme_cddip1_518_w$ ;
wire  [0:11] _zy_simnet_cddip1_out_im_status_519_w$ ;
wire  [0:10] _zy_simnet_reg_addr_520_w$ ;
wire  [0:3] _zy_simnet_cddip1_out_ia_config_521_w$ ;
wire  [0:8] _zy_simnet_cddip1_out_ia_config_522_w$ ;
wire  _zy_simnet_wr_stb_523_w$;
wire  [0:95] _zy_simnet_cddip1_out_ia_wdata_524_w$ ;
wire  _zy_simnet_cio_525;
wire  _zy_simnet_cddip1_ism_isync_526_w$;
wire  _zy_simnet_cddip1_ism_idat_527_w$;
wire  [0:95] _zy_simnet_cddip1_im_din_528_w$ ;
wire  _zy_simnet_cddip1_im_vld_529_w$;
wire  [0:1] _zy_simnet_im_consumed_kme_cddip1_530_w$ ;
wire  [0:11] _zy_simnet_cddip1_out_im_config_531_w$ ;
wire  [0:2] _zy_simnet_cddip2_out_ia_status_532_w$ ;
wire  [0:4] _zy_simnet_cddip2_out_ia_status_533_w$ ;
wire  [0:8] _zy_simnet_cddip2_out_ia_status_534_w$ ;
wire  [0:15] _zy_simnet_cddip2_out_ia_capability_535_w$ ;
wire  [0:3] _zy_simnet_cddip2_out_ia_capability_536_w$ ;
wire  [0:95] _zy_simnet_cddip2_out_ia_rdata_537_w$ ;
wire  _zy_simnet_cddip3_ism_idat_538_w$;
wire  _zy_simnet_cddip3_ism_isync_539_w$;
wire  _zy_simnet_cddip2_ism_mbe_540_w$;
wire  _zy_simnet_cddip2_im_rdy_541_w$;
wire  [0:1] _zy_simnet_im_available_kme_cddip2_542_w$ ;
wire  [0:11] _zy_simnet_cddip2_out_im_status_543_w$ ;
wire  [0:10] _zy_simnet_reg_addr_544_w$ ;
wire  [0:3] _zy_simnet_cddip2_out_ia_config_545_w$ ;
wire  [0:8] _zy_simnet_cddip2_out_ia_config_546_w$ ;
wire  _zy_simnet_wr_stb_547_w$;
wire  [0:95] _zy_simnet_cddip2_out_ia_wdata_548_w$ ;
wire  _zy_simnet_cio_549;
wire  _zy_simnet_cddip2_ism_isync_550_w$;
wire  _zy_simnet_cddip2_ism_idat_551_w$;
wire  [0:95] _zy_simnet_cddip2_im_din_552_w$ ;
wire  _zy_simnet_cddip2_im_vld_553_w$;
wire  [0:1] _zy_simnet_im_consumed_kme_cddip2_554_w$ ;
wire  [0:11] _zy_simnet_cddip2_out_im_config_555_w$ ;
wire  [0:2] _zy_simnet_cddip3_out_ia_status_556_w$ ;
wire  [0:4] _zy_simnet_cddip3_out_ia_status_557_w$ ;
wire  [0:8] _zy_simnet_cddip3_out_ia_status_558_w$ ;
wire  [0:15] _zy_simnet_cddip3_out_ia_capability_559_w$ ;
wire  [0:3] _zy_simnet_cddip3_out_ia_capability_560_w$ ;
wire  [0:95] _zy_simnet_cddip3_out_ia_rdata_561_w$ ;
wire  _zy_simnet_cddip3_ism_odat_562_w$;
wire  _zy_simnet_cddip3_ism_osync_563_w$;
wire  _zy_simnet_cddip3_ism_mbe_564_w$;
wire  _zy_simnet_cddip3_im_rdy_565_w$;
wire  [0:1] _zy_simnet_im_available_kme_cddip3_566_w$ ;
wire  [0:11] _zy_simnet_cddip3_out_im_status_567_w$ ;
wire  [0:10] _zy_simnet_reg_addr_568_w$ ;
wire  [0:3] _zy_simnet_cddip3_out_ia_config_569_w$ ;
wire  [0:8] _zy_simnet_cddip3_out_ia_config_570_w$ ;
wire  _zy_simnet_wr_stb_571_w$;
wire  [0:95] _zy_simnet_cddip3_out_ia_wdata_572_w$ ;
wire  _zy_simnet_cio_573;
wire  _zy_simnet_cddip3_ism_isync_574_w$;
wire  _zy_simnet_cddip3_ism_idat_575_w$;
wire  [0:95] _zy_simnet_cddip3_im_din_576_w$ ;
wire  _zy_simnet_cddip3_im_vld_577_w$;
wire  [0:1] _zy_simnet_im_consumed_kme_cddip3_578_w$ ;
wire  [0:11] _zy_simnet_cddip3_out_im_config_579_w$ ;
wire  [0:3] _zy_simnet_ckv_cmnd_op_580_w$ ;
wire  [0:14] _zy_simnet_ckv_cmnd_addr_581_w$ ;
wire  [0:63] _zy_simnet_ckv_wr_dat_582_w$ ;
wire  [0:19] _zy_simnet_ckv_ia_capability_583_w$ ;
wire  [0:31] _zy_simnet_ckv_ia_rdata_part0_584_w$ ;
wire  [0:31] _zy_simnet_ckv_ia_rdata_part1_585_w$ ;
wire  [0:22] _zy_simnet_ckv_ia_status_586_w$ ;
wire  [0:3] _zy_simnet_kim_cmnd_op_587_w$ ;
wire  [0:13] _zy_simnet_kim_cmnd_addr_588_w$ ;
wire  [0:37] _zy_simnet_kim_wr_dat_589_w$ ;
wire  [0:19] _zy_simnet_kim_ia_capability_590_w$ ;
wire  [0:20] _zy_simnet_kim_ia_rdata_part0_591_w$ ;
wire  [0:16] _zy_simnet_kim_ia_rdata_part1_592_w$ ;
wire  [0:21] _zy_simnet_kim_ia_status_593_w$ ;
wire  [0:7] _zy_simnet_engine_sticky_status_594_w$ ;
wire  _zy_simnet_disable_ckv_kim_ism_reads_595_w$;
wire  _zy_simnet_send_kme_ib_beat_596_w$;
wire  [0:82] _zy_simnet_kme_cceip0_ob_out_597_w$ ;
wire  [0:82] _zy_simnet_kme_cceip1_ob_out_598_w$ ;
wire  [0:82] _zy_simnet_kme_cceip2_ob_out_599_w$ ;
wire  [0:82] _zy_simnet_kme_cceip3_ob_out_600_w$ ;
wire  [0:82] _zy_simnet_kme_cddip0_ob_out_601_w$ ;
wire  [0:82] _zy_simnet_kme_cddip1_ob_out_602_w$ ;
wire  [0:82] _zy_simnet_kme_cddip2_ob_out_603_w$ ;
wire  [0:82] _zy_simnet_kme_cddip3_ob_out_604_w$ ;
wire  _zy_simnet_axi_term_bimc_isync_605_w$;
wire  _zy_simnet_axi_term_bimc_idat_606_w$;
wire  [0:2] _zy_simnet_ckv_stat_code_607_w$ ;
wire  [0:4] _zy_simnet_ckv_stat_datawords_608_w$ ;
wire  [0:14] _zy_simnet_ckv_stat_addr_609_w$ ;
wire  [0:3] _zy_simnet_ckv_capability_type_610_w$ ;
wire  [0:15] _zy_simnet_ckv_capability_lst_611_w$ ;
wire  [0:63] _zy_simnet_ckv_rd_dat_612_w$ ;
wire  [0:18] _zy_simnet_o_ckv_ia_config_613_w$ ;
wire  [0:31] _zy_simnet_o_ckv_ia_wdata_part0_614_w$ ;
wire  [0:31] _zy_simnet_o_ckv_ia_wdata_part1_615_w$ ;
wire  [0:2] _zy_simnet_kim_stat_code_616_w$ ;
wire  [0:4] _zy_simnet_kim_stat_datawords_617_w$ ;
wire  [0:13] _zy_simnet_kim_stat_addr_618_w$ ;
wire  [0:3] _zy_simnet_kim_capability_type_619_w$ ;
wire  [0:15] _zy_simnet_kim_capability_lst_620_w$ ;
wire  [0:37] _zy_simnet_kim_rd_dat_621_w$ ;
wire  [0:17] _zy_simnet_o_kim_ia_config_622_w$ ;
wire  [0:20] _zy_simnet_o_kim_ia_wdata_part0_623_w$ ;
wire  [0:16] _zy_simnet_o_kim_ia_wdata_part1_624_w$ ;
wire  _zy_simnet_wr_stb_625_w$;
wire  [0:31] _zy_simnet_wr_data_626_w$ ;
wire  [0:10] _zy_simnet_reg_addr_627_w$ ;
wire  [0:7] _zy_simnet_o_engine_sticky_status_628_w$ ;
wire  _zy_simnet_o_disable_ckv_kim_ism_reads_629_w$;
wire  _zy_simnet_o_send_kme_ib_beat_630_w$;
wire  [0:95] _zy_simnet_cceip0_out_ia_wdata_631_w$ ;
wire  [0:8] _zy_simnet_tready_override_632_w$ ;
wire  [0:82] _zy_simnet_kme_cceip0_ob_out_post_633_w$ ;
wire  [0:82] _zy_simnet_kme_cceip1_ob_out_post_634_w$ ;
wire  [0:82] _zy_simnet_kme_cceip2_ob_out_post_635_w$ ;
wire  [0:82] _zy_simnet_kme_cceip3_ob_out_post_636_w$ ;
wire  [0:82] _zy_simnet_kme_cddip0_ob_out_post_637_w$ ;
wire  [0:82] _zy_simnet_kme_cddip1_ob_out_post_638_w$ ;
wire  [0:82] _zy_simnet_kme_cddip2_ob_out_post_639_w$ ;
wire  [0:82] _zy_simnet_kme_cddip3_ob_out_post_640_w$ ;
wire  _zy_simnet_cddip3_ism_osync_641_w$;
wire  _zy_simnet_cddip3_ism_odat_642_w$;
wire  [0:10] _zy_simnet_reg_addr_643_w$ ;
wire  [0:3] _zy_simnet_ckv_cmnd_op_644_w$ ;
wire  [0:14] _zy_simnet_ckv_cmnd_addr_645_w$ ;
wire  [0:2] _zy_simnet_ckv_stat_code_646_w$ ;
wire  [0:4] _zy_simnet_ckv_stat_datawords_647_w$ ;
wire  [0:14] _zy_simnet_ckv_stat_addr_648_w$ ;
wire  [0:15] _zy_simnet_ckv_capability_lst_649_w$ ;
wire  [0:3] _zy_simnet_ckv_capability_type_650_w$ ;
wire  _zy_simnet_wr_stb_651_w$;
wire  [0:63] _zy_simnet_ckv_wr_dat_652_w$ ;
wire  [0:63] _zy_simnet_ckv_rd_dat_653_w$ ;
wire  _zy_simnet_cio_654;
wire  _zy_simnet_ckv_bimc_isync_655_w$;
wire  _zy_simnet_ckv_bimc_idat_656_w$;
wire  _zy_simnet_cceip0_ism_bimc_idat_657_w$;
wire  _zy_simnet_cceip0_ism_bimc_isync_658_w$;
wire  _zy_simnet_cio_659;
wire  [0:63] _zy_simnet_cio_660 ;
wire  [0:63] _zy_simnet_cio_661 ;
wire  _zy_simnet_dio_662;
wire  [0:10] _zy_simnet_reg_addr_663_w$ ;
wire  [0:3] _zy_simnet_kim_cmnd_op_664_w$ ;
wire  [0:13] _zy_simnet_kim_cmnd_addr_665_w$ ;
wire  [0:2] _zy_simnet_kim_stat_code_666_w$ ;
wire  [0:4] _zy_simnet_kim_stat_datawords_667_w$ ;
wire  [0:13] _zy_simnet_kim_stat_addr_668_w$ ;
wire  [0:15] _zy_simnet_kim_capability_lst_669_w$ ;
wire  [0:3] _zy_simnet_kim_capability_type_670_w$ ;
wire  _zy_simnet_wr_stb_671_w$;
wire  [0:37] _zy_simnet_kim_wr_dat_672_w$ ;
wire  [0:37] _zy_simnet_kim_rd_dat_673_w$ ;
wire  _zy_simnet_cio_674;
wire  _zy_simnet_kim_bimc_isync_675_w$;
wire  _zy_simnet_kim_bimc_idat_676_w$;
wire  _zy_simnet_ckv_bimc_idat_677_w$;
wire  _zy_simnet_ckv_bimc_isync_678_w$;
wire  _zy_simnet_cio_679;
wire  [0:37] _zy_simnet_cio_680 ;
wire  [0:37] _zy_simnet_cio_681 ;
wire  [0:37] _zy_simnet_kim_dout_682_w$ ;
wire  _zy_simnet_dio_683;
wire  _zy_simnet_set_drbg_expired_int_684_w$;
wire  [0:1] _zy_simnet_kdf_drbg_ctrl_685_w$ ;
wire  _zy_simnet_wr_stb_686_w$;
wire  [0:31] _zy_simnet_wr_data_687_w$ ;
wire  [0:10] _zy_simnet_reg_addr_688_w$ ;
wire  [0:1] _zy_simnet_o_kdf_drbg_ctrl_689_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_reseed_interval_0_690_w$ ;
wire  [0:15] _zy_simnet_o_kdf_drbg_seed_0_reseed_interval_1_691_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_127_96_692_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_159_128_693_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_191_160_694_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_223_192_695_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_255_224_696_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_31_0_697_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_63_32_698_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_key_95_64_699_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_value_127_96_700_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_value_31_0_701_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_value_63_32_702_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_0_state_value_95_64_703_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_reseed_interval_0_704_w$ ;
wire  [0:15] _zy_simnet_o_kdf_drbg_seed_1_reseed_interval_1_705_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_127_96_706_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_159_128_707_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_191_160_708_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_223_192_709_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_255_224_710_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_31_0_711_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_63_32_712_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_key_95_64_713_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_value_127_96_714_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_value_31_0_715_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_value_63_32_716_w$ ;
wire  [0:31] _zy_simnet_o_kdf_drbg_seed_1_state_value_95_64_717_w$ ;
wire  _zy_simnet_dio_718;
wire  _zy_simnet_bimc_interrupt_719_w$;
wire  _zy_simnet_kim_bimc_idat_720_w$;
wire  _zy_simnet_kim_bimc_isync_721_w$;
wire  _zy_simnet_axi_term_bimc_idat_722_w$;
wire  _zy_simnet_axi_term_bimc_isync_723_w$;
wire  [0:6] _zy_simnet_o_bimc_monitor_mask_724_w$ ;
wire  [0:31] _zy_simnet_o_bimc_ecc_uncorrectable_error_cnt_725_w$ ;
wire  [0:31] _zy_simnet_o_bimc_ecc_correctable_error_cnt_726_w$ ;
wire  [0:31] _zy_simnet_o_bimc_parity_error_cnt_727_w$ ;
wire  [0:31] _zy_simnet_o_bimc_global_config_728_w$ ;
wire  [0:28] _zy_simnet_o_bimc_eccpar_debug_729_w$ ;
wire  [0:10] _zy_simnet_o_bimc_cmd2_730_w$ ;
wire  [0:31] _zy_simnet_o_bimc_cmd1_731_w$ ;
wire  [0:31] _zy_simnet_o_bimc_cmd0_732_w$ ;
wire  [0:9] _zy_simnet_o_bimc_rxcmd2_733_w$ ;
wire  [0:9] _zy_simnet_o_bimc_rxrsp2_734_w$ ;
wire  [0:9] _zy_simnet_o_bimc_pollrsp2_735_w$ ;
wire  [0:9] _zy_simnet_o_bimc_dbgcmd2_736_w$ ;
wire  [0:6] _zy_simnet_bimc_monitor_737_w$ ;
wire  [0:31] _zy_simnet_bimc_ecc_uncorrectable_error_cnt_738_w$ ;
wire  [0:31] _zy_simnet_bimc_ecc_correctable_error_cnt_739_w$ ;
wire  [0:31] _zy_simnet_bimc_parity_error_cnt_740_w$ ;
wire  [0:31] _zy_simnet_bimc_global_config_741_w$ ;
wire  [0:11] _zy_simnet_bimc_memid_742_w$ ;
wire  [0:28] _zy_simnet_bimc_eccpar_debug_743_w$ ;
wire  [0:10] _zy_simnet_bimc_cmd2_744_w$ ;
wire  [0:9] _zy_simnet_bimc_rxcmd2_745_w$ ;
wire  [0:31] _zy_simnet_bimc_rxcmd1_746_w$ ;
wire  [0:31] _zy_simnet_bimc_rxcmd0_747_w$ ;
wire  [0:9] _zy_simnet_bimc_rxrsp2_748_w$ ;
wire  [0:31] _zy_simnet_bimc_rxrsp1_749_w$ ;
wire  [0:31] _zy_simnet_bimc_rxrsp0_750_w$ ;
wire  [0:9] _zy_simnet_bimc_pollrsp2_751_w$ ;
wire  [0:31] _zy_simnet_bimc_pollrsp1_752_w$ ;
wire  [0:31] _zy_simnet_bimc_pollrsp0_753_w$ ;
wire  [0:9] _zy_simnet_bimc_dbgcmd2_754_w$ ;
wire  [0:31] _zy_simnet_bimc_dbgcmd1_755_w$ ;
wire  [0:31] _zy_simnet_bimc_dbgcmd0_756_w$ ;
wire  [0:4] _zy_simnet_interrupt_status_757_w$ ;
wire  _zy_simnet_set_drbg_expired_int_758_w$;
wire  _zy_simnet_cceip0_ism_mbe_759_w$;
wire  _zy_simnet_cceip1_ism_mbe_760_w$;
wire  _zy_simnet_cceip2_ism_mbe_761_w$;
wire  _zy_simnet_cceip3_ism_mbe_762_w$;
wire  _zy_simnet_cddip0_ism_mbe_763_w$;
wire  _zy_simnet_cddip1_ism_mbe_764_w$;
wire  _zy_simnet_cddip2_ism_mbe_765_w$;
wire  _zy_simnet_cddip3_ism_mbe_766_w$;
wire  _zy_simnet_bimc_interrupt_767_w$;
wire  _zy_simnet_wr_stb_768_w$;
wire  [0:31] _zy_simnet_wr_data_769_w$ ;
wire  [0:10] _zy_simnet_reg_addr_770_w$ ;
wire  [0:4] _zy_simnet_o_interrupt_mask_771_w$ ;
wire  [0:2] _zy_simnet_sa_snapshot_ia_status_772_w$ ;
wire  [0:4] _zy_simnet_sa_snapshot_ia_status_773_w$ ;
wire  [0:4] _zy_simnet_sa_snapshot_ia_status_774_w$ ;
wire  [0:15] _zy_simnet_sa_snapshot_ia_capability_775_w$ ;
wire  [0:3] _zy_simnet_sa_snapshot_ia_capability_776_w$ ;
wire  [0:63] _zy_simnet_sa_snapshot_ia_rdata_777_w$ ;
wire  [0:10] _zy_simnet_reg_addr_778_w$ ;
wire  [0:3] _zy_simnet_sa_snapshot_ia_config_779_w$ ;
wire  [0:4] _zy_simnet_sa_snapshot_ia_config_780_w$ ;
wire  _zy_simnet_wr_stb_781_w$;
wire  [0:63] _zy_simnet_sa_snapshot_ia_wdata_782_w$ ;
wire  [0:2] _zy_simnet_sa_count_ia_status_783_w$ ;
wire  [0:4] _zy_simnet_sa_count_ia_status_784_w$ ;
wire  [0:4] _zy_simnet_sa_count_ia_status_785_w$ ;
wire  [0:15] _zy_simnet_sa_count_ia_capability_786_w$ ;
wire  [0:3] _zy_simnet_sa_count_ia_capability_787_w$ ;
wire  [0:63] _zy_simnet_sa_count_ia_rdata_788_w$ ;
wire  [0:10] _zy_simnet_reg_addr_789_w$ ;
wire  [0:3] _zy_simnet_sa_count_ia_config_790_w$ ;
wire  [0:4] _zy_simnet_sa_count_ia_config_791_w$ ;
wire  _zy_simnet_wr_stb_792_w$;
wire  [0:63] _zy_simnet_sa_count_ia_wdata_793_w$ ;
wire  [0:2] _zy_simnet_sa_ctrl_ia_status_794_w$ ;
wire  [0:4] _zy_simnet_sa_ctrl_ia_status_795_w$ ;
wire  [0:4] _zy_simnet_sa_ctrl_ia_status_796_w$ ;
wire  [0:15] _zy_simnet_sa_ctrl_ia_capability_797_w$ ;
wire  [0:3] _zy_simnet_sa_ctrl_ia_capability_798_w$ ;
wire  [0:31] _zy_simnet_sa_ctrl_ia_rdata_799_w$ ;
wire  [0:10] _zy_simnet_reg_addr_800_w$ ;
wire  [0:3] _zy_simnet_sa_ctrl_ia_config_801_w$ ;
wire  [0:4] _zy_simnet_sa_ctrl_ia_config_802_w$ ;
wire  _zy_simnet_wr_stb_803_w$;
wire  [0:31] _zy_simnet_sa_ctrl_ia_wdata_804_w$ ;
ixc_assign  #(84) _zz_strnp_0 (_zy_simnet_rbus_ring_o_0_w$,rbus_ring_o);
ixc_assign  #(83) _zz_strnp_1 (_zy_simnet_kme_cceip0_ob_out_1_w$,kme_cceip0_ob_out);
ixc_assign  #(1) _zz_strnp_2 (_zy_simnet_kme_cceip0_ob_in_mod_2_w$,kme_cceip0_ob_in_mod);
ixc_assign  #(83) _zz_strnp_3 (_zy_simnet_kme_cceip1_ob_out_3_w$,kme_cceip1_ob_out);
ixc_assign  #(1) _zz_strnp_4 (_zy_simnet_kme_cceip1_ob_in_mod_4_w$,kme_cceip1_ob_in_mod);
ixc_assign  #(83) _zz_strnp_5 (_zy_simnet_kme_cceip2_ob_out_5_w$,kme_cceip2_ob_out);
ixc_assign  #(1) _zz_strnp_6 (_zy_simnet_kme_cceip2_ob_in_mod_6_w$,kme_cceip2_ob_in_mod);
ixc_assign  #(83) _zz_strnp_7 (_zy_simnet_kme_cceip3_ob_out_7_w$,kme_cceip3_ob_out);
ixc_assign  #(1) _zz_strnp_8 (_zy_simnet_kme_cceip3_ob_in_mod_8_w$,kme_cceip3_ob_in_mod);
ixc_assign  #(83) _zz_strnp_9 (_zy_simnet_kme_cddip0_ob_out_9_w$,kme_cddip0_ob_out);
ixc_assign  #(1) _zz_strnp_10 (_zy_simnet_kme_cddip0_ob_in_mod_10_w$,kme_cddip0_ob_in_mod);
ixc_assign  #(83) _zz_strnp_11 (_zy_simnet_kme_cddip1_ob_out_11_w$,kme_cddip1_ob_out);
ixc_assign  #(1) _zz_strnp_12 (_zy_simnet_kme_cddip1_ob_in_mod_12_w$,kme_cddip1_ob_in_mod);
ixc_assign  #(83) _zz_strnp_13 (_zy_simnet_kme_cddip2_ob_out_13_w$,kme_cddip2_ob_out);
ixc_assign  #(1) _zz_strnp_14 (_zy_simnet_kme_cddip2_ob_in_mod_14_w$,kme_cddip2_ob_in_mod);
ixc_assign  #(83) _zz_strnp_15 (_zy_simnet_kme_cddip3_ob_out_15_w$,kme_cddip3_ob_out);
ixc_assign  #(1) _zz_strnp_16 (_zy_simnet_kme_cddip3_ob_in_mod_16_w$,kme_cddip3_ob_in_mod);
ixc_assign  #(38) _zz_strnp_17 (_zy_simnet_kim_dout_17_w$,kim_dout);
ixc_assign  #(2176) _zz_strnp_18 (_zy_simnet_labels_18_w$,labels);
ixc_assign  #(9) _zz_strnp_19 (_zy_simnet_tready_override_19_w$,tready_override);
ixc_assign  #(7) _zz_strnp_20 (_zy_simnet_cceip_encrypt_kop_fifo_override_20_w$,cceip_encrypt_kop_fifo_override);
ixc_assign  #(7) _zz_strnp_21 (_zy_simnet_cceip_validate_kop_fifo_override_21_w$,cceip_validate_kop_fifo_override);
ixc_assign  #(7) _zz_strnp_22 (_zy_simnet_cddip_decrypt_kop_fifo_override_22_w$,cddip_decrypt_kop_fifo_override);
ixc_assign  #(32) _zz_strnp_23 (_zy_simnet_sa_global_ctrl_23_w$,sa_global_ctrl);
assign  _zy_simnet_cio_24 = 1'b0;
ixc_assign  #(11) _zz_strnp_24 (_zy_simnet_locl_addr_25_w$,locl_addr);
ixc_assign  #(1) _zz_strnp_25 (_zy_simnet_locl_wr_strb_26_w$,locl_wr_strb);
ixc_assign  #(32) _zz_strnp_26 (_zy_simnet_locl_wr_data_27_w$,locl_wr_data);
ixc_assign  #(1) _zz_strnp_27 (_zy_simnet_locl_rd_strb_28_w$,locl_rd_strb);
ixc_assign  #(32) _zz_strnp_28 (locl_rd_data,_zy_simnet_locl_rd_data_29_w$);
ixc_assign  #(1) _zz_strnp_29 (locl_ack,_zy_simnet_locl_ack_30_w$);
ixc_assign  #(1) _zz_strnp_30 (locl_err_ack,_zy_simnet_locl_err_ack_31_w$);
ixc_assign  #(25) _zz_strnp_31 (spare.f.spare[31:7],_zy_simnet_tvar_33);
ixc_assign  #(1) _zz_strnp_32 (spare.f.spare[3],_zy_simnet_tvar_34);
ixc_assign  #(1) _zz_strnp_33 (o_tready_override_val,_zy_simnet_tvar_35);
ixc_assign  #(1) _zz_strnp_34 (o_disable_ckv_kim_ism_reads,_zy_simnet_tvar_36);
ixc_assign  #(1) _zz_strnp_35 (o_send_kme_ib_beat,_zy_simnet_tvar_37);
ixc_assign  #(32) _zz_strnp_36 ({_zy_simnet_tvar_33,kdf_test_mode_en,always_validate_kim_ref,manual_txc,_zy_simnet_tvar_34,_zy_simnet_tvar_35,_zy_simnet_tvar_36,_zy_simnet_tvar_37},_zy_simnet_tvar_32);
ixc_assign  #(32) _zz_strnp_37 (cceip0_out_ia_wdata.r.part0,_zy_simnet_cceip0_out_ia_wdata_38_w$);
ixc_assign  #(32) _zz_strnp_38 (cceip0_out_ia_wdata.r.part1,_zy_simnet_cceip0_out_ia_wdata_39_w$);
ixc_assign  #(32) _zz_strnp_39 (cceip0_out_ia_wdata.r.part2,_zy_simnet_cceip0_out_ia_wdata_40_w$);
ixc_assign  #(13) _zz_strnp_40 (cceip0_out_ia_config,_zy_simnet_cceip0_out_ia_config_41_w$);
ixc_assign  #(12) _zz_strnp_41 (cceip0_out_im_config,_zy_simnet_cceip0_out_im_config_42_w$);
ixc_assign  #(32) _zz_strnp_42 (cceip1_out_ia_wdata.r.part0,_zy_simnet_cceip1_out_ia_wdata_44_w$);
ixc_assign  #(32) _zz_strnp_43 (cceip1_out_ia_wdata.r.part1,_zy_simnet_cceip1_out_ia_wdata_45_w$);
ixc_assign  #(32) _zz_strnp_44 (cceip1_out_ia_wdata.r.part2,_zy_simnet_cceip1_out_ia_wdata_46_w$);
ixc_assign  #(13) _zz_strnp_45 (cceip1_out_ia_config,_zy_simnet_cceip1_out_ia_config_47_w$);
ixc_assign  #(12) _zz_strnp_46 (cceip1_out_im_config,_zy_simnet_cceip1_out_im_config_48_w$);
ixc_assign  #(32) _zz_strnp_47 (cceip2_out_ia_wdata.r.part0,_zy_simnet_cceip2_out_ia_wdata_50_w$);
ixc_assign  #(32) _zz_strnp_48 (cceip2_out_ia_wdata.r.part1,_zy_simnet_cceip2_out_ia_wdata_51_w$);
ixc_assign  #(32) _zz_strnp_49 (cceip2_out_ia_wdata.r.part2,_zy_simnet_cceip2_out_ia_wdata_52_w$);
ixc_assign  #(13) _zz_strnp_50 (cceip2_out_ia_config,_zy_simnet_cceip2_out_ia_config_53_w$);
ixc_assign  #(12) _zz_strnp_51 (cceip2_out_im_config,_zy_simnet_cceip2_out_im_config_54_w$);
ixc_assign  #(32) _zz_strnp_52 (cceip3_out_ia_wdata.r.part0,_zy_simnet_cceip3_out_ia_wdata_56_w$);
ixc_assign  #(32) _zz_strnp_53 (cceip3_out_ia_wdata.r.part1,_zy_simnet_cceip3_out_ia_wdata_57_w$);
ixc_assign  #(32) _zz_strnp_54 (cceip3_out_ia_wdata.r.part2,_zy_simnet_cceip3_out_ia_wdata_58_w$);
ixc_assign  #(13) _zz_strnp_55 (cceip3_out_ia_config,_zy_simnet_cceip3_out_ia_config_59_w$);
ixc_assign  #(12) _zz_strnp_56 (cceip3_out_im_config,_zy_simnet_cceip3_out_im_config_60_w$);
ixc_assign  #(32) _zz_strnp_57 (cddip0_out_ia_wdata.r.part0,_zy_simnet_cddip0_out_ia_wdata_62_w$);
ixc_assign  #(32) _zz_strnp_58 (cddip0_out_ia_wdata.r.part1,_zy_simnet_cddip0_out_ia_wdata_63_w$);
ixc_assign  #(32) _zz_strnp_59 (cddip0_out_ia_wdata.r.part2,_zy_simnet_cddip0_out_ia_wdata_64_w$);
ixc_assign  #(13) _zz_strnp_60 (cddip0_out_ia_config,_zy_simnet_cddip0_out_ia_config_65_w$);
ixc_assign  #(12) _zz_strnp_61 (cddip0_out_im_config,_zy_simnet_cddip0_out_im_config_66_w$);
ixc_assign  #(32) _zz_strnp_62 (cddip1_out_ia_wdata.r.part0,_zy_simnet_cddip1_out_ia_wdata_68_w$);
ixc_assign  #(32) _zz_strnp_63 (cddip1_out_ia_wdata.r.part1,_zy_simnet_cddip1_out_ia_wdata_69_w$);
ixc_assign  #(32) _zz_strnp_64 (cddip1_out_ia_wdata.r.part2,_zy_simnet_cddip1_out_ia_wdata_70_w$);
ixc_assign  #(13) _zz_strnp_65 (cddip1_out_ia_config,_zy_simnet_cddip1_out_ia_config_71_w$);
ixc_assign  #(12) _zz_strnp_66 (cddip1_out_im_config,_zy_simnet_cddip1_out_im_config_72_w$);
ixc_assign  #(32) _zz_strnp_67 (cddip2_out_ia_wdata.r.part0,_zy_simnet_cddip2_out_ia_wdata_74_w$);
ixc_assign  #(32) _zz_strnp_68 (cddip2_out_ia_wdata.r.part1,_zy_simnet_cddip2_out_ia_wdata_75_w$);
ixc_assign  #(32) _zz_strnp_69 (cddip2_out_ia_wdata.r.part2,_zy_simnet_cddip2_out_ia_wdata_76_w$);
ixc_assign  #(13) _zz_strnp_70 (cddip2_out_ia_config,_zy_simnet_cddip2_out_ia_config_77_w$);
ixc_assign  #(12) _zz_strnp_71 (cddip2_out_im_config,_zy_simnet_cddip2_out_im_config_78_w$);
ixc_assign  #(32) _zz_strnp_72 (cddip3_out_ia_wdata.r.part0,_zy_simnet_cddip3_out_ia_wdata_80_w$);
ixc_assign  #(32) _zz_strnp_73 (cddip3_out_ia_wdata.r.part1,_zy_simnet_cddip3_out_ia_wdata_81_w$);
ixc_assign  #(32) _zz_strnp_74 (cddip3_out_ia_wdata.r.part2,_zy_simnet_cddip3_out_ia_wdata_82_w$);
ixc_assign  #(13) _zz_strnp_75 (cddip3_out_ia_config,_zy_simnet_cddip3_out_ia_config_83_w$);
ixc_assign  #(12) _zz_strnp_76 (cddip3_out_im_config,_zy_simnet_cddip3_out_im_config_84_w$);
ixc_assign  #(32) _zz_strnp_77 (o_ckv_ia_wdata_part0,_zy_simnet_o_ckv_ia_wdata_part0_86_w$);
ixc_assign  #(32) _zz_strnp_78 (o_ckv_ia_wdata_part1,_zy_simnet_o_ckv_ia_wdata_part1_87_w$);
ixc_assign  #(19) _zz_strnp_79 (o_ckv_ia_config,_zy_simnet_o_ckv_ia_config_88_w$);
ixc_assign  #(21) _zz_strnp_80 (o_kim_ia_wdata_part0,_zy_simnet_o_kim_ia_wdata_part0_89_w$);
ixc_assign  #(17) _zz_strnp_81 (o_kim_ia_wdata_part1,_zy_simnet_o_kim_ia_wdata_part1_90_w$);
ixc_assign  #(18) _zz_strnp_82 (o_kim_ia_config,_zy_simnet_o_kim_ia_config_91_w$);
ixc_assign  #(16) _zz_strnp_83 ({labels[32'sd0].guid_size,labels[32'sd0].label_size,labels[32'sd0].delimiter_valid,labels[32'sd0].delimiter},_zy_simnet_tvar_92);
ixc_assign  #(32) _zz_strnp_84 (labels[0].label[255:224],_zy_simnet_labels_93_w$);
ixc_assign  #(32) _zz_strnp_85 (labels[0].label[223:192],_zy_simnet_labels_94_w$);
ixc_assign  #(32) _zz_strnp_86 (labels[0].label[191:160],_zy_simnet_labels_95_w$);
ixc_assign  #(32) _zz_strnp_87 (labels[0].label[159:128],_zy_simnet_labels_96_w$);
ixc_assign  #(32) _zz_strnp_88 (labels[0].label[127:96],_zy_simnet_labels_97_w$);
ixc_assign  #(32) _zz_strnp_89 (labels[0].label[95:64],_zy_simnet_labels_98_w$);
ixc_assign  #(32) _zz_strnp_90 (labels[0].label[63:32],_zy_simnet_labels_99_w$);
ixc_assign  #(32) _zz_strnp_91 (labels[0].label[31:0],_zy_simnet_labels_100_w$);
ixc_assign  #(16) _zz_strnp_92 ({labels[32'sd1].guid_size,labels[32'sd1].label_size,labels[32'sd1].delimiter_valid,labels[32'sd1].delimiter},_zy_simnet_tvar_101);
ixc_assign  #(32) _zz_strnp_93 (labels[1].label[255:224],_zy_simnet_labels_102_w$);
ixc_assign  #(32) _zz_strnp_94 (labels[1].label[223:192],_zy_simnet_labels_103_w$);
ixc_assign  #(32) _zz_strnp_95 (labels[1].label[191:160],_zy_simnet_labels_104_w$);
ixc_assign  #(32) _zz_strnp_96 (labels[1].label[159:128],_zy_simnet_labels_105_w$);
ixc_assign  #(32) _zz_strnp_97 (labels[1].label[127:96],_zy_simnet_labels_106_w$);
ixc_assign  #(32) _zz_strnp_98 (labels[1].label[95:64],_zy_simnet_labels_107_w$);
ixc_assign  #(32) _zz_strnp_99 (labels[1].label[63:32],_zy_simnet_labels_108_w$);
ixc_assign  #(32) _zz_strnp_100 (labels[1].label[31:0],_zy_simnet_labels_109_w$);
ixc_assign  #(16) _zz_strnp_101 ({labels[32'sd2].guid_size,labels[32'sd2].label_size,labels[32'sd2].delimiter_valid,labels[32'sd2].delimiter},_zy_simnet_tvar_110);
ixc_assign  #(32) _zz_strnp_102 (labels[2].label[255:224],_zy_simnet_labels_111_w$);
ixc_assign  #(32) _zz_strnp_103 (labels[2].label[223:192],_zy_simnet_labels_112_w$);
ixc_assign  #(32) _zz_strnp_104 (labels[2].label[191:160],_zy_simnet_labels_113_w$);
ixc_assign  #(32) _zz_strnp_105 (labels[2].label[159:128],_zy_simnet_labels_114_w$);
ixc_assign  #(32) _zz_strnp_106 (labels[2].label[127:96],_zy_simnet_labels_115_w$);
ixc_assign  #(32) _zz_strnp_107 (labels[2].label[95:64],_zy_simnet_labels_116_w$);
ixc_assign  #(32) _zz_strnp_108 (labels[2].label[63:32],_zy_simnet_labels_117_w$);
ixc_assign  #(32) _zz_strnp_109 (labels[2].label[31:0],_zy_simnet_labels_118_w$);
ixc_assign  #(16) _zz_strnp_110 ({labels[32'sd3].guid_size,labels[32'sd3].label_size,labels[32'sd3].delimiter_valid,labels[32'sd3].delimiter},_zy_simnet_tvar_119);
ixc_assign  #(32) _zz_strnp_111 (labels[3].label[255:224],_zy_simnet_labels_120_w$);
ixc_assign  #(32) _zz_strnp_112 (labels[3].label[223:192],_zy_simnet_labels_121_w$);
ixc_assign  #(32) _zz_strnp_113 (labels[3].label[191:160],_zy_simnet_labels_122_w$);
ixc_assign  #(32) _zz_strnp_114 (labels[3].label[159:128],_zy_simnet_labels_123_w$);
ixc_assign  #(32) _zz_strnp_115 (labels[3].label[127:96],_zy_simnet_labels_124_w$);
ixc_assign  #(32) _zz_strnp_116 (labels[3].label[95:64],_zy_simnet_labels_125_w$);
ixc_assign  #(32) _zz_strnp_117 (labels[3].label[63:32],_zy_simnet_labels_126_w$);
ixc_assign  #(32) _zz_strnp_118 (labels[3].label[31:0],_zy_simnet_labels_127_w$);
ixc_assign  #(16) _zz_strnp_119 ({labels[32'sd4].guid_size,labels[32'sd4].label_size,labels[32'sd4].delimiter_valid,labels[32'sd4].delimiter},_zy_simnet_tvar_128);
ixc_assign  #(32) _zz_strnp_120 (labels[4].label[255:224],_zy_simnet_labels_129_w$);
ixc_assign  #(32) _zz_strnp_121 (labels[4].label[223:192],_zy_simnet_labels_130_w$);
ixc_assign  #(32) _zz_strnp_122 (labels[4].label[191:160],_zy_simnet_labels_131_w$);
ixc_assign  #(32) _zz_strnp_123 (labels[4].label[159:128],_zy_simnet_labels_132_w$);
ixc_assign  #(32) _zz_strnp_124 (labels[4].label[127:96],_zy_simnet_labels_133_w$);
ixc_assign  #(32) _zz_strnp_125 (labels[4].label[95:64],_zy_simnet_labels_134_w$);
ixc_assign  #(32) _zz_strnp_126 (labels[4].label[63:32],_zy_simnet_labels_135_w$);
ixc_assign  #(32) _zz_strnp_127 (labels[4].label[31:0],_zy_simnet_labels_136_w$);
ixc_assign  #(16) _zz_strnp_128 ({labels[32'sd5].guid_size,labels[32'sd5].label_size,labels[32'sd5].delimiter_valid,labels[32'sd5].delimiter},_zy_simnet_tvar_137);
ixc_assign  #(32) _zz_strnp_129 (labels[5].label[255:224],_zy_simnet_labels_138_w$);
ixc_assign  #(32) _zz_strnp_130 (labels[5].label[223:192],_zy_simnet_labels_139_w$);
ixc_assign  #(32) _zz_strnp_131 (labels[5].label[191:160],_zy_simnet_labels_140_w$);
ixc_assign  #(32) _zz_strnp_132 (labels[5].label[159:128],_zy_simnet_labels_141_w$);
ixc_assign  #(32) _zz_strnp_133 (labels[5].label[127:96],_zy_simnet_labels_142_w$);
ixc_assign  #(32) _zz_strnp_134 (labels[5].label[95:64],_zy_simnet_labels_143_w$);
ixc_assign  #(32) _zz_strnp_135 (labels[5].label[63:32],_zy_simnet_labels_144_w$);
ixc_assign  #(32) _zz_strnp_136 (labels[5].label[31:0],_zy_simnet_labels_145_w$);
ixc_assign  #(16) _zz_strnp_137 ({labels[32'sd6].guid_size,labels[32'sd6].label_size,labels[32'sd6].delimiter_valid,labels[32'sd6].delimiter},_zy_simnet_tvar_146);
ixc_assign  #(32) _zz_strnp_138 (labels[6].label[255:224],_zy_simnet_labels_147_w$);
ixc_assign  #(32) _zz_strnp_139 (labels[6].label[223:192],_zy_simnet_labels_148_w$);
ixc_assign  #(32) _zz_strnp_140 (labels[6].label[191:160],_zy_simnet_labels_149_w$);
ixc_assign  #(32) _zz_strnp_141 (labels[6].label[159:128],_zy_simnet_labels_150_w$);
ixc_assign  #(32) _zz_strnp_142 (labels[6].label[127:96],_zy_simnet_labels_151_w$);
ixc_assign  #(32) _zz_strnp_143 (labels[6].label[95:64],_zy_simnet_labels_152_w$);
ixc_assign  #(32) _zz_strnp_144 (labels[6].label[63:32],_zy_simnet_labels_153_w$);
ixc_assign  #(32) _zz_strnp_145 (labels[6].label[31:0],_zy_simnet_labels_154_w$);
ixc_assign  #(16) _zz_strnp_146 ({labels[32'sd7].guid_size,labels[32'sd7].label_size,labels[32'sd7].delimiter_valid,labels[32'sd7].delimiter},_zy_simnet_tvar_155);
ixc_assign  #(32) _zz_strnp_147 (labels[7].label[255:224],_zy_simnet_labels_156_w$);
ixc_assign  #(32) _zz_strnp_148 (labels[7].label[223:192],_zy_simnet_labels_157_w$);
ixc_assign  #(32) _zz_strnp_149 (labels[7].label[191:160],_zy_simnet_labels_158_w$);
ixc_assign  #(32) _zz_strnp_150 (labels[7].label[159:128],_zy_simnet_labels_159_w$);
ixc_assign  #(32) _zz_strnp_151 (labels[7].label[127:96],_zy_simnet_labels_160_w$);
ixc_assign  #(32) _zz_strnp_152 (labels[7].label[95:64],_zy_simnet_labels_161_w$);
ixc_assign  #(32) _zz_strnp_153 (labels[7].label[63:32],_zy_simnet_labels_162_w$);
ixc_assign  #(32) _zz_strnp_154 (labels[7].label[31:0],_zy_simnet_labels_163_w$);
ixc_assign  #(2) _zz_strnp_155 (o_kdf_drbg_ctrl,_zy_simnet_o_kdf_drbg_ctrl_164_w$);
ixc_assign  #(32) _zz_strnp_156 (o_kdf_drbg_seed_0_state_key_31_0,_zy_simnet_o_kdf_drbg_seed_0_state_key_31_0_165_w$);
ixc_assign  #(32) _zz_strnp_157 (o_kdf_drbg_seed_0_state_key_63_32,_zy_simnet_o_kdf_drbg_seed_0_state_key_63_32_166_w$);
ixc_assign  #(32) _zz_strnp_158 (o_kdf_drbg_seed_0_state_key_95_64,_zy_simnet_o_kdf_drbg_seed_0_state_key_95_64_167_w$);
ixc_assign  #(32) _zz_strnp_159 (o_kdf_drbg_seed_0_state_key_127_96,_zy_simnet_o_kdf_drbg_seed_0_state_key_127_96_168_w$);
ixc_assign  #(32) _zz_strnp_160 (o_kdf_drbg_seed_0_state_key_159_128,_zy_simnet_o_kdf_drbg_seed_0_state_key_159_128_169_w$);
ixc_assign  #(32) _zz_strnp_161 (o_kdf_drbg_seed_0_state_key_191_160,_zy_simnet_o_kdf_drbg_seed_0_state_key_191_160_170_w$);
ixc_assign  #(32) _zz_strnp_162 (o_kdf_drbg_seed_0_state_key_223_192,_zy_simnet_o_kdf_drbg_seed_0_state_key_223_192_171_w$);
ixc_assign  #(32) _zz_strnp_163 (o_kdf_drbg_seed_0_state_key_255_224,_zy_simnet_o_kdf_drbg_seed_0_state_key_255_224_172_w$);
ixc_assign  #(32) _zz_strnp_164 (o_kdf_drbg_seed_0_state_value_31_0,_zy_simnet_o_kdf_drbg_seed_0_state_value_31_0_173_w$);
ixc_assign  #(32) _zz_strnp_165 (o_kdf_drbg_seed_0_state_value_63_32,_zy_simnet_o_kdf_drbg_seed_0_state_value_63_32_174_w$);
ixc_assign  #(32) _zz_strnp_166 (o_kdf_drbg_seed_0_state_value_95_64,_zy_simnet_o_kdf_drbg_seed_0_state_value_95_64_175_w$);
ixc_assign  #(32) _zz_strnp_167 (o_kdf_drbg_seed_0_state_value_127_96,_zy_simnet_o_kdf_drbg_seed_0_state_value_127_96_176_w$);
ixc_assign  #(32) _zz_strnp_168 (o_kdf_drbg_seed_0_reseed_interval_0,_zy_simnet_o_kdf_drbg_seed_0_reseed_interval_0_177_w$);
ixc_assign  #(16) _zz_strnp_169 (o_kdf_drbg_seed_0_reseed_interval_1,_zy_simnet_o_kdf_drbg_seed_0_reseed_interval_1_178_w$);
ixc_assign  #(32) _zz_strnp_170 (o_kdf_drbg_seed_1_state_key_31_0,_zy_simnet_o_kdf_drbg_seed_1_state_key_31_0_179_w$);
ixc_assign  #(32) _zz_strnp_171 (o_kdf_drbg_seed_1_state_key_63_32,_zy_simnet_o_kdf_drbg_seed_1_state_key_63_32_180_w$);
ixc_assign  #(32) _zz_strnp_172 (o_kdf_drbg_seed_1_state_key_95_64,_zy_simnet_o_kdf_drbg_seed_1_state_key_95_64_181_w$);
ixc_assign  #(32) _zz_strnp_173 (o_kdf_drbg_seed_1_state_key_127_96,_zy_simnet_o_kdf_drbg_seed_1_state_key_127_96_182_w$);
ixc_assign  #(32) _zz_strnp_174 (o_kdf_drbg_seed_1_state_key_159_128,_zy_simnet_o_kdf_drbg_seed_1_state_key_159_128_183_w$);
ixc_assign  #(32) _zz_strnp_175 (o_kdf_drbg_seed_1_state_key_191_160,_zy_simnet_o_kdf_drbg_seed_1_state_key_191_160_184_w$);
ixc_assign  #(32) _zz_strnp_176 (o_kdf_drbg_seed_1_state_key_223_192,_zy_simnet_o_kdf_drbg_seed_1_state_key_223_192_185_w$);
ixc_assign  #(32) _zz_strnp_177 (o_kdf_drbg_seed_1_state_key_255_224,_zy_simnet_o_kdf_drbg_seed_1_state_key_255_224_186_w$);
ixc_assign  #(32) _zz_strnp_178 (o_kdf_drbg_seed_1_state_value_31_0,_zy_simnet_o_kdf_drbg_seed_1_state_value_31_0_187_w$);
ixc_assign  #(32) _zz_strnp_179 (o_kdf_drbg_seed_1_state_value_63_32,_zy_simnet_o_kdf_drbg_seed_1_state_value_63_32_188_w$);
ixc_assign  #(32) _zz_strnp_180 (o_kdf_drbg_seed_1_state_value_95_64,_zy_simnet_o_kdf_drbg_seed_1_state_value_95_64_189_w$);
ixc_assign  #(32) _zz_strnp_181 (o_kdf_drbg_seed_1_state_value_127_96,_zy_simnet_o_kdf_drbg_seed_1_state_value_127_96_190_w$);
ixc_assign  #(32) _zz_strnp_182 (o_kdf_drbg_seed_1_reseed_interval_0,_zy_simnet_o_kdf_drbg_seed_1_reseed_interval_0_191_w$);
ixc_assign  #(16) _zz_strnp_183 (o_kdf_drbg_seed_1_reseed_interval_1,_zy_simnet_o_kdf_drbg_seed_1_reseed_interval_1_192_w$);
ixc_assign  #(5) _zz_strnp_184 (o_interrupt_mask,_zy_simnet_o_interrupt_mask_194_w$);
ixc_assign  #(8) _zz_strnp_185 (o_engine_sticky_status,_zy_simnet_o_engine_sticky_status_195_w$);
ixc_assign  #(7) _zz_strnp_186 (o_bimc_monitor_mask,_zy_simnet_o_bimc_monitor_mask_196_w$);
ixc_assign  #(32) _zz_strnp_187 (o_bimc_ecc_uncorrectable_error_cnt,_zy_simnet_o_bimc_ecc_uncorrectable_error_cnt_197_w$);
ixc_assign  #(32) _zz_strnp_188 (o_bimc_ecc_correctable_error_cnt,_zy_simnet_o_bimc_ecc_correctable_error_cnt_198_w$);
ixc_assign  #(32) _zz_strnp_189 (o_bimc_parity_error_cnt,_zy_simnet_o_bimc_parity_error_cnt_199_w$);
ixc_assign  #(32) _zz_strnp_190 (o_bimc_global_config,_zy_simnet_o_bimc_global_config_200_w$);
ixc_assign  #(29) _zz_strnp_191 (o_bimc_eccpar_debug,_zy_simnet_o_bimc_eccpar_debug_201_w$);
ixc_assign  #(11) _zz_strnp_192 (o_bimc_cmd2,_zy_simnet_o_bimc_cmd2_202_w$);
ixc_assign  #(32) _zz_strnp_193 (o_bimc_cmd1,_zy_simnet_o_bimc_cmd1_203_w$);
ixc_assign  #(32) _zz_strnp_194 (o_bimc_cmd0,_zy_simnet_o_bimc_cmd0_204_w$);
ixc_assign  #(10) _zz_strnp_195 (o_bimc_rxcmd2,_zy_simnet_o_bimc_rxcmd2_205_w$);
ixc_assign  #(10) _zz_strnp_196 (o_bimc_rxrsp2,_zy_simnet_o_bimc_rxrsp2_206_w$);
ixc_assign  #(10) _zz_strnp_197 (o_bimc_pollrsp2,_zy_simnet_o_bimc_pollrsp2_207_w$);
ixc_assign  #(10) _zz_strnp_198 (o_bimc_dbgcmd2,_zy_simnet_o_bimc_dbgcmd2_208_w$);
ixc_assign  #(9) _zz_strnp_199 (tready_override,_zy_simnet_tready_override_210_w$);
ixc_assign  #(32) _zz_strnp_200 (regs_sa_ctrl,_zy_simnet_regs_sa_ctrl_211_w$);
ixc_assign  #(32) _zz_strnp_201 (sa_snapshot_ia_wdata.r.part0,_zy_simnet_sa_snapshot_ia_wdata_212_w$);
ixc_assign  #(32) _zz_strnp_202 (sa_snapshot_ia_wdata.r.part1,_zy_simnet_sa_snapshot_ia_wdata_213_w$);
ixc_assign  #(9) _zz_strnp_203 (sa_snapshot_ia_config,_zy_simnet_sa_snapshot_ia_config_214_w$);
ixc_assign  #(32) _zz_strnp_204 (sa_count_ia_wdata.r.part0,_zy_simnet_sa_count_ia_wdata_215_w$);
ixc_assign  #(32) _zz_strnp_205 (sa_count_ia_wdata.r.part1,_zy_simnet_sa_count_ia_wdata_216_w$);
ixc_assign  #(9) _zz_strnp_206 (sa_count_ia_config,_zy_simnet_sa_count_ia_config_217_w$);
ixc_assign  #(7) _zz_strnp_207 (cceip_encrypt_kop_fifo_override,_zy_simnet_cceip_encrypt_kop_fifo_override_218_w$);
ixc_assign  #(7) _zz_strnp_208 (cceip_validate_kop_fifo_override,_zy_simnet_cceip_validate_kop_fifo_override_219_w$);
ixc_assign  #(7) _zz_strnp_209 (cddip_decrypt_kop_fifo_override,_zy_simnet_cddip_decrypt_kop_fifo_override_220_w$);
ixc_assign  #(32) _zz_strnp_210 (sa_global_ctrl,_zy_simnet_sa_global_ctrl_221_w$);
ixc_assign  #(32) _zz_strnp_211 (sa_ctrl_ia_wdata.r.part0,_zy_simnet_sa_ctrl_ia_wdata_222_w$);
ixc_assign  #(9) _zz_strnp_212 (sa_ctrl_ia_config,_zy_simnet_sa_ctrl_ia_config_223_w$);
ixc_assign  #(32) _zz_strnp_213 (_zy_simnet_blkid_revid_config_224_w$,blkid_revid_config);
ixc_assign  #(8) _zz_strnp_214 (_zy_simnet_revid_wire_225_w$,revid_wire);
ixc_assign  #(32) _zz_strnp_215 (_zy_simnet_tvar_226,{spare.f.spare[32'sd31:32'sd7],kdf_test_mode_en,always_validate_kim_ref,manual_txc,spare.f.spare[32'sd3],o_tready_override_val,disable_ckv_kim_ism_reads,send_kme_ib_beat});
ixc_assign  #(20) _zz_strnp_216 (_zy_simnet_cceip0_out_ia_capability_227_w$,cceip0_out_ia_capability);
ixc_assign  #(17) _zz_strnp_217 (_zy_simnet_cceip0_out_ia_status_228_w$,cceip0_out_ia_status);
assign  _zy_simnet_tvar_229 = (disable_ckv_kim_ism_reads ? 32'b0 : cceip0_out_ia_rdata.r.part0);
assign  _zy_simnet_tvar_230 = (disable_ckv_kim_ism_reads ? 32'b0 : cceip0_out_ia_rdata.r.part1);
assign  _zy_simnet_tvar_231 = (disable_ckv_kim_ism_reads ? 32'b0 : cceip0_out_ia_rdata.r.part2);
ixc_assign  #(12) _zz_strnp_218 (_zy_simnet_cceip0_out_im_status_232_w$,cceip0_out_im_status);
assign  _zy_simnet_cio_233 = 2'b0;
ixc_assign  #(20) _zz_strnp_219 (_zy_simnet_cceip1_out_ia_capability_234_w$,cceip1_out_ia_capability);
ixc_assign  #(17) _zz_strnp_220 (_zy_simnet_cceip1_out_ia_status_235_w$,cceip1_out_ia_status);
assign  _zy_simnet_tvar_236 = (disable_ckv_kim_ism_reads ? 32'b0 : cceip1_out_ia_rdata.r.part0);
assign  _zy_simnet_tvar_237 = (disable_ckv_kim_ism_reads ? 32'b0 : cceip1_out_ia_rdata.r.part1);
assign  _zy_simnet_tvar_238 = (disable_ckv_kim_ism_reads ? 32'b0 : cceip1_out_ia_rdata.r.part2);
ixc_assign  #(12) _zz_strnp_221 (_zy_simnet_cceip1_out_im_status_239_w$,cceip1_out_im_status);
assign  _zy_simnet_cio_240 = 2'b0;
ixc_assign  #(20) _zz_strnp_222 (_zy_simnet_cceip2_out_ia_capability_241_w$,cceip2_out_ia_capability);
ixc_assign  #(17) _zz_strnp_223 (_zy_simnet_cceip2_out_ia_status_242_w$,cceip2_out_ia_status);
assign  _zy_simnet_tvar_243 = (disable_ckv_kim_ism_reads ? 32'b0 : cceip2_out_ia_rdata.r.part0);
assign  _zy_simnet_tvar_244 = (disable_ckv_kim_ism_reads ? 32'b0 : cceip2_out_ia_rdata.r.part1);
assign  _zy_simnet_tvar_245 = (disable_ckv_kim_ism_reads ? 32'b0 : cceip2_out_ia_rdata.r.part2);
ixc_assign  #(12) _zz_strnp_224 (_zy_simnet_cceip2_out_im_status_246_w$,cceip2_out_im_status);
assign  _zy_simnet_cio_247 = 2'b0;
ixc_assign  #(20) _zz_strnp_225 (_zy_simnet_cceip3_out_ia_capability_248_w$,cceip3_out_ia_capability);
ixc_assign  #(17) _zz_strnp_226 (_zy_simnet_cceip3_out_ia_status_249_w$,cceip3_out_ia_status);
assign  _zy_simnet_tvar_250 = (disable_ckv_kim_ism_reads ? 32'b0 : cceip3_out_ia_rdata.r.part0);
assign  _zy_simnet_tvar_251 = (disable_ckv_kim_ism_reads ? 32'b0 : cceip3_out_ia_rdata.r.part1);
assign  _zy_simnet_tvar_252 = (disable_ckv_kim_ism_reads ? 32'b0 : cceip3_out_ia_rdata.r.part2);
ixc_assign  #(12) _zz_strnp_227 (_zy_simnet_cceip3_out_im_status_253_w$,cceip3_out_im_status);
assign  _zy_simnet_cio_254 = 2'b0;
ixc_assign  #(20) _zz_strnp_228 (_zy_simnet_cddip0_out_ia_capability_255_w$,cddip0_out_ia_capability);
ixc_assign  #(17) _zz_strnp_229 (_zy_simnet_cddip0_out_ia_status_256_w$,cddip0_out_ia_status);
assign  _zy_simnet_tvar_257 = (disable_ckv_kim_ism_reads ? 32'b0 : cddip0_out_ia_rdata.r.part0);
assign  _zy_simnet_tvar_258 = (disable_ckv_kim_ism_reads ? 32'b0 : cddip0_out_ia_rdata.r.part1);
assign  _zy_simnet_tvar_259 = (disable_ckv_kim_ism_reads ? 32'b0 : cddip0_out_ia_rdata.r.part2);
ixc_assign  #(12) _zz_strnp_230 (_zy_simnet_cddip0_out_im_status_260_w$,cddip0_out_im_status);
assign  _zy_simnet_cio_261 = 2'b0;
ixc_assign  #(20) _zz_strnp_231 (_zy_simnet_cddip1_out_ia_capability_262_w$,cddip1_out_ia_capability);
ixc_assign  #(17) _zz_strnp_232 (_zy_simnet_cddip1_out_ia_status_263_w$,cddip1_out_ia_status);
assign  _zy_simnet_tvar_264 = (disable_ckv_kim_ism_reads ? 32'b0 : cddip1_out_ia_rdata.r.part0);
assign  _zy_simnet_tvar_265 = (disable_ckv_kim_ism_reads ? 32'b0 : cddip1_out_ia_rdata.r.part1);
assign  _zy_simnet_tvar_266 = (disable_ckv_kim_ism_reads ? 32'b0 : cddip1_out_ia_rdata.r.part2);
ixc_assign  #(12) _zz_strnp_233 (_zy_simnet_cddip1_out_im_status_267_w$,cddip1_out_im_status);
assign  _zy_simnet_cio_268 = 2'b0;
ixc_assign  #(20) _zz_strnp_234 (_zy_simnet_cddip2_out_ia_capability_269_w$,cddip2_out_ia_capability);
ixc_assign  #(17) _zz_strnp_235 (_zy_simnet_cddip2_out_ia_status_270_w$,cddip2_out_ia_status);
assign  _zy_simnet_tvar_271 = (disable_ckv_kim_ism_reads ? 32'b0 : cddip2_out_ia_rdata.r.part0);
assign  _zy_simnet_tvar_272 = (disable_ckv_kim_ism_reads ? 32'b0 : cddip2_out_ia_rdata.r.part1);
assign  _zy_simnet_tvar_273 = (disable_ckv_kim_ism_reads ? 32'b0 : cddip2_out_ia_rdata.r.part2);
ixc_assign  #(12) _zz_strnp_236 (_zy_simnet_cddip2_out_im_status_274_w$,cddip2_out_im_status);
assign  _zy_simnet_cio_275 = 2'b0;
ixc_assign  #(20) _zz_strnp_237 (_zy_simnet_cddip3_out_ia_capability_276_w$,cddip3_out_ia_capability);
ixc_assign  #(17) _zz_strnp_238 (_zy_simnet_cddip3_out_ia_status_277_w$,cddip3_out_ia_status);
assign  _zy_simnet_tvar_278 = (disable_ckv_kim_ism_reads ? 32'b0 : cddip3_out_ia_rdata.r.part0);
assign  _zy_simnet_tvar_279 = (disable_ckv_kim_ism_reads ? 32'b0 : cddip3_out_ia_rdata.r.part1);
assign  _zy_simnet_tvar_280 = (disable_ckv_kim_ism_reads ? 32'b0 : cddip3_out_ia_rdata.r.part2);
ixc_assign  #(12) _zz_strnp_239 (_zy_simnet_cddip3_out_im_status_281_w$,cddip3_out_im_status);
assign  _zy_simnet_cio_282 = 2'b0;
ixc_assign  #(20) _zz_strnp_240 (_zy_simnet_ckv_ia_capability_283_w$,ckv_ia_capability);
ixc_assign  #(23) _zz_strnp_241 (_zy_simnet_ckv_ia_status_284_w$,ckv_ia_status);
ixc_assign  #(32) _zz_strnp_242 (_zy_simnet_ckv_ia_rdata_part0_285_w$,ckv_ia_rdata_part0);
ixc_assign  #(32) _zz_strnp_243 (_zy_simnet_ckv_ia_rdata_part1_286_w$,ckv_ia_rdata_part1);
ixc_assign  #(20) _zz_strnp_244 (_zy_simnet_kim_ia_capability_287_w$,kim_ia_capability);
ixc_assign  #(22) _zz_strnp_245 (_zy_simnet_kim_ia_status_288_w$,kim_ia_status);
ixc_assign  #(21) _zz_strnp_246 (_zy_simnet_kim_ia_rdata_part0_289_w$,kim_ia_rdata_part0);
ixc_assign  #(17) _zz_strnp_247 (_zy_simnet_kim_ia_rdata_part1_290_w$,kim_ia_rdata_part1);
ixc_assign  #(2) _zz_strnp_248 (_zy_simnet_kdf_drbg_ctrl_291_w$,kdf_drbg_ctrl);
ixc_assign  #(5) _zz_strnp_249 (_zy_simnet_interrupt_status_292_w$,interrupt_status);
ixc_assign  #(8) _zz_strnp_250 (_zy_simnet_engine_sticky_status_293_w$,engine_sticky_status);
ixc_assign  #(7) _zz_strnp_251 (_zy_simnet_bimc_monitor_294_w$,bimc_monitor);
ixc_assign  #(32) _zz_strnp_252 (_zy_simnet_bimc_ecc_uncorrectable_error_cnt_295_w$,bimc_ecc_uncorrectable_error_cnt);
ixc_assign  #(32) _zz_strnp_253 (_zy_simnet_bimc_ecc_correctable_error_cnt_296_w$,bimc_ecc_correctable_error_cnt);
ixc_assign  #(32) _zz_strnp_254 (_zy_simnet_bimc_parity_error_cnt_297_w$,bimc_parity_error_cnt);
ixc_assign  #(32) _zz_strnp_255 (_zy_simnet_bimc_global_config_298_w$,bimc_global_config);
ixc_assign  #(12) _zz_strnp_256 (_zy_simnet_bimc_memid_299_w$,bimc_memid);
ixc_assign  #(29) _zz_strnp_257 (_zy_simnet_bimc_eccpar_debug_300_w$,bimc_eccpar_debug);
ixc_assign  #(11) _zz_strnp_258 (_zy_simnet_bimc_cmd2_301_w$,bimc_cmd2);
ixc_assign  #(10) _zz_strnp_259 (_zy_simnet_bimc_rxcmd2_302_w$,bimc_rxcmd2);
ixc_assign  #(32) _zz_strnp_260 (_zy_simnet_bimc_rxcmd1_303_w$,bimc_rxcmd1);
ixc_assign  #(32) _zz_strnp_261 (_zy_simnet_bimc_rxcmd0_304_w$,bimc_rxcmd0);
ixc_assign  #(10) _zz_strnp_262 (_zy_simnet_bimc_rxrsp2_305_w$,bimc_rxrsp2);
ixc_assign  #(32) _zz_strnp_263 (_zy_simnet_bimc_rxrsp1_306_w$,bimc_rxrsp1);
ixc_assign  #(32) _zz_strnp_264 (_zy_simnet_bimc_rxrsp0_307_w$,bimc_rxrsp0);
ixc_assign  #(10) _zz_strnp_265 (_zy_simnet_bimc_pollrsp2_308_w$,bimc_pollrsp2);
ixc_assign  #(32) _zz_strnp_266 (_zy_simnet_bimc_pollrsp1_309_w$,bimc_pollrsp1);
ixc_assign  #(32) _zz_strnp_267 (_zy_simnet_bimc_pollrsp0_310_w$,bimc_pollrsp0);
ixc_assign  #(10) _zz_strnp_268 (_zy_simnet_bimc_dbgcmd2_311_w$,bimc_dbgcmd2);
ixc_assign  #(32) _zz_strnp_269 (_zy_simnet_bimc_dbgcmd1_312_w$,bimc_dbgcmd1);
ixc_assign  #(32) _zz_strnp_270 (_zy_simnet_bimc_dbgcmd0_313_w$,bimc_dbgcmd0);
ixc_assign  #(16) _zz_strnp_271 (_zy_simnet_im_available_314_w$,im_available);
assign  _zy_simnet_cio_315 = 16'b0;
ixc_assign  #(9) _zz_strnp_272 (_zy_simnet_tready_override_316_w$,tready_override);
ixc_assign  #(32) _zz_strnp_273 (_zy_simnet_regs_sa_ctrl_317_w$,regs_sa_ctrl);
ixc_assign  #(20) _zz_strnp_274 (_zy_simnet_sa_snapshot_ia_capability_318_w$,sa_snapshot_ia_capability);
ixc_assign  #(13) _zz_strnp_275 (_zy_simnet_sa_snapshot_ia_status_319_w$,sa_snapshot_ia_status);
ixc_assign  #(32) _zz_strnp_276 (_zy_simnet_sa_snapshot_ia_rdata_320_w$,sa_snapshot_ia_rdata.r.part0);
ixc_assign  #(32) _zz_strnp_277 (_zy_simnet_sa_snapshot_ia_rdata_321_w$,sa_snapshot_ia_rdata.r.part1);
ixc_assign  #(20) _zz_strnp_278 (_zy_simnet_sa_count_ia_capability_322_w$,sa_count_ia_capability);
ixc_assign  #(13) _zz_strnp_279 (_zy_simnet_sa_count_ia_status_323_w$,sa_count_ia_status);
ixc_assign  #(32) _zz_strnp_280 (_zy_simnet_sa_count_ia_rdata_324_w$,sa_count_ia_rdata.r.part0);
ixc_assign  #(32) _zz_strnp_281 (_zy_simnet_sa_count_ia_rdata_325_w$,sa_count_ia_rdata.r.part1);
ixc_assign  #(32) _zz_strnp_282 (_zy_simnet_sa_global_ctrl_326_w$,sa_global_ctrl);
ixc_assign  #(20) _zz_strnp_283 (_zy_simnet_sa_ctrl_ia_capability_327_w$,sa_ctrl_ia_capability);
ixc_assign  #(13) _zz_strnp_284 (_zy_simnet_sa_ctrl_ia_status_328_w$,sa_ctrl_ia_status);
ixc_assign  #(32) _zz_strnp_285 (_zy_simnet_sa_ctrl_ia_rdata_329_w$,sa_ctrl_ia_rdata.r.part0);
ixc_assign  #(1) _zz_strnp_286 (wr_stb,_zy_simnet_wr_stb_330_w$);
ixc_assign  #(32) _zz_strnp_287 (wr_data,_zy_simnet_wr_data_332_w$);
ixc_assign  #(11) _zz_strnp_288 (reg_addr,_zy_simnet_reg_addr_333_w$);
ixc_assign  #(16) _zz_strnp_289 (rbus_ring_o.addr,_zy_simnet_rbus_ring_o_334_w$);
ixc_assign  #(1) _zz_strnp_290 (rbus_ring_o.wr_strb,_zy_simnet_rbus_ring_o_335_w$);
ixc_assign  #(32) _zz_strnp_291 (rbus_ring_o.wr_data,_zy_simnet_rbus_ring_o_336_w$);
ixc_assign  #(1) _zz_strnp_292 (rbus_ring_o.rd_strb,_zy_simnet_rbus_ring_o_337_w$);
ixc_assign  #(11) _zz_strnp_293 (locl_addr,_zy_simnet_locl_addr_338_w$);
ixc_assign  #(1) _zz_strnp_294 (locl_wr_strb,_zy_simnet_locl_wr_strb_339_w$);
ixc_assign  #(32) _zz_strnp_295 (locl_wr_data,_zy_simnet_locl_wr_data_340_w$);
ixc_assign  #(1) _zz_strnp_296 (locl_rd_strb,_zy_simnet_locl_rd_strb_341_w$);
ixc_assign  #(32) _zz_strnp_297 (_zy_simnet_locl_rd_data_342_w$,locl_rd_data);
ixc_assign  #(1) _zz_strnp_298 (_zy_simnet_locl_ack_343_w$,locl_ack);
ixc_assign  #(1) _zz_strnp_299 (_zy_simnet_locl_err_ack_344_w$,locl_err_ack);
ixc_assign  #(32) _zz_strnp_300 (rbus_ring_o.rd_data,_zy_simnet_rbus_ring_o_345_w$);
ixc_assign  #(1) _zz_strnp_301 (rbus_ring_o.ack,_zy_simnet_rbus_ring_o_346_w$);
ixc_assign  #(1) _zz_strnp_302 (rbus_ring_o.err_ack,_zy_simnet_rbus_ring_o_347_w$);
ixc_assign  #(1) _zz_strnp_303 (kme_cceip0_ob_in_mod,_zy_simnet_kme_cceip0_ob_in_mod_348_w$);
ixc_assign  #(83) _zz_strnp_304 (kme_cceip0_ob_out_post,_zy_simnet_kme_cceip0_ob_out_post_349_w$);
ixc_assign  #(1) _zz_strnp_305 (cceip0_im_vld,_zy_simnet_cceip0_im_vld_350_w$);
assign  _zy_simnet_tvar_351 = (tready_override.f.engine_0_tready_override ? o_tready_override_val : kme_cceip0_ob_in);
ixc_assign  #(1) _zz_strnp_306 (_zy_simnet_cceip0_im_rdy_352_w$,cceip0_im_rdy);
ixc_assign  #(1) _zz_strnp_307 (kme_cceip1_ob_in_mod,_zy_simnet_kme_cceip1_ob_in_mod_353_w$);
ixc_assign  #(83) _zz_strnp_308 (kme_cceip1_ob_out_post,_zy_simnet_kme_cceip1_ob_out_post_354_w$);
ixc_assign  #(1) _zz_strnp_309 (cceip1_im_vld,_zy_simnet_cceip1_im_vld_355_w$);
assign  _zy_simnet_tvar_356 = (tready_override.f.engine_1_tready_override ? o_tready_override_val : kme_cceip1_ob_in);
ixc_assign  #(1) _zz_strnp_310 (_zy_simnet_cceip1_im_rdy_357_w$,cceip1_im_rdy);
ixc_assign  #(1) _zz_strnp_311 (kme_cceip2_ob_in_mod,_zy_simnet_kme_cceip2_ob_in_mod_358_w$);
ixc_assign  #(83) _zz_strnp_312 (kme_cceip2_ob_out_post,_zy_simnet_kme_cceip2_ob_out_post_359_w$);
ixc_assign  #(1) _zz_strnp_313 (cceip2_im_vld,_zy_simnet_cceip2_im_vld_360_w$);
assign  _zy_simnet_tvar_361 = (tready_override.f.engine_2_tready_override ? o_tready_override_val : kme_cceip2_ob_in);
ixc_assign  #(1) _zz_strnp_314 (_zy_simnet_cceip2_im_rdy_362_w$,cceip2_im_rdy);
ixc_assign  #(1) _zz_strnp_315 (kme_cceip3_ob_in_mod,_zy_simnet_kme_cceip3_ob_in_mod_363_w$);
ixc_assign  #(83) _zz_strnp_316 (kme_cceip3_ob_out_post,_zy_simnet_kme_cceip3_ob_out_post_364_w$);
ixc_assign  #(1) _zz_strnp_317 (cceip3_im_vld,_zy_simnet_cceip3_im_vld_365_w$);
assign  _zy_simnet_tvar_366 = (tready_override.f.engine_3_tready_override ? o_tready_override_val : kme_cceip3_ob_in);
ixc_assign  #(1) _zz_strnp_318 (_zy_simnet_cceip3_im_rdy_367_w$,cceip3_im_rdy);
ixc_assign  #(1) _zz_strnp_319 (kme_cddip0_ob_in_mod,_zy_simnet_kme_cddip0_ob_in_mod_368_w$);
ixc_assign  #(83) _zz_strnp_320 (kme_cddip0_ob_out_post,_zy_simnet_kme_cddip0_ob_out_post_369_w$);
ixc_assign  #(1) _zz_strnp_321 (cddip0_im_vld,_zy_simnet_cddip0_im_vld_370_w$);
assign  _zy_simnet_tvar_371 = (tready_override.f.engine_4_tready_override ? o_tready_override_val : kme_cddip0_ob_in);
ixc_assign  #(1) _zz_strnp_322 (_zy_simnet_cddip0_im_rdy_372_w$,cddip0_im_rdy);
ixc_assign  #(1) _zz_strnp_323 (kme_cddip1_ob_in_mod,_zy_simnet_kme_cddip1_ob_in_mod_373_w$);
ixc_assign  #(83) _zz_strnp_324 (kme_cddip1_ob_out_post,_zy_simnet_kme_cddip1_ob_out_post_374_w$);
ixc_assign  #(1) _zz_strnp_325 (cddip1_im_vld,_zy_simnet_cddip1_im_vld_375_w$);
assign  _zy_simnet_tvar_376 = (tready_override.f.engine_5_tready_override ? o_tready_override_val : kme_cddip1_ob_in);
ixc_assign  #(1) _zz_strnp_326 (_zy_simnet_cddip1_im_rdy_377_w$,cddip1_im_rdy);
ixc_assign  #(1) _zz_strnp_327 (kme_cddip2_ob_in_mod,_zy_simnet_kme_cddip2_ob_in_mod_378_w$);
ixc_assign  #(83) _zz_strnp_328 (kme_cddip2_ob_out_post,_zy_simnet_kme_cddip2_ob_out_post_379_w$);
ixc_assign  #(1) _zz_strnp_329 (cddip2_im_vld,_zy_simnet_cddip2_im_vld_380_w$);
assign  _zy_simnet_tvar_381 = (tready_override.f.engine_6_tready_override ? o_tready_override_val : kme_cddip2_ob_in);
ixc_assign  #(1) _zz_strnp_330 (_zy_simnet_cddip2_im_rdy_382_w$,cddip2_im_rdy);
ixc_assign  #(1) _zz_strnp_331 (kme_cddip3_ob_in_mod,_zy_simnet_kme_cddip3_ob_in_mod_383_w$);
ixc_assign  #(83) _zz_strnp_332 (kme_cddip3_ob_out_post,_zy_simnet_kme_cddip3_ob_out_post_384_w$);
ixc_assign  #(1) _zz_strnp_333 (cddip3_im_vld,_zy_simnet_cddip3_im_vld_385_w$);
assign  _zy_simnet_tvar_386 = (tready_override.f.engine_7_tready_override ? o_tready_override_val : kme_cddip3_ob_in);
ixc_assign  #(1) _zz_strnp_334 (_zy_simnet_cddip3_im_rdy_387_w$,cddip3_im_rdy);
ixc_assign  #(3) _zz_strnp_335 (cceip0_out_ia_status.f.code,_zy_simnet_cceip0_out_ia_status_388_w$);
ixc_assign  #(5) _zz_strnp_336 (cceip0_out_ia_status.f.datawords,_zy_simnet_cceip0_out_ia_status_389_w$);
ixc_assign  #(9) _zz_strnp_337 (cceip0_out_ia_status.f.addr,_zy_simnet_cceip0_out_ia_status_390_w$);
ixc_assign  #(16) _zz_strnp_338 (cceip0_out_ia_capability.r.part0[15:0],_zy_simnet_cceip0_out_ia_capability_391_w$);
ixc_assign  #(4) _zz_strnp_339 (cceip0_out_ia_capability.f.mem_type,_zy_simnet_cceip0_out_ia_capability_392_w$);
ixc_assign  #(96) _zz_strnp_340 (cceip0_out_ia_rdata,_zy_simnet_cceip0_out_ia_rdata_393_w$);
ixc_assign  #(1) _zz_strnp_341 (cceip1_ism_idat,_zy_simnet_cceip1_ism_idat_394_w$);
ixc_assign  #(1) _zz_strnp_342 (cceip1_ism_isync,_zy_simnet_cceip1_ism_isync_395_w$);
ixc_assign  #(1) _zz_strnp_343 (cceip0_ism_mbe,_zy_simnet_cceip0_ism_mbe_396_w$);
ixc_assign  #(1) _zz_strnp_344 (cceip0_im_rdy,_zy_simnet_cceip0_im_rdy_397_w$);
ixc_assign  #(2) _zz_strnp_345 (im_available_kme_cceip0,_zy_simnet_im_available_kme_cceip0_398_w$);
ixc_assign  #(12) _zz_strnp_346 (cceip0_out_im_status,_zy_simnet_cceip0_out_im_status_399_w$);
ixc_assign  #(11) _zz_strnp_347 (_zy_simnet_reg_addr_400_w$,reg_addr);
ixc_assign  #(4) _zz_strnp_348 (_zy_simnet_cceip0_out_ia_config_401_w$,cceip0_out_ia_config.f.op);
ixc_assign  #(9) _zz_strnp_349 (_zy_simnet_cceip0_out_ia_config_402_w$,cceip0_out_ia_config.f.addr);
ixc_assign  #(1) _zz_strnp_350 (_zy_simnet_wr_stb_403_w$,wr_stb);
ixc_assign  #(96) _zz_strnp_351 (_zy_simnet_cceip0_out_ia_wdata_404_w$,cceip0_out_ia_wdata);
assign  _zy_simnet_cio_405 = 1'b0;
ixc_assign  #(1) _zz_strnp_352 (_zy_simnet_cceip0_ism_bimc_isync_406_w$,cceip0_ism_bimc_isync);
ixc_assign  #(1) _zz_strnp_353 (_zy_simnet_cceip0_ism_bimc_idat_407_w$,cceip0_ism_bimc_idat);
ixc_assign  #(96) _zz_strnp_354 (_zy_simnet_cceip0_im_din_408_w$,cceip0_im_din);
ixc_assign  #(1) _zz_strnp_355 (_zy_simnet_cceip0_im_vld_409_w$,cceip0_im_vld);
ixc_assign  #(2) _zz_strnp_356 (_zy_simnet_im_consumed_kme_cceip0_410_w$,im_consumed_kme_cceip0);
ixc_assign  #(12) _zz_strnp_357 (_zy_simnet_cceip0_out_im_config_411_w$,cceip0_out_im_config);
ixc_assign  #(3) _zz_strnp_358 (cceip1_out_ia_status.f.code,_zy_simnet_cceip1_out_ia_status_412_w$);
ixc_assign  #(5) _zz_strnp_359 (cceip1_out_ia_status.f.datawords,_zy_simnet_cceip1_out_ia_status_413_w$);
ixc_assign  #(9) _zz_strnp_360 (cceip1_out_ia_status.f.addr,_zy_simnet_cceip1_out_ia_status_414_w$);
ixc_assign  #(16) _zz_strnp_361 (cceip1_out_ia_capability.r.part0[15:0],_zy_simnet_cceip1_out_ia_capability_415_w$);
ixc_assign  #(4) _zz_strnp_362 (cceip1_out_ia_capability.f.mem_type,_zy_simnet_cceip1_out_ia_capability_416_w$);
ixc_assign  #(96) _zz_strnp_363 (cceip1_out_ia_rdata,_zy_simnet_cceip1_out_ia_rdata_417_w$);
ixc_assign  #(1) _zz_strnp_364 (cceip2_ism_idat,_zy_simnet_cceip2_ism_idat_418_w$);
ixc_assign  #(1) _zz_strnp_365 (cceip2_ism_isync,_zy_simnet_cceip2_ism_isync_419_w$);
ixc_assign  #(1) _zz_strnp_366 (cceip1_ism_mbe,_zy_simnet_cceip1_ism_mbe_420_w$);
ixc_assign  #(1) _zz_strnp_367 (cceip1_im_rdy,_zy_simnet_cceip1_im_rdy_421_w$);
ixc_assign  #(2) _zz_strnp_368 (im_available_kme_cceip1,_zy_simnet_im_available_kme_cceip1_422_w$);
ixc_assign  #(12) _zz_strnp_369 (cceip1_out_im_status,_zy_simnet_cceip1_out_im_status_423_w$);
ixc_assign  #(11) _zz_strnp_370 (_zy_simnet_reg_addr_424_w$,reg_addr);
ixc_assign  #(4) _zz_strnp_371 (_zy_simnet_cceip1_out_ia_config_425_w$,cceip1_out_ia_config.f.op);
ixc_assign  #(9) _zz_strnp_372 (_zy_simnet_cceip1_out_ia_config_426_w$,cceip1_out_ia_config.f.addr);
ixc_assign  #(1) _zz_strnp_373 (_zy_simnet_wr_stb_427_w$,wr_stb);
ixc_assign  #(96) _zz_strnp_374 (_zy_simnet_cceip1_out_ia_wdata_428_w$,cceip1_out_ia_wdata);
assign  _zy_simnet_cio_429 = 1'b0;
ixc_assign  #(1) _zz_strnp_375 (_zy_simnet_cceip1_ism_isync_430_w$,cceip1_ism_isync);
ixc_assign  #(1) _zz_strnp_376 (_zy_simnet_cceip1_ism_idat_431_w$,cceip1_ism_idat);
ixc_assign  #(96) _zz_strnp_377 (_zy_simnet_cceip1_im_din_432_w$,cceip1_im_din);
ixc_assign  #(1) _zz_strnp_378 (_zy_simnet_cceip1_im_vld_433_w$,cceip1_im_vld);
ixc_assign  #(2) _zz_strnp_379 (_zy_simnet_im_consumed_kme_cceip1_434_w$,im_consumed_kme_cceip1);
ixc_assign  #(12) _zz_strnp_380 (_zy_simnet_cceip1_out_im_config_435_w$,cceip1_out_im_config);
ixc_assign  #(3) _zz_strnp_381 (cceip2_out_ia_status.f.code,_zy_simnet_cceip2_out_ia_status_436_w$);
ixc_assign  #(5) _zz_strnp_382 (cceip2_out_ia_status.f.datawords,_zy_simnet_cceip2_out_ia_status_437_w$);
ixc_assign  #(9) _zz_strnp_383 (cceip2_out_ia_status.f.addr,_zy_simnet_cceip2_out_ia_status_438_w$);
ixc_assign  #(16) _zz_strnp_384 (cceip2_out_ia_capability.r.part0[15:0],_zy_simnet_cceip2_out_ia_capability_439_w$);
ixc_assign  #(4) _zz_strnp_385 (cceip2_out_ia_capability.f.mem_type,_zy_simnet_cceip2_out_ia_capability_440_w$);
ixc_assign  #(96) _zz_strnp_386 (cceip2_out_ia_rdata,_zy_simnet_cceip2_out_ia_rdata_441_w$);
ixc_assign  #(1) _zz_strnp_387 (cceip3_ism_idat,_zy_simnet_cceip3_ism_idat_442_w$);
ixc_assign  #(1) _zz_strnp_388 (cceip3_ism_isync,_zy_simnet_cceip3_ism_isync_443_w$);
ixc_assign  #(1) _zz_strnp_389 (cceip2_ism_mbe,_zy_simnet_cceip2_ism_mbe_444_w$);
ixc_assign  #(1) _zz_strnp_390 (cceip2_im_rdy,_zy_simnet_cceip2_im_rdy_445_w$);
ixc_assign  #(2) _zz_strnp_391 (im_available_kme_cceip2,_zy_simnet_im_available_kme_cceip2_446_w$);
ixc_assign  #(12) _zz_strnp_392 (cceip2_out_im_status,_zy_simnet_cceip2_out_im_status_447_w$);
ixc_assign  #(11) _zz_strnp_393 (_zy_simnet_reg_addr_448_w$,reg_addr);
ixc_assign  #(4) _zz_strnp_394 (_zy_simnet_cceip2_out_ia_config_449_w$,cceip2_out_ia_config.f.op);
ixc_assign  #(9) _zz_strnp_395 (_zy_simnet_cceip2_out_ia_config_450_w$,cceip2_out_ia_config.f.addr);
ixc_assign  #(1) _zz_strnp_396 (_zy_simnet_wr_stb_451_w$,wr_stb);
ixc_assign  #(96) _zz_strnp_397 (_zy_simnet_cceip2_out_ia_wdata_452_w$,cceip2_out_ia_wdata);
assign  _zy_simnet_cio_453 = 1'b0;
ixc_assign  #(1) _zz_strnp_398 (_zy_simnet_cceip2_ism_isync_454_w$,cceip2_ism_isync);
ixc_assign  #(1) _zz_strnp_399 (_zy_simnet_cceip2_ism_idat_455_w$,cceip2_ism_idat);
ixc_assign  #(96) _zz_strnp_400 (_zy_simnet_cceip2_im_din_456_w$,cceip2_im_din);
ixc_assign  #(1) _zz_strnp_401 (_zy_simnet_cceip2_im_vld_457_w$,cceip2_im_vld);
ixc_assign  #(2) _zz_strnp_402 (_zy_simnet_im_consumed_kme_cceip2_458_w$,im_consumed_kme_cceip2);
ixc_assign  #(12) _zz_strnp_403 (_zy_simnet_cceip2_out_im_config_459_w$,cceip2_out_im_config);
ixc_assign  #(3) _zz_strnp_404 (cceip3_out_ia_status.f.code,_zy_simnet_cceip3_out_ia_status_460_w$);
ixc_assign  #(5) _zz_strnp_405 (cceip3_out_ia_status.f.datawords,_zy_simnet_cceip3_out_ia_status_461_w$);
ixc_assign  #(9) _zz_strnp_406 (cceip3_out_ia_status.f.addr,_zy_simnet_cceip3_out_ia_status_462_w$);
ixc_assign  #(16) _zz_strnp_407 (cceip3_out_ia_capability.r.part0[15:0],_zy_simnet_cceip3_out_ia_capability_463_w$);
ixc_assign  #(4) _zz_strnp_408 (cceip3_out_ia_capability.f.mem_type,_zy_simnet_cceip3_out_ia_capability_464_w$);
ixc_assign  #(96) _zz_strnp_409 (cceip3_out_ia_rdata,_zy_simnet_cceip3_out_ia_rdata_465_w$);
ixc_assign  #(1) _zz_strnp_410 (cddip0_ism_idat,_zy_simnet_cddip0_ism_idat_466_w$);
ixc_assign  #(1) _zz_strnp_411 (cddip0_ism_isync,_zy_simnet_cddip0_ism_isync_467_w$);
ixc_assign  #(1) _zz_strnp_412 (cceip3_ism_mbe,_zy_simnet_cceip3_ism_mbe_468_w$);
ixc_assign  #(1) _zz_strnp_413 (cceip3_im_rdy,_zy_simnet_cceip3_im_rdy_469_w$);
ixc_assign  #(2) _zz_strnp_414 (im_available_kme_cceip3,_zy_simnet_im_available_kme_cceip3_470_w$);
ixc_assign  #(12) _zz_strnp_415 (cceip3_out_im_status,_zy_simnet_cceip3_out_im_status_471_w$);
ixc_assign  #(11) _zz_strnp_416 (_zy_simnet_reg_addr_472_w$,reg_addr);
ixc_assign  #(4) _zz_strnp_417 (_zy_simnet_cceip3_out_ia_config_473_w$,cceip3_out_ia_config.f.op);
ixc_assign  #(9) _zz_strnp_418 (_zy_simnet_cceip3_out_ia_config_474_w$,cceip3_out_ia_config.f.addr);
ixc_assign  #(1) _zz_strnp_419 (_zy_simnet_wr_stb_475_w$,wr_stb);
ixc_assign  #(96) _zz_strnp_420 (_zy_simnet_cceip3_out_ia_wdata_476_w$,cceip3_out_ia_wdata);
assign  _zy_simnet_cio_477 = 1'b0;
ixc_assign  #(1) _zz_strnp_421 (_zy_simnet_cceip3_ism_isync_478_w$,cceip3_ism_isync);
ixc_assign  #(1) _zz_strnp_422 (_zy_simnet_cceip3_ism_idat_479_w$,cceip3_ism_idat);
ixc_assign  #(96) _zz_strnp_423 (_zy_simnet_cceip3_im_din_480_w$,cceip3_im_din);
ixc_assign  #(1) _zz_strnp_424 (_zy_simnet_cceip3_im_vld_481_w$,cceip3_im_vld);
ixc_assign  #(2) _zz_strnp_425 (_zy_simnet_im_consumed_kme_cceip3_482_w$,im_consumed_kme_cceip3);
ixc_assign  #(12) _zz_strnp_426 (_zy_simnet_cceip3_out_im_config_483_w$,cceip3_out_im_config);
ixc_assign  #(3) _zz_strnp_427 (cddip0_out_ia_status.f.code,_zy_simnet_cddip0_out_ia_status_484_w$);
ixc_assign  #(5) _zz_strnp_428 (cddip0_out_ia_status.f.datawords,_zy_simnet_cddip0_out_ia_status_485_w$);
ixc_assign  #(9) _zz_strnp_429 (cddip0_out_ia_status.f.addr,_zy_simnet_cddip0_out_ia_status_486_w$);
ixc_assign  #(16) _zz_strnp_430 (cddip0_out_ia_capability.r.part0[15:0],_zy_simnet_cddip0_out_ia_capability_487_w$);
ixc_assign  #(4) _zz_strnp_431 (cddip0_out_ia_capability.f.mem_type,_zy_simnet_cddip0_out_ia_capability_488_w$);
ixc_assign  #(96) _zz_strnp_432 (cddip0_out_ia_rdata,_zy_simnet_cddip0_out_ia_rdata_489_w$);
ixc_assign  #(1) _zz_strnp_433 (cddip1_ism_idat,_zy_simnet_cddip1_ism_idat_490_w$);
ixc_assign  #(1) _zz_strnp_434 (cddip1_ism_isync,_zy_simnet_cddip1_ism_isync_491_w$);
ixc_assign  #(1) _zz_strnp_435 (cddip0_ism_mbe,_zy_simnet_cddip0_ism_mbe_492_w$);
ixc_assign  #(1) _zz_strnp_436 (cddip0_im_rdy,_zy_simnet_cddip0_im_rdy_493_w$);
ixc_assign  #(2) _zz_strnp_437 (im_available_kme_cddip0,_zy_simnet_im_available_kme_cddip0_494_w$);
ixc_assign  #(12) _zz_strnp_438 (cddip0_out_im_status,_zy_simnet_cddip0_out_im_status_495_w$);
ixc_assign  #(11) _zz_strnp_439 (_zy_simnet_reg_addr_496_w$,reg_addr);
ixc_assign  #(4) _zz_strnp_440 (_zy_simnet_cddip0_out_ia_config_497_w$,cddip0_out_ia_config.f.op);
ixc_assign  #(9) _zz_strnp_441 (_zy_simnet_cddip0_out_ia_config_498_w$,cddip0_out_ia_config.f.addr);
ixc_assign  #(1) _zz_strnp_442 (_zy_simnet_wr_stb_499_w$,wr_stb);
ixc_assign  #(96) _zz_strnp_443 (_zy_simnet_cddip0_out_ia_wdata_500_w$,cddip0_out_ia_wdata);
assign  _zy_simnet_cio_501 = 1'b0;
ixc_assign  #(1) _zz_strnp_444 (_zy_simnet_cddip0_ism_isync_502_w$,cddip0_ism_isync);
ixc_assign  #(1) _zz_strnp_445 (_zy_simnet_cddip0_ism_idat_503_w$,cddip0_ism_idat);
ixc_assign  #(96) _zz_strnp_446 (_zy_simnet_cddip0_im_din_504_w$,cddip0_im_din);
ixc_assign  #(1) _zz_strnp_447 (_zy_simnet_cddip0_im_vld_505_w$,cddip0_im_vld);
ixc_assign  #(2) _zz_strnp_448 (_zy_simnet_im_consumed_kme_cddip0_506_w$,im_consumed_kme_cddip0);
ixc_assign  #(12) _zz_strnp_449 (_zy_simnet_cddip0_out_im_config_507_w$,cddip0_out_im_config);
ixc_assign  #(3) _zz_strnp_450 (cddip1_out_ia_status.f.code,_zy_simnet_cddip1_out_ia_status_508_w$);
ixc_assign  #(5) _zz_strnp_451 (cddip1_out_ia_status.f.datawords,_zy_simnet_cddip1_out_ia_status_509_w$);
ixc_assign  #(9) _zz_strnp_452 (cddip1_out_ia_status.f.addr,_zy_simnet_cddip1_out_ia_status_510_w$);
ixc_assign  #(16) _zz_strnp_453 (cddip1_out_ia_capability.r.part0[15:0],_zy_simnet_cddip1_out_ia_capability_511_w$);
ixc_assign  #(4) _zz_strnp_454 (cddip1_out_ia_capability.f.mem_type,_zy_simnet_cddip1_out_ia_capability_512_w$);
ixc_assign  #(96) _zz_strnp_455 (cddip1_out_ia_rdata,_zy_simnet_cddip1_out_ia_rdata_513_w$);
ixc_assign  #(1) _zz_strnp_456 (cddip2_ism_idat,_zy_simnet_cddip2_ism_idat_514_w$);
ixc_assign  #(1) _zz_strnp_457 (cddip2_ism_isync,_zy_simnet_cddip2_ism_isync_515_w$);
ixc_assign  #(1) _zz_strnp_458 (cddip1_ism_mbe,_zy_simnet_cddip1_ism_mbe_516_w$);
ixc_assign  #(1) _zz_strnp_459 (cddip1_im_rdy,_zy_simnet_cddip1_im_rdy_517_w$);
ixc_assign  #(2) _zz_strnp_460 (im_available_kme_cddip1,_zy_simnet_im_available_kme_cddip1_518_w$);
ixc_assign  #(12) _zz_strnp_461 (cddip1_out_im_status,_zy_simnet_cddip1_out_im_status_519_w$);
ixc_assign  #(11) _zz_strnp_462 (_zy_simnet_reg_addr_520_w$,reg_addr);
ixc_assign  #(4) _zz_strnp_463 (_zy_simnet_cddip1_out_ia_config_521_w$,cddip1_out_ia_config.f.op);
ixc_assign  #(9) _zz_strnp_464 (_zy_simnet_cddip1_out_ia_config_522_w$,cddip1_out_ia_config.f.addr);
ixc_assign  #(1) _zz_strnp_465 (_zy_simnet_wr_stb_523_w$,wr_stb);
ixc_assign  #(96) _zz_strnp_466 (_zy_simnet_cddip1_out_ia_wdata_524_w$,cddip1_out_ia_wdata);
assign  _zy_simnet_cio_525 = 1'b0;
ixc_assign  #(1) _zz_strnp_467 (_zy_simnet_cddip1_ism_isync_526_w$,cddip1_ism_isync);
ixc_assign  #(1) _zz_strnp_468 (_zy_simnet_cddip1_ism_idat_527_w$,cddip1_ism_idat);
ixc_assign  #(96) _zz_strnp_469 (_zy_simnet_cddip1_im_din_528_w$,cddip1_im_din);
ixc_assign  #(1) _zz_strnp_470 (_zy_simnet_cddip1_im_vld_529_w$,cddip1_im_vld);
ixc_assign  #(2) _zz_strnp_471 (_zy_simnet_im_consumed_kme_cddip1_530_w$,im_consumed_kme_cddip1);
ixc_assign  #(12) _zz_strnp_472 (_zy_simnet_cddip1_out_im_config_531_w$,cddip1_out_im_config);
ixc_assign  #(3) _zz_strnp_473 (cddip2_out_ia_status.f.code,_zy_simnet_cddip2_out_ia_status_532_w$);
ixc_assign  #(5) _zz_strnp_474 (cddip2_out_ia_status.f.datawords,_zy_simnet_cddip2_out_ia_status_533_w$);
ixc_assign  #(9) _zz_strnp_475 (cddip2_out_ia_status.f.addr,_zy_simnet_cddip2_out_ia_status_534_w$);
ixc_assign  #(16) _zz_strnp_476 (cddip2_out_ia_capability.r.part0[15:0],_zy_simnet_cddip2_out_ia_capability_535_w$);
ixc_assign  #(4) _zz_strnp_477 (cddip2_out_ia_capability.f.mem_type,_zy_simnet_cddip2_out_ia_capability_536_w$);
ixc_assign  #(96) _zz_strnp_478 (cddip2_out_ia_rdata,_zy_simnet_cddip2_out_ia_rdata_537_w$);
ixc_assign  #(1) _zz_strnp_479 (cddip3_ism_idat,_zy_simnet_cddip3_ism_idat_538_w$);
ixc_assign  #(1) _zz_strnp_480 (cddip3_ism_isync,_zy_simnet_cddip3_ism_isync_539_w$);
ixc_assign  #(1) _zz_strnp_481 (cddip2_ism_mbe,_zy_simnet_cddip2_ism_mbe_540_w$);
ixc_assign  #(1) _zz_strnp_482 (cddip2_im_rdy,_zy_simnet_cddip2_im_rdy_541_w$);
ixc_assign  #(2) _zz_strnp_483 (im_available_kme_cddip2,_zy_simnet_im_available_kme_cddip2_542_w$);
ixc_assign  #(12) _zz_strnp_484 (cddip2_out_im_status,_zy_simnet_cddip2_out_im_status_543_w$);
ixc_assign  #(11) _zz_strnp_485 (_zy_simnet_reg_addr_544_w$,reg_addr);
ixc_assign  #(4) _zz_strnp_486 (_zy_simnet_cddip2_out_ia_config_545_w$,cddip2_out_ia_config.f.op);
ixc_assign  #(9) _zz_strnp_487 (_zy_simnet_cddip2_out_ia_config_546_w$,cddip2_out_ia_config.f.addr);
ixc_assign  #(1) _zz_strnp_488 (_zy_simnet_wr_stb_547_w$,wr_stb);
ixc_assign  #(96) _zz_strnp_489 (_zy_simnet_cddip2_out_ia_wdata_548_w$,cddip2_out_ia_wdata);
assign  _zy_simnet_cio_549 = 1'b0;
ixc_assign  #(1) _zz_strnp_490 (_zy_simnet_cddip2_ism_isync_550_w$,cddip2_ism_isync);
ixc_assign  #(1) _zz_strnp_491 (_zy_simnet_cddip2_ism_idat_551_w$,cddip2_ism_idat);
ixc_assign  #(96) _zz_strnp_492 (_zy_simnet_cddip2_im_din_552_w$,cddip2_im_din);
ixc_assign  #(1) _zz_strnp_493 (_zy_simnet_cddip2_im_vld_553_w$,cddip2_im_vld);
ixc_assign  #(2) _zz_strnp_494 (_zy_simnet_im_consumed_kme_cddip2_554_w$,im_consumed_kme_cddip2);
ixc_assign  #(12) _zz_strnp_495 (_zy_simnet_cddip2_out_im_config_555_w$,cddip2_out_im_config);
ixc_assign  #(3) _zz_strnp_496 (cddip3_out_ia_status.f.code,_zy_simnet_cddip3_out_ia_status_556_w$);
ixc_assign  #(5) _zz_strnp_497 (cddip3_out_ia_status.f.datawords,_zy_simnet_cddip3_out_ia_status_557_w$);
ixc_assign  #(9) _zz_strnp_498 (cddip3_out_ia_status.f.addr,_zy_simnet_cddip3_out_ia_status_558_w$);
ixc_assign  #(16) _zz_strnp_499 (cddip3_out_ia_capability.r.part0[15:0],_zy_simnet_cddip3_out_ia_capability_559_w$);
ixc_assign  #(4) _zz_strnp_500 (cddip3_out_ia_capability.f.mem_type,_zy_simnet_cddip3_out_ia_capability_560_w$);
ixc_assign  #(96) _zz_strnp_501 (cddip3_out_ia_rdata,_zy_simnet_cddip3_out_ia_rdata_561_w$);
ixc_assign  #(1) _zz_strnp_502 (cddip3_ism_odat,_zy_simnet_cddip3_ism_odat_562_w$);
ixc_assign  #(1) _zz_strnp_503 (cddip3_ism_osync,_zy_simnet_cddip3_ism_osync_563_w$);
ixc_assign  #(1) _zz_strnp_504 (cddip3_ism_mbe,_zy_simnet_cddip3_ism_mbe_564_w$);
ixc_assign  #(1) _zz_strnp_505 (cddip3_im_rdy,_zy_simnet_cddip3_im_rdy_565_w$);
ixc_assign  #(2) _zz_strnp_506 (im_available_kme_cddip3,_zy_simnet_im_available_kme_cddip3_566_w$);
ixc_assign  #(12) _zz_strnp_507 (cddip3_out_im_status,_zy_simnet_cddip3_out_im_status_567_w$);
ixc_assign  #(11) _zz_strnp_508 (_zy_simnet_reg_addr_568_w$,reg_addr);
ixc_assign  #(4) _zz_strnp_509 (_zy_simnet_cddip3_out_ia_config_569_w$,cddip3_out_ia_config.f.op);
ixc_assign  #(9) _zz_strnp_510 (_zy_simnet_cddip3_out_ia_config_570_w$,cddip3_out_ia_config.f.addr);
ixc_assign  #(1) _zz_strnp_511 (_zy_simnet_wr_stb_571_w$,wr_stb);
ixc_assign  #(96) _zz_strnp_512 (_zy_simnet_cddip3_out_ia_wdata_572_w$,cddip3_out_ia_wdata);
assign  _zy_simnet_cio_573 = 1'b0;
ixc_assign  #(1) _zz_strnp_513 (_zy_simnet_cddip3_ism_isync_574_w$,cddip3_ism_isync);
ixc_assign  #(1) _zz_strnp_514 (_zy_simnet_cddip3_ism_idat_575_w$,cddip3_ism_idat);
ixc_assign  #(96) _zz_strnp_515 (_zy_simnet_cddip3_im_din_576_w$,cddip3_im_din);
ixc_assign  #(1) _zz_strnp_516 (_zy_simnet_cddip3_im_vld_577_w$,cddip3_im_vld);
ixc_assign  #(2) _zz_strnp_517 (_zy_simnet_im_consumed_kme_cddip3_578_w$,im_consumed_kme_cddip3);
ixc_assign  #(12) _zz_strnp_518 (_zy_simnet_cddip3_out_im_config_579_w$,cddip3_out_im_config);
ixc_assign  #(4) _zz_strnp_519 (ckv_cmnd_op,_zy_simnet_ckv_cmnd_op_580_w$);
ixc_assign  #(15) _zz_strnp_520 (ckv_cmnd_addr,_zy_simnet_ckv_cmnd_addr_581_w$);
ixc_assign  #(64) _zz_strnp_521 (ckv_wr_dat,_zy_simnet_ckv_wr_dat_582_w$);
ixc_assign  #(20) _zz_strnp_522 (ckv_ia_capability,_zy_simnet_ckv_ia_capability_583_w$);
ixc_assign  #(32) _zz_strnp_523 (ckv_ia_rdata_part0,_zy_simnet_ckv_ia_rdata_part0_584_w$);
ixc_assign  #(32) _zz_strnp_524 (ckv_ia_rdata_part1,_zy_simnet_ckv_ia_rdata_part1_585_w$);
ixc_assign  #(23) _zz_strnp_525 (ckv_ia_status,_zy_simnet_ckv_ia_status_586_w$);
ixc_assign  #(4) _zz_strnp_526 (kim_cmnd_op,_zy_simnet_kim_cmnd_op_587_w$);
ixc_assign  #(14) _zz_strnp_527 (kim_cmnd_addr,_zy_simnet_kim_cmnd_addr_588_w$);
ixc_assign  #(38) _zz_strnp_528 (kim_wr_dat,_zy_simnet_kim_wr_dat_589_w$);
ixc_assign  #(20) _zz_strnp_529 (kim_ia_capability,_zy_simnet_kim_ia_capability_590_w$);
ixc_assign  #(21) _zz_strnp_530 (kim_ia_rdata_part0,_zy_simnet_kim_ia_rdata_part0_591_w$);
ixc_assign  #(17) _zz_strnp_531 (kim_ia_rdata_part1,_zy_simnet_kim_ia_rdata_part1_592_w$);
ixc_assign  #(22) _zz_strnp_532 (kim_ia_status,_zy_simnet_kim_ia_status_593_w$);
ixc_assign  #(8) _zz_strnp_533 (engine_sticky_status,_zy_simnet_engine_sticky_status_594_w$);
ixc_assign  #(1) _zz_strnp_534 (disable_ckv_kim_ism_reads,_zy_simnet_disable_ckv_kim_ism_reads_595_w$);
ixc_assign  #(1) _zz_strnp_535 (send_kme_ib_beat,_zy_simnet_send_kme_ib_beat_596_w$);
ixc_assign  #(83) _zz_strnp_536 (kme_cceip0_ob_out,_zy_simnet_kme_cceip0_ob_out_597_w$);
ixc_assign  #(83) _zz_strnp_537 (kme_cceip1_ob_out,_zy_simnet_kme_cceip1_ob_out_598_w$);
ixc_assign  #(83) _zz_strnp_538 (kme_cceip2_ob_out,_zy_simnet_kme_cceip2_ob_out_599_w$);
ixc_assign  #(83) _zz_strnp_539 (kme_cceip3_ob_out,_zy_simnet_kme_cceip3_ob_out_600_w$);
ixc_assign  #(83) _zz_strnp_540 (kme_cddip0_ob_out,_zy_simnet_kme_cddip0_ob_out_601_w$);
ixc_assign  #(83) _zz_strnp_541 (kme_cddip1_ob_out,_zy_simnet_kme_cddip1_ob_out_602_w$);
ixc_assign  #(83) _zz_strnp_542 (kme_cddip2_ob_out,_zy_simnet_kme_cddip2_ob_out_603_w$);
ixc_assign  #(83) _zz_strnp_543 (kme_cddip3_ob_out,_zy_simnet_kme_cddip3_ob_out_604_w$);
ixc_assign  #(1) _zz_strnp_544 (axi_term_bimc_isync,_zy_simnet_axi_term_bimc_isync_605_w$);
ixc_assign  #(1) _zz_strnp_545 (axi_term_bimc_idat,_zy_simnet_axi_term_bimc_idat_606_w$);
ixc_assign  #(3) _zz_strnp_546 (_zy_simnet_ckv_stat_code_607_w$,ckv_stat_code);
ixc_assign  #(5) _zz_strnp_547 (_zy_simnet_ckv_stat_datawords_608_w$,ckv_stat_datawords);
ixc_assign  #(15) _zz_strnp_548 (_zy_simnet_ckv_stat_addr_609_w$,ckv_stat_addr);
ixc_assign  #(4) _zz_strnp_549 (_zy_simnet_ckv_capability_type_610_w$,ckv_capability_type);
ixc_assign  #(16) _zz_strnp_550 (_zy_simnet_ckv_capability_lst_611_w$,ckv_capability_lst);
ixc_assign  #(64) _zz_strnp_551 (_zy_simnet_ckv_rd_dat_612_w$,ckv_rd_dat);
ixc_assign  #(19) _zz_strnp_552 (_zy_simnet_o_ckv_ia_config_613_w$,o_ckv_ia_config);
ixc_assign  #(32) _zz_strnp_553 (_zy_simnet_o_ckv_ia_wdata_part0_614_w$,o_ckv_ia_wdata_part0);
ixc_assign  #(32) _zz_strnp_554 (_zy_simnet_o_ckv_ia_wdata_part1_615_w$,o_ckv_ia_wdata_part1);
ixc_assign  #(3) _zz_strnp_555 (_zy_simnet_kim_stat_code_616_w$,kim_stat_code);
ixc_assign  #(5) _zz_strnp_556 (_zy_simnet_kim_stat_datawords_617_w$,kim_stat_datawords);
ixc_assign  #(14) _zz_strnp_557 (_zy_simnet_kim_stat_addr_618_w$,kim_stat_addr);
ixc_assign  #(4) _zz_strnp_558 (_zy_simnet_kim_capability_type_619_w$,kim_capability_type);
ixc_assign  #(16) _zz_strnp_559 (_zy_simnet_kim_capability_lst_620_w$,kim_capability_lst);
ixc_assign  #(38) _zz_strnp_560 (_zy_simnet_kim_rd_dat_621_w$,kim_rd_dat);
ixc_assign  #(18) _zz_strnp_561 (_zy_simnet_o_kim_ia_config_622_w$,o_kim_ia_config);
ixc_assign  #(21) _zz_strnp_562 (_zy_simnet_o_kim_ia_wdata_part0_623_w$,o_kim_ia_wdata_part0);
ixc_assign  #(17) _zz_strnp_563 (_zy_simnet_o_kim_ia_wdata_part1_624_w$,o_kim_ia_wdata_part1);
ixc_assign  #(1) _zz_strnp_564 (_zy_simnet_wr_stb_625_w$,wr_stb);
ixc_assign  #(32) _zz_strnp_565 (_zy_simnet_wr_data_626_w$,wr_data);
ixc_assign  #(11) _zz_strnp_566 (_zy_simnet_reg_addr_627_w$,reg_addr);
ixc_assign  #(8) _zz_strnp_567 (_zy_simnet_o_engine_sticky_status_628_w$,o_engine_sticky_status);
ixc_assign  #(1) _zz_strnp_568 (_zy_simnet_o_disable_ckv_kim_ism_reads_629_w$,o_disable_ckv_kim_ism_reads);
ixc_assign  #(1) _zz_strnp_569 (_zy_simnet_o_send_kme_ib_beat_630_w$,o_send_kme_ib_beat);
ixc_assign  #(96) _zz_strnp_570 (_zy_simnet_cceip0_out_ia_wdata_631_w$,cceip0_out_ia_wdata);
ixc_assign  #(9) _zz_strnp_571 (_zy_simnet_tready_override_632_w$,tready_override);
ixc_assign  #(83) _zz_strnp_572 (_zy_simnet_kme_cceip0_ob_out_post_633_w$,kme_cceip0_ob_out_post);
ixc_assign  #(83) _zz_strnp_573 (_zy_simnet_kme_cceip1_ob_out_post_634_w$,kme_cceip1_ob_out_post);
ixc_assign  #(83) _zz_strnp_574 (_zy_simnet_kme_cceip2_ob_out_post_635_w$,kme_cceip2_ob_out_post);
ixc_assign  #(83) _zz_strnp_575 (_zy_simnet_kme_cceip3_ob_out_post_636_w$,kme_cceip3_ob_out_post);
ixc_assign  #(83) _zz_strnp_576 (_zy_simnet_kme_cddip0_ob_out_post_637_w$,kme_cddip0_ob_out_post);
ixc_assign  #(83) _zz_strnp_577 (_zy_simnet_kme_cddip1_ob_out_post_638_w$,kme_cddip1_ob_out_post);
ixc_assign  #(83) _zz_strnp_578 (_zy_simnet_kme_cddip2_ob_out_post_639_w$,kme_cddip2_ob_out_post);
ixc_assign  #(83) _zz_strnp_579 (_zy_simnet_kme_cddip3_ob_out_post_640_w$,kme_cddip3_ob_out_post);
ixc_assign  #(1) _zz_strnp_580 (_zy_simnet_cddip3_ism_osync_641_w$,cddip3_ism_osync);
ixc_assign  #(1) _zz_strnp_581 (_zy_simnet_cddip3_ism_odat_642_w$,cddip3_ism_odat);
ixc_assign  #(11) _zz_strnp_582 (_zy_simnet_reg_addr_643_w$,reg_addr);
ixc_assign  #(4) _zz_strnp_583 (_zy_simnet_ckv_cmnd_op_644_w$,ckv_cmnd_op);
ixc_assign  #(15) _zz_strnp_584 (_zy_simnet_ckv_cmnd_addr_645_w$,ckv_cmnd_addr);
ixc_assign  #(3) _zz_strnp_585 (ckv_stat_code,_zy_simnet_ckv_stat_code_646_w$);
ixc_assign  #(5) _zz_strnp_586 (ckv_stat_datawords,_zy_simnet_ckv_stat_datawords_647_w$);
ixc_assign  #(15) _zz_strnp_587 (ckv_stat_addr,_zy_simnet_ckv_stat_addr_648_w$);
ixc_assign  #(16) _zz_strnp_588 (ckv_capability_lst,_zy_simnet_ckv_capability_lst_649_w$);
ixc_assign  #(4) _zz_strnp_589 (ckv_capability_type,_zy_simnet_ckv_capability_type_650_w$);
ixc_assign  #(1) _zz_strnp_590 (_zy_simnet_wr_stb_651_w$,wr_stb);
ixc_assign  #(64) _zz_strnp_591 (_zy_simnet_ckv_wr_dat_652_w$,ckv_wr_dat);
ixc_assign  #(64) _zz_strnp_592 (ckv_rd_dat,_zy_simnet_ckv_rd_dat_653_w$);
assign  _zy_simnet_cio_654 = 1'b0;
ixc_assign  #(1) _zz_strnp_593 (_zy_simnet_ckv_bimc_isync_655_w$,ckv_bimc_isync);
ixc_assign  #(1) _zz_strnp_594 (_zy_simnet_ckv_bimc_idat_656_w$,ckv_bimc_idat);
ixc_assign  #(1) _zz_strnp_595 (cceip0_ism_bimc_idat,_zy_simnet_cceip0_ism_bimc_idat_657_w$);
ixc_assign  #(1) _zz_strnp_596 (cceip0_ism_bimc_isync,_zy_simnet_cceip0_ism_bimc_isync_658_w$);
assign  _zy_simnet_cio_659 = 1'b0;
assign  _zy_simnet_cio_660 = 64'b0;
assign  _zy_simnet_cio_661 = 64'b0;
ixc_assign  #(11) _zz_strnp_597 (_zy_simnet_reg_addr_663_w$,reg_addr);
ixc_assign  #(4) _zz_strnp_598 (_zy_simnet_kim_cmnd_op_664_w$,kim_cmnd_op);
ixc_assign  #(14) _zz_strnp_599 (_zy_simnet_kim_cmnd_addr_665_w$,kim_cmnd_addr);
ixc_assign  #(3) _zz_strnp_600 (kim_stat_code,_zy_simnet_kim_stat_code_666_w$);
ixc_assign  #(5) _zz_strnp_601 (kim_stat_datawords,_zy_simnet_kim_stat_datawords_667_w$);
ixc_assign  #(14) _zz_strnp_602 (kim_stat_addr,_zy_simnet_kim_stat_addr_668_w$);
ixc_assign  #(16) _zz_strnp_603 (kim_capability_lst,_zy_simnet_kim_capability_lst_669_w$);
ixc_assign  #(4) _zz_strnp_604 (kim_capability_type,_zy_simnet_kim_capability_type_670_w$);
ixc_assign  #(1) _zz_strnp_605 (_zy_simnet_wr_stb_671_w$,wr_stb);
ixc_assign  #(38) _zz_strnp_606 (_zy_simnet_kim_wr_dat_672_w$,kim_wr_dat);
ixc_assign  #(38) _zz_strnp_607 (kim_rd_dat,_zy_simnet_kim_rd_dat_673_w$);
assign  _zy_simnet_cio_674 = 1'b0;
ixc_assign  #(1) _zz_strnp_608 (_zy_simnet_kim_bimc_isync_675_w$,kim_bimc_isync);
ixc_assign  #(1) _zz_strnp_609 (_zy_simnet_kim_bimc_idat_676_w$,kim_bimc_idat);
ixc_assign  #(1) _zz_strnp_610 (ckv_bimc_idat,_zy_simnet_ckv_bimc_idat_677_w$);
ixc_assign  #(1) _zz_strnp_611 (ckv_bimc_isync,_zy_simnet_ckv_bimc_isync_678_w$);
assign  _zy_simnet_cio_679 = 1'b0;
assign  _zy_simnet_cio_680 = 38'b0;
assign  _zy_simnet_cio_681 = 38'b0;
ixc_assign  #(38) _zz_strnp_612 (kim_dout,_zy_simnet_kim_dout_682_w$);
ixc_assign  #(1) _zz_strnp_613 (set_drbg_expired_int,_zy_simnet_set_drbg_expired_int_684_w$);
ixc_assign  #(2) _zz_strnp_614 (kdf_drbg_ctrl,_zy_simnet_kdf_drbg_ctrl_685_w$);
ixc_assign  #(1) _zz_strnp_615 (_zy_simnet_wr_stb_686_w$,wr_stb);
ixc_assign  #(32) _zz_strnp_616 (_zy_simnet_wr_data_687_w$,wr_data);
ixc_assign  #(11) _zz_strnp_617 (_zy_simnet_reg_addr_688_w$,reg_addr);
ixc_assign  #(2) _zz_strnp_618 (_zy_simnet_o_kdf_drbg_ctrl_689_w$,o_kdf_drbg_ctrl);
ixc_assign  #(32) _zz_strnp_619 (_zy_simnet_o_kdf_drbg_seed_0_reseed_interval_0_690_w$,o_kdf_drbg_seed_0_reseed_interval_0);
ixc_assign  #(16) _zz_strnp_620 (_zy_simnet_o_kdf_drbg_seed_0_reseed_interval_1_691_w$,o_kdf_drbg_seed_0_reseed_interval_1);
ixc_assign  #(32) _zz_strnp_621 (_zy_simnet_o_kdf_drbg_seed_0_state_key_127_96_692_w$,o_kdf_drbg_seed_0_state_key_127_96);
ixc_assign  #(32) _zz_strnp_622 (_zy_simnet_o_kdf_drbg_seed_0_state_key_159_128_693_w$,o_kdf_drbg_seed_0_state_key_159_128);
ixc_assign  #(32) _zz_strnp_623 (_zy_simnet_o_kdf_drbg_seed_0_state_key_191_160_694_w$,o_kdf_drbg_seed_0_state_key_191_160);
ixc_assign  #(32) _zz_strnp_624 (_zy_simnet_o_kdf_drbg_seed_0_state_key_223_192_695_w$,o_kdf_drbg_seed_0_state_key_223_192);
ixc_assign  #(32) _zz_strnp_625 (_zy_simnet_o_kdf_drbg_seed_0_state_key_255_224_696_w$,o_kdf_drbg_seed_0_state_key_255_224);
ixc_assign  #(32) _zz_strnp_626 (_zy_simnet_o_kdf_drbg_seed_0_state_key_31_0_697_w$,o_kdf_drbg_seed_0_state_key_31_0);
ixc_assign  #(32) _zz_strnp_627 (_zy_simnet_o_kdf_drbg_seed_0_state_key_63_32_698_w$,o_kdf_drbg_seed_0_state_key_63_32);
ixc_assign  #(32) _zz_strnp_628 (_zy_simnet_o_kdf_drbg_seed_0_state_key_95_64_699_w$,o_kdf_drbg_seed_0_state_key_95_64);
ixc_assign  #(32) _zz_strnp_629 (_zy_simnet_o_kdf_drbg_seed_0_state_value_127_96_700_w$,o_kdf_drbg_seed_0_state_value_127_96);
ixc_assign  #(32) _zz_strnp_630 (_zy_simnet_o_kdf_drbg_seed_0_state_value_31_0_701_w$,o_kdf_drbg_seed_0_state_value_31_0);
ixc_assign  #(32) _zz_strnp_631 (_zy_simnet_o_kdf_drbg_seed_0_state_value_63_32_702_w$,o_kdf_drbg_seed_0_state_value_63_32);
ixc_assign  #(32) _zz_strnp_632 (_zy_simnet_o_kdf_drbg_seed_0_state_value_95_64_703_w$,o_kdf_drbg_seed_0_state_value_95_64);
ixc_assign  #(32) _zz_strnp_633 (_zy_simnet_o_kdf_drbg_seed_1_reseed_interval_0_704_w$,o_kdf_drbg_seed_1_reseed_interval_0);
ixc_assign  #(16) _zz_strnp_634 (_zy_simnet_o_kdf_drbg_seed_1_reseed_interval_1_705_w$,o_kdf_drbg_seed_1_reseed_interval_1);
ixc_assign  #(32) _zz_strnp_635 (_zy_simnet_o_kdf_drbg_seed_1_state_key_127_96_706_w$,o_kdf_drbg_seed_1_state_key_127_96);
ixc_assign  #(32) _zz_strnp_636 (_zy_simnet_o_kdf_drbg_seed_1_state_key_159_128_707_w$,o_kdf_drbg_seed_1_state_key_159_128);
ixc_assign  #(32) _zz_strnp_637 (_zy_simnet_o_kdf_drbg_seed_1_state_key_191_160_708_w$,o_kdf_drbg_seed_1_state_key_191_160);
ixc_assign  #(32) _zz_strnp_638 (_zy_simnet_o_kdf_drbg_seed_1_state_key_223_192_709_w$,o_kdf_drbg_seed_1_state_key_223_192);
ixc_assign  #(32) _zz_strnp_639 (_zy_simnet_o_kdf_drbg_seed_1_state_key_255_224_710_w$,o_kdf_drbg_seed_1_state_key_255_224);
ixc_assign  #(32) _zz_strnp_640 (_zy_simnet_o_kdf_drbg_seed_1_state_key_31_0_711_w$,o_kdf_drbg_seed_1_state_key_31_0);
ixc_assign  #(32) _zz_strnp_641 (_zy_simnet_o_kdf_drbg_seed_1_state_key_63_32_712_w$,o_kdf_drbg_seed_1_state_key_63_32);
ixc_assign  #(32) _zz_strnp_642 (_zy_simnet_o_kdf_drbg_seed_1_state_key_95_64_713_w$,o_kdf_drbg_seed_1_state_key_95_64);
ixc_assign  #(32) _zz_strnp_643 (_zy_simnet_o_kdf_drbg_seed_1_state_value_127_96_714_w$,o_kdf_drbg_seed_1_state_value_127_96);
ixc_assign  #(32) _zz_strnp_644 (_zy_simnet_o_kdf_drbg_seed_1_state_value_31_0_715_w$,o_kdf_drbg_seed_1_state_value_31_0);
ixc_assign  #(32) _zz_strnp_645 (_zy_simnet_o_kdf_drbg_seed_1_state_value_63_32_716_w$,o_kdf_drbg_seed_1_state_value_63_32);
ixc_assign  #(32) _zz_strnp_646 (_zy_simnet_o_kdf_drbg_seed_1_state_value_95_64_717_w$,o_kdf_drbg_seed_1_state_value_95_64);
ixc_assign  #(1) _zz_strnp_647 (bimc_interrupt,_zy_simnet_bimc_interrupt_719_w$);
ixc_assign  #(1) _zz_strnp_648 (kim_bimc_idat,_zy_simnet_kim_bimc_idat_720_w$);
ixc_assign  #(1) _zz_strnp_649 (kim_bimc_isync,_zy_simnet_kim_bimc_isync_721_w$);
ixc_assign  #(1) _zz_strnp_650 (_zy_simnet_axi_term_bimc_idat_722_w$,axi_term_bimc_idat);
ixc_assign  #(1) _zz_strnp_651 (_zy_simnet_axi_term_bimc_isync_723_w$,axi_term_bimc_isync);
ixc_assign  #(7) _zz_strnp_652 (_zy_simnet_o_bimc_monitor_mask_724_w$,o_bimc_monitor_mask);
ixc_assign  #(32) _zz_strnp_653 (_zy_simnet_o_bimc_ecc_uncorrectable_error_cnt_725_w$,o_bimc_ecc_uncorrectable_error_cnt);
ixc_assign  #(32) _zz_strnp_654 (_zy_simnet_o_bimc_ecc_correctable_error_cnt_726_w$,o_bimc_ecc_correctable_error_cnt);
ixc_assign  #(32) _zz_strnp_655 (_zy_simnet_o_bimc_parity_error_cnt_727_w$,o_bimc_parity_error_cnt);
ixc_assign  #(32) _zz_strnp_656 (_zy_simnet_o_bimc_global_config_728_w$,o_bimc_global_config);
ixc_assign  #(29) _zz_strnp_657 (_zy_simnet_o_bimc_eccpar_debug_729_w$,o_bimc_eccpar_debug);
ixc_assign  #(11) _zz_strnp_658 (_zy_simnet_o_bimc_cmd2_730_w$,o_bimc_cmd2);
ixc_assign  #(32) _zz_strnp_659 (_zy_simnet_o_bimc_cmd1_731_w$,o_bimc_cmd1);
ixc_assign  #(32) _zz_strnp_660 (_zy_simnet_o_bimc_cmd0_732_w$,o_bimc_cmd0);
ixc_assign  #(10) _zz_strnp_661 (_zy_simnet_o_bimc_rxcmd2_733_w$,o_bimc_rxcmd2);
ixc_assign  #(10) _zz_strnp_662 (_zy_simnet_o_bimc_rxrsp2_734_w$,o_bimc_rxrsp2);
ixc_assign  #(10) _zz_strnp_663 (_zy_simnet_o_bimc_pollrsp2_735_w$,o_bimc_pollrsp2);
ixc_assign  #(10) _zz_strnp_664 (_zy_simnet_o_bimc_dbgcmd2_736_w$,o_bimc_dbgcmd2);
ixc_assign  #(7) _zz_strnp_665 (bimc_monitor,_zy_simnet_bimc_monitor_737_w$);
ixc_assign  #(32) _zz_strnp_666 (bimc_ecc_uncorrectable_error_cnt,_zy_simnet_bimc_ecc_uncorrectable_error_cnt_738_w$);
ixc_assign  #(32) _zz_strnp_667 (bimc_ecc_correctable_error_cnt,_zy_simnet_bimc_ecc_correctable_error_cnt_739_w$);
ixc_assign  #(32) _zz_strnp_668 (bimc_parity_error_cnt,_zy_simnet_bimc_parity_error_cnt_740_w$);
ixc_assign  #(32) _zz_strnp_669 (bimc_global_config,_zy_simnet_bimc_global_config_741_w$);
ixc_assign  #(12) _zz_strnp_670 (bimc_memid,_zy_simnet_bimc_memid_742_w$);
ixc_assign  #(29) _zz_strnp_671 (bimc_eccpar_debug,_zy_simnet_bimc_eccpar_debug_743_w$);
ixc_assign  #(11) _zz_strnp_672 (bimc_cmd2,_zy_simnet_bimc_cmd2_744_w$);
ixc_assign  #(10) _zz_strnp_673 (bimc_rxcmd2,_zy_simnet_bimc_rxcmd2_745_w$);
ixc_assign  #(32) _zz_strnp_674 (bimc_rxcmd1,_zy_simnet_bimc_rxcmd1_746_w$);
ixc_assign  #(32) _zz_strnp_675 (bimc_rxcmd0,_zy_simnet_bimc_rxcmd0_747_w$);
ixc_assign  #(10) _zz_strnp_676 (bimc_rxrsp2,_zy_simnet_bimc_rxrsp2_748_w$);
ixc_assign  #(32) _zz_strnp_677 (bimc_rxrsp1,_zy_simnet_bimc_rxrsp1_749_w$);
ixc_assign  #(32) _zz_strnp_678 (bimc_rxrsp0,_zy_simnet_bimc_rxrsp0_750_w$);
ixc_assign  #(10) _zz_strnp_679 (bimc_pollrsp2,_zy_simnet_bimc_pollrsp2_751_w$);
ixc_assign  #(32) _zz_strnp_680 (bimc_pollrsp1,_zy_simnet_bimc_pollrsp1_752_w$);
ixc_assign  #(32) _zz_strnp_681 (bimc_pollrsp0,_zy_simnet_bimc_pollrsp0_753_w$);
ixc_assign  #(10) _zz_strnp_682 (bimc_dbgcmd2,_zy_simnet_bimc_dbgcmd2_754_w$);
ixc_assign  #(32) _zz_strnp_683 (bimc_dbgcmd1,_zy_simnet_bimc_dbgcmd1_755_w$);
ixc_assign  #(32) _zz_strnp_684 (bimc_dbgcmd0,_zy_simnet_bimc_dbgcmd0_756_w$);
ixc_assign  #(5) _zz_strnp_685 (interrupt_status,_zy_simnet_interrupt_status_757_w$);
ixc_assign  #(1) _zz_strnp_686 (_zy_simnet_set_drbg_expired_int_758_w$,set_drbg_expired_int);
ixc_assign  #(1) _zz_strnp_687 (_zy_simnet_cceip0_ism_mbe_759_w$,cceip0_ism_mbe);
ixc_assign  #(1) _zz_strnp_688 (_zy_simnet_cceip1_ism_mbe_760_w$,cceip1_ism_mbe);
ixc_assign  #(1) _zz_strnp_689 (_zy_simnet_cceip2_ism_mbe_761_w$,cceip2_ism_mbe);
ixc_assign  #(1) _zz_strnp_690 (_zy_simnet_cceip3_ism_mbe_762_w$,cceip3_ism_mbe);
ixc_assign  #(1) _zz_strnp_691 (_zy_simnet_cddip0_ism_mbe_763_w$,cddip0_ism_mbe);
ixc_assign  #(1) _zz_strnp_692 (_zy_simnet_cddip1_ism_mbe_764_w$,cddip1_ism_mbe);
ixc_assign  #(1) _zz_strnp_693 (_zy_simnet_cddip2_ism_mbe_765_w$,cddip2_ism_mbe);
ixc_assign  #(1) _zz_strnp_694 (_zy_simnet_cddip3_ism_mbe_766_w$,cddip3_ism_mbe);
ixc_assign  #(1) _zz_strnp_695 (_zy_simnet_bimc_interrupt_767_w$,bimc_interrupt);
ixc_assign  #(1) _zz_strnp_696 (_zy_simnet_wr_stb_768_w$,wr_stb);
ixc_assign  #(32) _zz_strnp_697 (_zy_simnet_wr_data_769_w$,wr_data);
ixc_assign  #(11) _zz_strnp_698 (_zy_simnet_reg_addr_770_w$,reg_addr);
ixc_assign  #(5) _zz_strnp_699 (_zy_simnet_o_interrupt_mask_771_w$,o_interrupt_mask);
ixc_assign  #(3) _zz_strnp_700 (sa_snapshot_ia_status.f.code,_zy_simnet_sa_snapshot_ia_status_772_w$);
ixc_assign  #(5) _zz_strnp_701 (sa_snapshot_ia_status.f.datawords,_zy_simnet_sa_snapshot_ia_status_773_w$);
ixc_assign  #(5) _zz_strnp_702 (sa_snapshot_ia_status.f.addr,_zy_simnet_sa_snapshot_ia_status_774_w$);
ixc_assign  #(16) _zz_strnp_703 (sa_snapshot_ia_capability.r.part0[15:0],_zy_simnet_sa_snapshot_ia_capability_775_w$);
ixc_assign  #(4) _zz_strnp_704 (sa_snapshot_ia_capability.f.mem_type,_zy_simnet_sa_snapshot_ia_capability_776_w$);
ixc_assign  #(64) _zz_strnp_705 (sa_snapshot_ia_rdata,_zy_simnet_sa_snapshot_ia_rdata_777_w$);
ixc_assign  #(11) _zz_strnp_706 (_zy_simnet_reg_addr_778_w$,reg_addr);
ixc_assign  #(4) _zz_strnp_707 (_zy_simnet_sa_snapshot_ia_config_779_w$,sa_snapshot_ia_config.f.op);
ixc_assign  #(5) _zz_strnp_708 (_zy_simnet_sa_snapshot_ia_config_780_w$,sa_snapshot_ia_config.f.addr);
ixc_assign  #(1) _zz_strnp_709 (_zy_simnet_wr_stb_781_w$,wr_stb);
ixc_assign  #(64) _zz_strnp_710 (_zy_simnet_sa_snapshot_ia_wdata_782_w$,sa_snapshot_ia_wdata);
ixc_assign  #(3) _zz_strnp_711 (sa_count_ia_status.f.code,_zy_simnet_sa_count_ia_status_783_w$);
ixc_assign  #(5) _zz_strnp_712 (sa_count_ia_status.f.datawords,_zy_simnet_sa_count_ia_status_784_w$);
ixc_assign  #(5) _zz_strnp_713 (sa_count_ia_status.f.addr,_zy_simnet_sa_count_ia_status_785_w$);
ixc_assign  #(16) _zz_strnp_714 (sa_count_ia_capability.r.part0[15:0],_zy_simnet_sa_count_ia_capability_786_w$);
ixc_assign  #(4) _zz_strnp_715 (sa_count_ia_capability.f.mem_type,_zy_simnet_sa_count_ia_capability_787_w$);
ixc_assign  #(64) _zz_strnp_716 (sa_count_ia_rdata,_zy_simnet_sa_count_ia_rdata_788_w$);
ixc_assign  #(11) _zz_strnp_717 (_zy_simnet_reg_addr_789_w$,reg_addr);
ixc_assign  #(4) _zz_strnp_718 (_zy_simnet_sa_count_ia_config_790_w$,sa_count_ia_config.f.op);
ixc_assign  #(5) _zz_strnp_719 (_zy_simnet_sa_count_ia_config_791_w$,sa_count_ia_config.f.addr);
ixc_assign  #(1) _zz_strnp_720 (_zy_simnet_wr_stb_792_w$,wr_stb);
ixc_assign  #(64) _zz_strnp_721 (_zy_simnet_sa_count_ia_wdata_793_w$,sa_count_ia_wdata);
ixc_assign  #(3) _zz_strnp_722 (sa_ctrl_ia_status.f.code,_zy_simnet_sa_ctrl_ia_status_794_w$);
ixc_assign  #(5) _zz_strnp_723 (sa_ctrl_ia_status.f.datawords,_zy_simnet_sa_ctrl_ia_status_795_w$);
ixc_assign  #(5) _zz_strnp_724 (sa_ctrl_ia_status.f.addr,_zy_simnet_sa_ctrl_ia_status_796_w$);
ixc_assign  #(16) _zz_strnp_725 (sa_ctrl_ia_capability.r.part0[15:0],_zy_simnet_sa_ctrl_ia_capability_797_w$);
ixc_assign  #(4) _zz_strnp_726 (sa_ctrl_ia_capability.f.mem_type,_zy_simnet_sa_ctrl_ia_capability_798_w$);
ixc_assign  #(32) _zz_strnp_727 (sa_ctrl_ia_rdata,_zy_simnet_sa_ctrl_ia_rdata_799_w$);
ixc_assign  #(11) _zz_strnp_728 (_zy_simnet_reg_addr_800_w$,reg_addr);
ixc_assign  #(4) _zz_strnp_729 (_zy_simnet_sa_ctrl_ia_config_801_w$,sa_ctrl_ia_config.f.op);
ixc_assign  #(5) _zz_strnp_730 (_zy_simnet_sa_ctrl_ia_config_802_w$,sa_ctrl_ia_config.f.addr);
ixc_assign  #(1) _zz_strnp_731 (_zy_simnet_wr_stb_803_w$,wr_stb);
ixc_assign  #(32) _zz_strnp_732 (_zy_simnet_sa_ctrl_ia_wdata_804_w$,sa_ctrl_ia_wdata);
cr_kme_regs u_cr_kme_regs(
  .clk(clk) ,
  .i_reset_(rst_n) ,
  .i_sw_init(_zy_simnet_cio_24) ,
  .i_addr(_zy_simnet_locl_addr_25_w$) ,
  .i_wr_strb(_zy_simnet_locl_wr_strb_26_w$) ,
  .i_wr_data(_zy_simnet_locl_wr_data_27_w$) ,
  .i_rd_strb(_zy_simnet_locl_rd_strb_28_w$) ,
  .o_rd_data(_zy_simnet_locl_rd_data_29_w$) ,
  .o_ack(_zy_simnet_locl_ack_30_w$) ,
  .o_err_ack(_zy_simnet_locl_err_ack_31_w$) ,
  .o_spare_config(_zy_simnet_tvar_32) ,
  .o_cceip0_out_ia_wdata_part0(_zy_simnet_cceip0_out_ia_wdata_38_w$) ,
  .o_cceip0_out_ia_wdata_part1(_zy_simnet_cceip0_out_ia_wdata_39_w$) ,
  .o_cceip0_out_ia_wdata_part2(_zy_simnet_cceip0_out_ia_wdata_40_w$) ,
  .o_cceip0_out_ia_config(_zy_simnet_cceip0_out_ia_config_41_w$) ,
  .o_cceip0_out_im_config(_zy_simnet_cceip0_out_im_config_42_w$) ,
  .o_cceip0_out_im_read_done(_zy_simnet_dio_43) ,
  .o_cceip1_out_ia_wdata_part0(_zy_simnet_cceip1_out_ia_wdata_44_w$) ,
  .o_cceip1_out_ia_wdata_part1(_zy_simnet_cceip1_out_ia_wdata_45_w$) ,
  .o_cceip1_out_ia_wdata_part2(_zy_simnet_cceip1_out_ia_wdata_46_w$) ,
  .o_cceip1_out_ia_config(_zy_simnet_cceip1_out_ia_config_47_w$) ,
  .o_cceip1_out_im_config(_zy_simnet_cceip1_out_im_config_48_w$) ,
  .o_cceip1_out_im_read_done(_zy_simnet_dio_49) ,
  .o_cceip2_out_ia_wdata_part0(_zy_simnet_cceip2_out_ia_wdata_50_w$) ,
  .o_cceip2_out_ia_wdata_part1(_zy_simnet_cceip2_out_ia_wdata_51_w$) ,
  .o_cceip2_out_ia_wdata_part2(_zy_simnet_cceip2_out_ia_wdata_52_w$) ,
  .o_cceip2_out_ia_config(_zy_simnet_cceip2_out_ia_config_53_w$) ,
  .o_cceip2_out_im_config(_zy_simnet_cceip2_out_im_config_54_w$) ,
  .o_cceip2_out_im_read_done(_zy_simnet_dio_55) ,
  .o_cceip3_out_ia_wdata_part0(_zy_simnet_cceip3_out_ia_wdata_56_w$) ,
  .o_cceip3_out_ia_wdata_part1(_zy_simnet_cceip3_out_ia_wdata_57_w$) ,
  .o_cceip3_out_ia_wdata_part2(_zy_simnet_cceip3_out_ia_wdata_58_w$) ,
  .o_cceip3_out_ia_config(_zy_simnet_cceip3_out_ia_config_59_w$) ,
  .o_cceip3_out_im_config(_zy_simnet_cceip3_out_im_config_60_w$) ,
  .o_cceip3_out_im_read_done(_zy_simnet_dio_61) ,
  .o_cddip0_out_ia_wdata_part0(_zy_simnet_cddip0_out_ia_wdata_62_w$) ,
  .o_cddip0_out_ia_wdata_part1(_zy_simnet_cddip0_out_ia_wdata_63_w$) ,
  .o_cddip0_out_ia_wdata_part2(_zy_simnet_cddip0_out_ia_wdata_64_w$) ,
  .o_cddip0_out_ia_config(_zy_simnet_cddip0_out_ia_config_65_w$) ,
  .o_cddip0_out_im_config(_zy_simnet_cddip0_out_im_config_66_w$) ,
  .o_cddip0_out_im_read_done(_zy_simnet_dio_67) ,
  .o_cddip1_out_ia_wdata_part0(_zy_simnet_cddip1_out_ia_wdata_68_w$) ,
  .o_cddip1_out_ia_wdata_part1(_zy_simnet_cddip1_out_ia_wdata_69_w$) ,
  .o_cddip1_out_ia_wdata_part2(_zy_simnet_cddip1_out_ia_wdata_70_w$) ,
  .o_cddip1_out_ia_config(_zy_simnet_cddip1_out_ia_config_71_w$) ,
  .o_cddip1_out_im_config(_zy_simnet_cddip1_out_im_config_72_w$) ,
  .o_cddip1_out_im_read_done(_zy_simnet_dio_73) ,
  .o_cddip2_out_ia_wdata_part0(_zy_simnet_cddip2_out_ia_wdata_74_w$) ,
  .o_cddip2_out_ia_wdata_part1(_zy_simnet_cddip2_out_ia_wdata_75_w$) ,
  .o_cddip2_out_ia_wdata_part2(_zy_simnet_cddip2_out_ia_wdata_76_w$) ,
  .o_cddip2_out_ia_config(_zy_simnet_cddip2_out_ia_config_77_w$) ,
  .o_cddip2_out_im_config(_zy_simnet_cddip2_out_im_config_78_w$) ,
  .o_cddip2_out_im_read_done(_zy_simnet_dio_79) ,
  .o_cddip3_out_ia_wdata_part0(_zy_simnet_cddip3_out_ia_wdata_80_w$) ,
  .o_cddip3_out_ia_wdata_part1(_zy_simnet_cddip3_out_ia_wdata_81_w$) ,
  .o_cddip3_out_ia_wdata_part2(_zy_simnet_cddip3_out_ia_wdata_82_w$) ,
  .o_cddip3_out_ia_config(_zy_simnet_cddip3_out_ia_config_83_w$) ,
  .o_cddip3_out_im_config(_zy_simnet_cddip3_out_im_config_84_w$) ,
  .o_cddip3_out_im_read_done(_zy_simnet_dio_85) ,
  .o_ckv_ia_wdata_part0(_zy_simnet_o_ckv_ia_wdata_part0_86_w$) ,
  .o_ckv_ia_wdata_part1(_zy_simnet_o_ckv_ia_wdata_part1_87_w$) ,
  .o_ckv_ia_config(_zy_simnet_o_ckv_ia_config_88_w$) ,
  .o_kim_ia_wdata_part0(_zy_simnet_o_kim_ia_wdata_part0_89_w$) ,
  .o_kim_ia_wdata_part1(_zy_simnet_o_kim_ia_wdata_part1_90_w$) ,
  .o_kim_ia_config(_zy_simnet_o_kim_ia_config_91_w$) ,
  .o_label0_config(_zy_simnet_tvar_92) ,
  .o_label0_data7(_zy_simnet_labels_93_w$) ,
  .o_label0_data6(_zy_simnet_labels_94_w$) ,
  .o_label0_data5(_zy_simnet_labels_95_w$) ,
  .o_label0_data4(_zy_simnet_labels_96_w$) ,
  .o_label0_data3(_zy_simnet_labels_97_w$) ,
  .o_label0_data2(_zy_simnet_labels_98_w$) ,
  .o_label0_data1(_zy_simnet_labels_99_w$) ,
  .o_label0_data0(_zy_simnet_labels_100_w$) ,
  .o_label1_config(_zy_simnet_tvar_101) ,
  .o_label1_data7(_zy_simnet_labels_102_w$) ,
  .o_label1_data6(_zy_simnet_labels_103_w$) ,
  .o_label1_data5(_zy_simnet_labels_104_w$) ,
  .o_label1_data4(_zy_simnet_labels_105_w$) ,
  .o_label1_data3(_zy_simnet_labels_106_w$) ,
  .o_label1_data2(_zy_simnet_labels_107_w$) ,
  .o_label1_data1(_zy_simnet_labels_108_w$) ,
  .o_label1_data0(_zy_simnet_labels_109_w$) ,
  .o_label2_config(_zy_simnet_tvar_110) ,
  .o_label2_data7(_zy_simnet_labels_111_w$) ,
  .o_label2_data6(_zy_simnet_labels_112_w$) ,
  .o_label2_data5(_zy_simnet_labels_113_w$) ,
  .o_label2_data4(_zy_simnet_labels_114_w$) ,
  .o_label2_data3(_zy_simnet_labels_115_w$) ,
  .o_label2_data2(_zy_simnet_labels_116_w$) ,
  .o_label2_data1(_zy_simnet_labels_117_w$) ,
  .o_label2_data0(_zy_simnet_labels_118_w$) ,
  .o_label3_config(_zy_simnet_tvar_119) ,
  .o_label3_data7(_zy_simnet_labels_120_w$) ,
  .o_label3_data6(_zy_simnet_labels_121_w$) ,
  .o_label3_data5(_zy_simnet_labels_122_w$) ,
  .o_label3_data4(_zy_simnet_labels_123_w$) ,
  .o_label3_data3(_zy_simnet_labels_124_w$) ,
  .o_label3_data2(_zy_simnet_labels_125_w$) ,
  .o_label3_data1(_zy_simnet_labels_126_w$) ,
  .o_label3_data0(_zy_simnet_labels_127_w$) ,
  .o_label4_config(_zy_simnet_tvar_128) ,
  .o_label4_data7(_zy_simnet_labels_129_w$) ,
  .o_label4_data6(_zy_simnet_labels_130_w$) ,
  .o_label4_data5(_zy_simnet_labels_131_w$) ,
  .o_label4_data4(_zy_simnet_labels_132_w$) ,
  .o_label4_data3(_zy_simnet_labels_133_w$) ,
  .o_label4_data2(_zy_simnet_labels_134_w$) ,
  .o_label4_data1(_zy_simnet_labels_135_w$) ,
  .o_label4_data0(_zy_simnet_labels_136_w$) ,
  .o_label5_config(_zy_simnet_tvar_137) ,
  .o_label5_data7(_zy_simnet_labels_138_w$) ,
  .o_label5_data6(_zy_simnet_labels_139_w$) ,
  .o_label5_data5(_zy_simnet_labels_140_w$) ,
  .o_label5_data4(_zy_simnet_labels_141_w$) ,
  .o_label5_data3(_zy_simnet_labels_142_w$) ,
  .o_label5_data2(_zy_simnet_labels_143_w$) ,
  .o_label5_data1(_zy_simnet_labels_144_w$) ,
  .o_label5_data0(_zy_simnet_labels_145_w$) ,
  .o_label6_config(_zy_simnet_tvar_146) ,
  .o_label6_data7(_zy_simnet_labels_147_w$) ,
  .o_label6_data6(_zy_simnet_labels_148_w$) ,
  .o_label6_data5(_zy_simnet_labels_149_w$) ,
  .o_label6_data4(_zy_simnet_labels_150_w$) ,
  .o_label6_data3(_zy_simnet_labels_151_w$) ,
  .o_label6_data2(_zy_simnet_labels_152_w$) ,
  .o_label6_data1(_zy_simnet_labels_153_w$) ,
  .o_label6_data0(_zy_simnet_labels_154_w$) ,
  .o_label7_config(_zy_simnet_tvar_155) ,
  .o_label7_data7(_zy_simnet_labels_156_w$) ,
  .o_label7_data6(_zy_simnet_labels_157_w$) ,
  .o_label7_data5(_zy_simnet_labels_158_w$) ,
  .o_label7_data4(_zy_simnet_labels_159_w$) ,
  .o_label7_data3(_zy_simnet_labels_160_w$) ,
  .o_label7_data2(_zy_simnet_labels_161_w$) ,
  .o_label7_data1(_zy_simnet_labels_162_w$) ,
  .o_label7_data0(_zy_simnet_labels_163_w$) ,
  .o_kdf_drbg_ctrl(_zy_simnet_o_kdf_drbg_ctrl_164_w$) ,
  .o_kdf_drbg_seed_0_state_key_31_0(_zy_simnet_o_kdf_drbg_seed_0_state_key_31_0_165_w$) ,
  .o_kdf_drbg_seed_0_state_key_63_32(_zy_simnet_o_kdf_drbg_seed_0_state_key_63_32_166_w$) ,
  .o_kdf_drbg_seed_0_state_key_95_64(_zy_simnet_o_kdf_drbg_seed_0_state_key_95_64_167_w$) ,
  .o_kdf_drbg_seed_0_state_key_127_96(_zy_simnet_o_kdf_drbg_seed_0_state_key_127_96_168_w$) ,
  .o_kdf_drbg_seed_0_state_key_159_128(_zy_simnet_o_kdf_drbg_seed_0_state_key_159_128_169_w$) ,
  .o_kdf_drbg_seed_0_state_key_191_160(_zy_simnet_o_kdf_drbg_seed_0_state_key_191_160_170_w$) ,
  .o_kdf_drbg_seed_0_state_key_223_192(_zy_simnet_o_kdf_drbg_seed_0_state_key_223_192_171_w$) ,
  .o_kdf_drbg_seed_0_state_key_255_224(_zy_simnet_o_kdf_drbg_seed_0_state_key_255_224_172_w$) ,
  .o_kdf_drbg_seed_0_state_value_31_0(_zy_simnet_o_kdf_drbg_seed_0_state_value_31_0_173_w$) ,
  .o_kdf_drbg_seed_0_state_value_63_32(_zy_simnet_o_kdf_drbg_seed_0_state_value_63_32_174_w$) ,
  .o_kdf_drbg_seed_0_state_value_95_64(_zy_simnet_o_kdf_drbg_seed_0_state_value_95_64_175_w$) ,
  .o_kdf_drbg_seed_0_state_value_127_96(_zy_simnet_o_kdf_drbg_seed_0_state_value_127_96_176_w$) ,
  .o_kdf_drbg_seed_0_reseed_interval_0(_zy_simnet_o_kdf_drbg_seed_0_reseed_interval_0_177_w$) ,
  .o_kdf_drbg_seed_0_reseed_interval_1(_zy_simnet_o_kdf_drbg_seed_0_reseed_interval_1_178_w$) ,
  .o_kdf_drbg_seed_1_state_key_31_0(_zy_simnet_o_kdf_drbg_seed_1_state_key_31_0_179_w$) ,
  .o_kdf_drbg_seed_1_state_key_63_32(_zy_simnet_o_kdf_drbg_seed_1_state_key_63_32_180_w$) ,
  .o_kdf_drbg_seed_1_state_key_95_64(_zy_simnet_o_kdf_drbg_seed_1_state_key_95_64_181_w$) ,
  .o_kdf_drbg_seed_1_state_key_127_96(_zy_simnet_o_kdf_drbg_seed_1_state_key_127_96_182_w$) ,
  .o_kdf_drbg_seed_1_state_key_159_128(_zy_simnet_o_kdf_drbg_seed_1_state_key_159_128_183_w$) ,
  .o_kdf_drbg_seed_1_state_key_191_160(_zy_simnet_o_kdf_drbg_seed_1_state_key_191_160_184_w$) ,
  .o_kdf_drbg_seed_1_state_key_223_192(_zy_simnet_o_kdf_drbg_seed_1_state_key_223_192_185_w$) ,
  .o_kdf_drbg_seed_1_state_key_255_224(_zy_simnet_o_kdf_drbg_seed_1_state_key_255_224_186_w$) ,
  .o_kdf_drbg_seed_1_state_value_31_0(_zy_simnet_o_kdf_drbg_seed_1_state_value_31_0_187_w$) ,
  .o_kdf_drbg_seed_1_state_value_63_32(_zy_simnet_o_kdf_drbg_seed_1_state_value_63_32_188_w$) ,
  .o_kdf_drbg_seed_1_state_value_95_64(_zy_simnet_o_kdf_drbg_seed_1_state_value_95_64_189_w$) ,
  .o_kdf_drbg_seed_1_state_value_127_96(_zy_simnet_o_kdf_drbg_seed_1_state_value_127_96_190_w$) ,
  .o_kdf_drbg_seed_1_reseed_interval_0(_zy_simnet_o_kdf_drbg_seed_1_reseed_interval_0_191_w$) ,
  .o_kdf_drbg_seed_1_reseed_interval_1(_zy_simnet_o_kdf_drbg_seed_1_reseed_interval_1_192_w$) ,
  .o_interrupt_status(_zy_simnet_dio_193) ,
  .o_interrupt_mask(_zy_simnet_o_interrupt_mask_194_w$) ,
  .o_engine_sticky_status(_zy_simnet_o_engine_sticky_status_195_w$) ,
  .o_bimc_monitor_mask(_zy_simnet_o_bimc_monitor_mask_196_w$) ,
  .o_bimc_ecc_uncorrectable_error_cnt(_zy_simnet_o_bimc_ecc_uncorrectable_error_cnt_197_w$) ,
  .o_bimc_ecc_correctable_error_cnt(_zy_simnet_o_bimc_ecc_correctable_error_cnt_198_w$) ,
  .o_bimc_parity_error_cnt(_zy_simnet_o_bimc_parity_error_cnt_199_w$) ,
  .o_bimc_global_config(_zy_simnet_o_bimc_global_config_200_w$) ,
  .o_bimc_eccpar_debug(_zy_simnet_o_bimc_eccpar_debug_201_w$) ,
  .o_bimc_cmd2(_zy_simnet_o_bimc_cmd2_202_w$) ,
  .o_bimc_cmd1(_zy_simnet_o_bimc_cmd1_203_w$) ,
  .o_bimc_cmd0(_zy_simnet_o_bimc_cmd0_204_w$) ,
  .o_bimc_rxcmd2(_zy_simnet_o_bimc_rxcmd2_205_w$) ,
  .o_bimc_rxrsp2(_zy_simnet_o_bimc_rxrsp2_206_w$) ,
  .o_bimc_pollrsp2(_zy_simnet_o_bimc_pollrsp2_207_w$) ,
  .o_bimc_dbgcmd2(_zy_simnet_o_bimc_dbgcmd2_208_w$) ,
  .o_im_consumed(_zy_simnet_dio_209) ,
  .o_tready_override(_zy_simnet_tready_override_210_w$) ,
  .o_regs_sa_ctrl(_zy_simnet_regs_sa_ctrl_211_w$) ,
  .o_sa_snapshot_ia_wdata_part0(_zy_simnet_sa_snapshot_ia_wdata_212_w$) ,
  .o_sa_snapshot_ia_wdata_part1(_zy_simnet_sa_snapshot_ia_wdata_213_w$) ,
  .o_sa_snapshot_ia_config(_zy_simnet_sa_snapshot_ia_config_214_w$) ,
  .o_sa_count_ia_wdata_part0(_zy_simnet_sa_count_ia_wdata_215_w$) ,
  .o_sa_count_ia_wdata_part1(_zy_simnet_sa_count_ia_wdata_216_w$) ,
  .o_sa_count_ia_config(_zy_simnet_sa_count_ia_config_217_w$) ,
  .o_cceip_encrypt_kop_fifo_override(_zy_simnet_cceip_encrypt_kop_fifo_override_218_w$) ,
  .o_cceip_validate_kop_fifo_override(_zy_simnet_cceip_validate_kop_fifo_override_219_w$) ,
  .o_cddip_decrypt_kop_fifo_override(_zy_simnet_cddip_decrypt_kop_fifo_override_220_w$) ,
  .o_sa_global_ctrl(_zy_simnet_sa_global_ctrl_221_w$) ,
  .o_sa_ctrl_ia_wdata_part0(_zy_simnet_sa_ctrl_ia_wdata_222_w$) ,
  .o_sa_ctrl_ia_config(_zy_simnet_sa_ctrl_ia_config_223_w$) ,
  .o_kdf_test_key_size_config(kdf_test_key_size) ,
  .i_blkid_revid_config(_zy_simnet_blkid_revid_config_224_w$) ,
  .i_revision_config(_zy_simnet_revid_wire_225_w$) ,
  .i_spare_config(_zy_simnet_tvar_226) ,
  .i_cceip0_out_ia_capability(_zy_simnet_cceip0_out_ia_capability_227_w$) ,
  .i_cceip0_out_ia_status(_zy_simnet_cceip0_out_ia_status_228_w$) ,
  .i_cceip0_out_ia_rdata_part0(_zy_simnet_tvar_229) ,
  .i_cceip0_out_ia_rdata_part1(_zy_simnet_tvar_230) ,
  .i_cceip0_out_ia_rdata_part2(_zy_simnet_tvar_231) ,
  .i_cceip0_out_im_status(_zy_simnet_cceip0_out_im_status_232_w$) ,
  .i_cceip0_out_im_read_done(_zy_simnet_cio_233) ,
  .i_cceip1_out_ia_capability(_zy_simnet_cceip1_out_ia_capability_234_w$) ,
  .i_cceip1_out_ia_status(_zy_simnet_cceip1_out_ia_status_235_w$) ,
  .i_cceip1_out_ia_rdata_part0(_zy_simnet_tvar_236) ,
  .i_cceip1_out_ia_rdata_part1(_zy_simnet_tvar_237) ,
  .i_cceip1_out_ia_rdata_part2(_zy_simnet_tvar_238) ,
  .i_cceip1_out_im_status(_zy_simnet_cceip1_out_im_status_239_w$) ,
  .i_cceip1_out_im_read_done(_zy_simnet_cio_240) ,
  .i_cceip2_out_ia_capability(_zy_simnet_cceip2_out_ia_capability_241_w$) ,
  .i_cceip2_out_ia_status(_zy_simnet_cceip2_out_ia_status_242_w$) ,
  .i_cceip2_out_ia_rdata_part0(_zy_simnet_tvar_243) ,
  .i_cceip2_out_ia_rdata_part1(_zy_simnet_tvar_244) ,
  .i_cceip2_out_ia_rdata_part2(_zy_simnet_tvar_245) ,
  .i_cceip2_out_im_status(_zy_simnet_cceip2_out_im_status_246_w$) ,
  .i_cceip2_out_im_read_done(_zy_simnet_cio_247) ,
  .i_cceip3_out_ia_capability(_zy_simnet_cceip3_out_ia_capability_248_w$) ,
  .i_cceip3_out_ia_status(_zy_simnet_cceip3_out_ia_status_249_w$) ,
  .i_cceip3_out_ia_rdata_part0(_zy_simnet_tvar_250) ,
  .i_cceip3_out_ia_rdata_part1(_zy_simnet_tvar_251) ,
  .i_cceip3_out_ia_rdata_part2(_zy_simnet_tvar_252) ,
  .i_cceip3_out_im_status(_zy_simnet_cceip3_out_im_status_253_w$) ,
  .i_cceip3_out_im_read_done(_zy_simnet_cio_254) ,
  .i_cddip0_out_ia_capability(_zy_simnet_cddip0_out_ia_capability_255_w$) ,
  .i_cddip0_out_ia_status(_zy_simnet_cddip0_out_ia_status_256_w$) ,
  .i_cddip0_out_ia_rdata_part0(_zy_simnet_tvar_257) ,
  .i_cddip0_out_ia_rdata_part1(_zy_simnet_tvar_258) ,
  .i_cddip0_out_ia_rdata_part2(_zy_simnet_tvar_259) ,
  .i_cddip0_out_im_status(_zy_simnet_cddip0_out_im_status_260_w$) ,
  .i_cddip0_out_im_read_done(_zy_simnet_cio_261) ,
  .i_cddip1_out_ia_capability(_zy_simnet_cddip1_out_ia_capability_262_w$) ,
  .i_cddip1_out_ia_status(_zy_simnet_cddip1_out_ia_status_263_w$) ,
  .i_cddip1_out_ia_rdata_part0(_zy_simnet_tvar_264) ,
  .i_cddip1_out_ia_rdata_part1(_zy_simnet_tvar_265) ,
  .i_cddip1_out_ia_rdata_part2(_zy_simnet_tvar_266) ,
  .i_cddip1_out_im_status(_zy_simnet_cddip1_out_im_status_267_w$) ,
  .i_cddip1_out_im_read_done(_zy_simnet_cio_268) ,
  .i_cddip2_out_ia_capability(_zy_simnet_cddip2_out_ia_capability_269_w$) ,
  .i_cddip2_out_ia_status(_zy_simnet_cddip2_out_ia_status_270_w$) ,
  .i_cddip2_out_ia_rdata_part0(_zy_simnet_tvar_271) ,
  .i_cddip2_out_ia_rdata_part1(_zy_simnet_tvar_272) ,
  .i_cddip2_out_ia_rdata_part2(_zy_simnet_tvar_273) ,
  .i_cddip2_out_im_status(_zy_simnet_cddip2_out_im_status_274_w$) ,
  .i_cddip2_out_im_read_done(_zy_simnet_cio_275) ,
  .i_cddip3_out_ia_capability(_zy_simnet_cddip3_out_ia_capability_276_w$) ,
  .i_cddip3_out_ia_status(_zy_simnet_cddip3_out_ia_status_277_w$) ,
  .i_cddip3_out_ia_rdata_part0(_zy_simnet_tvar_278) ,
  .i_cddip3_out_ia_rdata_part1(_zy_simnet_tvar_279) ,
  .i_cddip3_out_ia_rdata_part2(_zy_simnet_tvar_280) ,
  .i_cddip3_out_im_status(_zy_simnet_cddip3_out_im_status_281_w$) ,
  .i_cddip3_out_im_read_done(_zy_simnet_cio_282) ,
  .i_ckv_ia_capability(_zy_simnet_ckv_ia_capability_283_w$) ,
  .i_ckv_ia_status(_zy_simnet_ckv_ia_status_284_w$) ,
  .i_ckv_ia_rdata_part0(_zy_simnet_ckv_ia_rdata_part0_285_w$) ,
  .i_ckv_ia_rdata_part1(_zy_simnet_ckv_ia_rdata_part1_286_w$) ,
  .i_kim_ia_capability(_zy_simnet_kim_ia_capability_287_w$) ,
  .i_kim_ia_status(_zy_simnet_kim_ia_status_288_w$) ,
  .i_kim_ia_rdata_part0(_zy_simnet_kim_ia_rdata_part0_289_w$) ,
  .i_kim_ia_rdata_part1(_zy_simnet_kim_ia_rdata_part1_290_w$) ,
  .i_kdf_drbg_ctrl(_zy_simnet_kdf_drbg_ctrl_291_w$) ,
  .i_interrupt_status(_zy_simnet_interrupt_status_292_w$) ,
  .i_engine_sticky_status(_zy_simnet_engine_sticky_status_293_w$) ,
  .i_bimc_monitor(_zy_simnet_bimc_monitor_294_w$) ,
  .i_bimc_ecc_uncorrectable_error_cnt(_zy_simnet_bimc_ecc_uncorrectable_error_cnt_295_w$) ,
  .i_bimc_ecc_correctable_error_cnt(_zy_simnet_bimc_ecc_correctable_error_cnt_296_w$) ,
  .i_bimc_parity_error_cnt(_zy_simnet_bimc_parity_error_cnt_297_w$) ,
  .i_bimc_global_config(_zy_simnet_bimc_global_config_298_w$) ,
  .i_bimc_memid(_zy_simnet_bimc_memid_299_w$) ,
  .i_bimc_eccpar_debug(_zy_simnet_bimc_eccpar_debug_300_w$) ,
  .i_bimc_cmd2(_zy_simnet_bimc_cmd2_301_w$) ,
  .i_bimc_rxcmd2(_zy_simnet_bimc_rxcmd2_302_w$) ,
  .i_bimc_rxcmd1(_zy_simnet_bimc_rxcmd1_303_w$) ,
  .i_bimc_rxcmd0(_zy_simnet_bimc_rxcmd0_304_w$) ,
  .i_bimc_rxrsp2(_zy_simnet_bimc_rxrsp2_305_w$) ,
  .i_bimc_rxrsp1(_zy_simnet_bimc_rxrsp1_306_w$) ,
  .i_bimc_rxrsp0(_zy_simnet_bimc_rxrsp0_307_w$) ,
  .i_bimc_pollrsp2(_zy_simnet_bimc_pollrsp2_308_w$) ,
  .i_bimc_pollrsp1(_zy_simnet_bimc_pollrsp1_309_w$) ,
  .i_bimc_pollrsp0(_zy_simnet_bimc_pollrsp0_310_w$) ,
  .i_bimc_dbgcmd2(_zy_simnet_bimc_dbgcmd2_311_w$) ,
  .i_bimc_dbgcmd1(_zy_simnet_bimc_dbgcmd1_312_w$) ,
  .i_bimc_dbgcmd0(_zy_simnet_bimc_dbgcmd0_313_w$) ,
  .i_im_available(_zy_simnet_im_available_314_w$) ,
  .i_im_consumed(_zy_simnet_cio_315) ,
  .i_tready_override(_zy_simnet_tready_override_316_w$) ,
  .i_regs_sa_ctrl(_zy_simnet_regs_sa_ctrl_317_w$) ,
  .i_sa_snapshot_ia_capability(_zy_simnet_sa_snapshot_ia_capability_318_w$) ,
  .i_sa_snapshot_ia_status(_zy_simnet_sa_snapshot_ia_status_319_w$) ,
  .i_sa_snapshot_ia_rdata_part0(_zy_simnet_sa_snapshot_ia_rdata_320_w$) ,
  .i_sa_snapshot_ia_rdata_part1(_zy_simnet_sa_snapshot_ia_rdata_321_w$) ,
  .i_sa_count_ia_capability(_zy_simnet_sa_count_ia_capability_322_w$) ,
  .i_sa_count_ia_status(_zy_simnet_sa_count_ia_status_323_w$) ,
  .i_sa_count_ia_rdata_part0(_zy_simnet_sa_count_ia_rdata_324_w$) ,
  .i_sa_count_ia_rdata_part1(_zy_simnet_sa_count_ia_rdata_325_w$) ,
  .i_idle_components(idle_components) ,
  .i_sa_global_ctrl(_zy_simnet_sa_global_ctrl_326_w$) ,
  .i_sa_ctrl_ia_capability(_zy_simnet_sa_ctrl_ia_capability_327_w$) ,
  .i_sa_ctrl_ia_status(_zy_simnet_sa_ctrl_ia_status_328_w$) ,
  .i_sa_ctrl_ia_rdata_part0(_zy_simnet_sa_ctrl_ia_rdata_329_w$) ,
  .o_reg_written(_zy_simnet_wr_stb_330_w$) ,
  .o_reg_read(_zy_simnet_dio_331) ,
  .o_reg_wr_data(_zy_simnet_wr_data_332_w$) ,
  .o_reg_addr(_zy_simnet_reg_addr_333_w$) ); 
nx_rbus_ring u_nx_rbus_ring(
  .clk(clk) ,
  .rst_n(rst_n) ,
  .cfg_start_addr(cfg_start_addr) ,
  .cfg_end_addr(cfg_end_addr) ,
  .rbus_addr_i(rbus_ring_i.addr) ,
  .rbus_wr_strb_i(rbus_ring_i.wr_strb) ,
  .rbus_wr_data_i(rbus_ring_i.wr_data) ,
  .rbus_rd_strb_i(rbus_ring_i.rd_strb) ,
  .rbus_addr_o(_zy_simnet_rbus_ring_o_334_w$) ,
  .rbus_wr_strb_o(_zy_simnet_rbus_ring_o_335_w$) ,
  .rbus_wr_data_o(_zy_simnet_rbus_ring_o_336_w$) ,
  .rbus_rd_strb_o(_zy_simnet_rbus_ring_o_337_w$) ,
  .locl_addr_o(_zy_simnet_locl_addr_338_w$) ,
  .locl_wr_strb_o(_zy_simnet_locl_wr_strb_339_w$) ,
  .locl_wr_data_o(_zy_simnet_locl_wr_data_340_w$) ,
  .locl_rd_strb_o(_zy_simnet_locl_rd_strb_341_w$) ,
  .rbus_rd_data_i(rbus_ring_i.rd_data) ,
  .rbus_ack_i(rbus_ring_i.ack) ,
  .rbus_err_ack_i(rbus_ring_i.err_ack) ,
  .locl_rd_data_i(_zy_simnet_locl_rd_data_342_w$) ,
  .locl_ack_i(_zy_simnet_locl_ack_343_w$) ,
  .locl_err_ack_i(_zy_simnet_locl_err_ack_344_w$) ,
  .rbus_rd_data_o(_zy_simnet_rbus_ring_o_345_w$) ,
  .rbus_ack_o(_zy_simnet_rbus_ring_o_346_w$) ,
  .rbus_err_ack_o(_zy_simnet_rbus_ring_o_347_w$) ); 
nx_interface_monitor_pipe nx_interface_monitor_pipe_cceip0(
  .ob_in_mod(_zy_simnet_kme_cceip0_ob_in_mod_348_w$) ,
  .ob_out(_zy_simnet_kme_cceip0_ob_out_post_349_w$) ,
  .im_vld(_zy_simnet_cceip0_im_vld_350_w$) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .ob_out_pre(kme_cceip0_ob_out_pre) ,
  .ob_in(_zy_simnet_tvar_351) ,
  .im_rdy(_zy_simnet_cceip0_im_rdy_352_w$) ); 
nx_interface_monitor_pipe nx_interface_monitor_pipe_cceip1(
  .ob_in_mod(_zy_simnet_kme_cceip1_ob_in_mod_353_w$) ,
  .ob_out(_zy_simnet_kme_cceip1_ob_out_post_354_w$) ,
  .im_vld(_zy_simnet_cceip1_im_vld_355_w$) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .ob_out_pre(kme_cceip1_ob_out_pre) ,
  .ob_in(_zy_simnet_tvar_356) ,
  .im_rdy(_zy_simnet_cceip1_im_rdy_357_w$) ); 
nx_interface_monitor_pipe nx_interface_monitor_pipe_cceip2(
  .ob_in_mod(_zy_simnet_kme_cceip2_ob_in_mod_358_w$) ,
  .ob_out(_zy_simnet_kme_cceip2_ob_out_post_359_w$) ,
  .im_vld(_zy_simnet_cceip2_im_vld_360_w$) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .ob_out_pre(kme_cceip2_ob_out_pre) ,
  .ob_in(_zy_simnet_tvar_361) ,
  .im_rdy(_zy_simnet_cceip2_im_rdy_362_w$) ); 
nx_interface_monitor_pipe nx_interface_monitor_pipe_cceip3(
  .ob_in_mod(_zy_simnet_kme_cceip3_ob_in_mod_363_w$) ,
  .ob_out(_zy_simnet_kme_cceip3_ob_out_post_364_w$) ,
  .im_vld(_zy_simnet_cceip3_im_vld_365_w$) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .ob_out_pre(kme_cceip3_ob_out_pre) ,
  .ob_in(_zy_simnet_tvar_366) ,
  .im_rdy(_zy_simnet_cceip3_im_rdy_367_w$) ); 
nx_interface_monitor_pipe nx_interface_monitor_pipe_cddip0(
  .ob_in_mod(_zy_simnet_kme_cddip0_ob_in_mod_368_w$) ,
  .ob_out(_zy_simnet_kme_cddip0_ob_out_post_369_w$) ,
  .im_vld(_zy_simnet_cddip0_im_vld_370_w$) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .ob_out_pre(kme_cddip0_ob_out_pre) ,
  .ob_in(_zy_simnet_tvar_371) ,
  .im_rdy(_zy_simnet_cddip0_im_rdy_372_w$) ); 
nx_interface_monitor_pipe nx_interface_monitor_pipe_cddip1(
  .ob_in_mod(_zy_simnet_kme_cddip1_ob_in_mod_373_w$) ,
  .ob_out(_zy_simnet_kme_cddip1_ob_out_post_374_w$) ,
  .im_vld(_zy_simnet_cddip1_im_vld_375_w$) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .ob_out_pre(kme_cddip1_ob_out_pre) ,
  .ob_in(_zy_simnet_tvar_376) ,
  .im_rdy(_zy_simnet_cddip1_im_rdy_377_w$) ); 
nx_interface_monitor_pipe nx_interface_monitor_pipe_cddip2(
  .ob_in_mod(_zy_simnet_kme_cddip2_ob_in_mod_378_w$) ,
  .ob_out(_zy_simnet_kme_cddip2_ob_out_post_379_w$) ,
  .im_vld(_zy_simnet_cddip2_im_vld_380_w$) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .ob_out_pre(kme_cddip2_ob_out_pre) ,
  .ob_in(_zy_simnet_tvar_381) ,
  .im_rdy(_zy_simnet_cddip2_im_rdy_382_w$) ); 
nx_interface_monitor_pipe nx_interface_monitor_pipe_cddip3(
  .ob_in_mod(_zy_simnet_kme_cddip3_ob_in_mod_383_w$) ,
  .ob_out(_zy_simnet_kme_cddip3_ob_out_post_384_w$) ,
  .im_vld(_zy_simnet_cddip3_im_vld_385_w$) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .ob_out_pre(kme_cddip3_ob_out_pre) ,
  .ob_in(_zy_simnet_tvar_386) ,
  .im_rdy(_zy_simnet_cddip3_im_rdy_387_w$) ); 
nx_interface_monitor_xcm104 u_nx_interface_monitor_cceip0(
  .stat_code(_zy_simnet_cceip0_out_ia_status_388_w$) ,
  .stat_datawords(_zy_simnet_cceip0_out_ia_status_389_w$) ,
  .stat_addr(_zy_simnet_cceip0_out_ia_status_390_w$) ,
  .capability_lst(_zy_simnet_cceip0_out_ia_capability_391_w$) ,
  .capability_type(_zy_simnet_cceip0_out_ia_capability_392_w$) ,
  .rd_dat(_zy_simnet_cceip0_out_ia_rdata_393_w$) ,
  .bimc_odat(_zy_simnet_cceip1_ism_idat_394_w$) ,
  .bimc_osync(_zy_simnet_cceip1_ism_isync_395_w$) ,
  .ro_uncorrectable_ecc_error(_zy_simnet_cceip0_ism_mbe_396_w$) ,
  .im_rdy(_zy_simnet_cceip0_im_rdy_397_w$) ,
  .im_available(_zy_simnet_im_available_kme_cceip0_398_w$) ,
  .im_status(_zy_simnet_cceip0_out_im_status_399_w$) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .reg_addr(_zy_simnet_reg_addr_400_w$) ,
  .cmnd_op(_zy_simnet_cceip0_out_ia_config_401_w$) ,
  .cmnd_addr(_zy_simnet_cceip0_out_ia_config_402_w$) ,
  .wr_stb(_zy_simnet_wr_stb_403_w$) ,
  .wr_dat(_zy_simnet_cceip0_out_ia_wdata_404_w$) ,
  .ovstb(ovstb) ,
  .lvm(lvm) ,
  .mlvm(mlvm) ,
  .mrdten(_zy_simnet_cio_405) ,
  .bimc_rst_n(bimc_rst_n) ,
  .bimc_isync(_zy_simnet_cceip0_ism_bimc_isync_406_w$) ,
  .bimc_idat(_zy_simnet_cceip0_ism_bimc_idat_407_w$) ,
  .im_din(_zy_simnet_cceip0_im_din_408_w$) ,
  .im_vld(_zy_simnet_cceip0_im_vld_409_w$) ,
  .im_consumed(_zy_simnet_im_consumed_kme_cceip0_410_w$) ,
  .im_config(_zy_simnet_cceip0_out_im_config_411_w$) ); 
nx_interface_monitor_xcm103 u_nx_interface_monitor_cceip1(
  .stat_code(_zy_simnet_cceip1_out_ia_status_412_w$) ,
  .stat_datawords(_zy_simnet_cceip1_out_ia_status_413_w$) ,
  .stat_addr(_zy_simnet_cceip1_out_ia_status_414_w$) ,
  .capability_lst(_zy_simnet_cceip1_out_ia_capability_415_w$) ,
  .capability_type(_zy_simnet_cceip1_out_ia_capability_416_w$) ,
  .rd_dat(_zy_simnet_cceip1_out_ia_rdata_417_w$) ,
  .bimc_odat(_zy_simnet_cceip2_ism_idat_418_w$) ,
  .bimc_osync(_zy_simnet_cceip2_ism_isync_419_w$) ,
  .ro_uncorrectable_ecc_error(_zy_simnet_cceip1_ism_mbe_420_w$) ,
  .im_rdy(_zy_simnet_cceip1_im_rdy_421_w$) ,
  .im_available(_zy_simnet_im_available_kme_cceip1_422_w$) ,
  .im_status(_zy_simnet_cceip1_out_im_status_423_w$) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .reg_addr(_zy_simnet_reg_addr_424_w$) ,
  .cmnd_op(_zy_simnet_cceip1_out_ia_config_425_w$) ,
  .cmnd_addr(_zy_simnet_cceip1_out_ia_config_426_w$) ,
  .wr_stb(_zy_simnet_wr_stb_427_w$) ,
  .wr_dat(_zy_simnet_cceip1_out_ia_wdata_428_w$) ,
  .ovstb(ovstb) ,
  .lvm(lvm) ,
  .mlvm(mlvm) ,
  .mrdten(_zy_simnet_cio_429) ,
  .bimc_rst_n(bimc_rst_n) ,
  .bimc_isync(_zy_simnet_cceip1_ism_isync_430_w$) ,
  .bimc_idat(_zy_simnet_cceip1_ism_idat_431_w$) ,
  .im_din(_zy_simnet_cceip1_im_din_432_w$) ,
  .im_vld(_zy_simnet_cceip1_im_vld_433_w$) ,
  .im_consumed(_zy_simnet_im_consumed_kme_cceip1_434_w$) ,
  .im_config(_zy_simnet_cceip1_out_im_config_435_w$) ); 
nx_interface_monitor_xcm102 u_nx_interface_monitor_cceip2(
  .stat_code(_zy_simnet_cceip2_out_ia_status_436_w$) ,
  .stat_datawords(_zy_simnet_cceip2_out_ia_status_437_w$) ,
  .stat_addr(_zy_simnet_cceip2_out_ia_status_438_w$) ,
  .capability_lst(_zy_simnet_cceip2_out_ia_capability_439_w$) ,
  .capability_type(_zy_simnet_cceip2_out_ia_capability_440_w$) ,
  .rd_dat(_zy_simnet_cceip2_out_ia_rdata_441_w$) ,
  .bimc_odat(_zy_simnet_cceip3_ism_idat_442_w$) ,
  .bimc_osync(_zy_simnet_cceip3_ism_isync_443_w$) ,
  .ro_uncorrectable_ecc_error(_zy_simnet_cceip2_ism_mbe_444_w$) ,
  .im_rdy(_zy_simnet_cceip2_im_rdy_445_w$) ,
  .im_available(_zy_simnet_im_available_kme_cceip2_446_w$) ,
  .im_status(_zy_simnet_cceip2_out_im_status_447_w$) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .reg_addr(_zy_simnet_reg_addr_448_w$) ,
  .cmnd_op(_zy_simnet_cceip2_out_ia_config_449_w$) ,
  .cmnd_addr(_zy_simnet_cceip2_out_ia_config_450_w$) ,
  .wr_stb(_zy_simnet_wr_stb_451_w$) ,
  .wr_dat(_zy_simnet_cceip2_out_ia_wdata_452_w$) ,
  .ovstb(ovstb) ,
  .lvm(lvm) ,
  .mlvm(mlvm) ,
  .mrdten(_zy_simnet_cio_453) ,
  .bimc_rst_n(bimc_rst_n) ,
  .bimc_isync(_zy_simnet_cceip2_ism_isync_454_w$) ,
  .bimc_idat(_zy_simnet_cceip2_ism_idat_455_w$) ,
  .im_din(_zy_simnet_cceip2_im_din_456_w$) ,
  .im_vld(_zy_simnet_cceip2_im_vld_457_w$) ,
  .im_consumed(_zy_simnet_im_consumed_kme_cceip2_458_w$) ,
  .im_config(_zy_simnet_cceip2_out_im_config_459_w$) ); 
nx_interface_monitor_xcm101 u_nx_interface_monitor_cceip3(
  .stat_code(_zy_simnet_cceip3_out_ia_status_460_w$) ,
  .stat_datawords(_zy_simnet_cceip3_out_ia_status_461_w$) ,
  .stat_addr(_zy_simnet_cceip3_out_ia_status_462_w$) ,
  .capability_lst(_zy_simnet_cceip3_out_ia_capability_463_w$) ,
  .capability_type(_zy_simnet_cceip3_out_ia_capability_464_w$) ,
  .rd_dat(_zy_simnet_cceip3_out_ia_rdata_465_w$) ,
  .bimc_odat(_zy_simnet_cddip0_ism_idat_466_w$) ,
  .bimc_osync(_zy_simnet_cddip0_ism_isync_467_w$) ,
  .ro_uncorrectable_ecc_error(_zy_simnet_cceip3_ism_mbe_468_w$) ,
  .im_rdy(_zy_simnet_cceip3_im_rdy_469_w$) ,
  .im_available(_zy_simnet_im_available_kme_cceip3_470_w$) ,
  .im_status(_zy_simnet_cceip3_out_im_status_471_w$) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .reg_addr(_zy_simnet_reg_addr_472_w$) ,
  .cmnd_op(_zy_simnet_cceip3_out_ia_config_473_w$) ,
  .cmnd_addr(_zy_simnet_cceip3_out_ia_config_474_w$) ,
  .wr_stb(_zy_simnet_wr_stb_475_w$) ,
  .wr_dat(_zy_simnet_cceip3_out_ia_wdata_476_w$) ,
  .ovstb(ovstb) ,
  .lvm(lvm) ,
  .mlvm(mlvm) ,
  .mrdten(_zy_simnet_cio_477) ,
  .bimc_rst_n(bimc_rst_n) ,
  .bimc_isync(_zy_simnet_cceip3_ism_isync_478_w$) ,
  .bimc_idat(_zy_simnet_cceip3_ism_idat_479_w$) ,
  .im_din(_zy_simnet_cceip3_im_din_480_w$) ,
  .im_vld(_zy_simnet_cceip3_im_vld_481_w$) ,
  .im_consumed(_zy_simnet_im_consumed_kme_cceip3_482_w$) ,
  .im_config(_zy_simnet_cceip3_out_im_config_483_w$) ); 
nx_interface_monitor_xcm100 u_nx_interface_monitor_cddip0(
  .stat_code(_zy_simnet_cddip0_out_ia_status_484_w$) ,
  .stat_datawords(_zy_simnet_cddip0_out_ia_status_485_w$) ,
  .stat_addr(_zy_simnet_cddip0_out_ia_status_486_w$) ,
  .capability_lst(_zy_simnet_cddip0_out_ia_capability_487_w$) ,
  .capability_type(_zy_simnet_cddip0_out_ia_capability_488_w$) ,
  .rd_dat(_zy_simnet_cddip0_out_ia_rdata_489_w$) ,
  .bimc_odat(_zy_simnet_cddip1_ism_idat_490_w$) ,
  .bimc_osync(_zy_simnet_cddip1_ism_isync_491_w$) ,
  .ro_uncorrectable_ecc_error(_zy_simnet_cddip0_ism_mbe_492_w$) ,
  .im_rdy(_zy_simnet_cddip0_im_rdy_493_w$) ,
  .im_available(_zy_simnet_im_available_kme_cddip0_494_w$) ,
  .im_status(_zy_simnet_cddip0_out_im_status_495_w$) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .reg_addr(_zy_simnet_reg_addr_496_w$) ,
  .cmnd_op(_zy_simnet_cddip0_out_ia_config_497_w$) ,
  .cmnd_addr(_zy_simnet_cddip0_out_ia_config_498_w$) ,
  .wr_stb(_zy_simnet_wr_stb_499_w$) ,
  .wr_dat(_zy_simnet_cddip0_out_ia_wdata_500_w$) ,
  .ovstb(ovstb) ,
  .lvm(lvm) ,
  .mlvm(mlvm) ,
  .mrdten(_zy_simnet_cio_501) ,
  .bimc_rst_n(bimc_rst_n) ,
  .bimc_isync(_zy_simnet_cddip0_ism_isync_502_w$) ,
  .bimc_idat(_zy_simnet_cddip0_ism_idat_503_w$) ,
  .im_din(_zy_simnet_cddip0_im_din_504_w$) ,
  .im_vld(_zy_simnet_cddip0_im_vld_505_w$) ,
  .im_consumed(_zy_simnet_im_consumed_kme_cddip0_506_w$) ,
  .im_config(_zy_simnet_cddip0_out_im_config_507_w$) ); 
nx_interface_monitor_xcm99 u_nx_interface_monitor_cddip1(
  .stat_code(_zy_simnet_cddip1_out_ia_status_508_w$) ,
  .stat_datawords(_zy_simnet_cddip1_out_ia_status_509_w$) ,
  .stat_addr(_zy_simnet_cddip1_out_ia_status_510_w$) ,
  .capability_lst(_zy_simnet_cddip1_out_ia_capability_511_w$) ,
  .capability_type(_zy_simnet_cddip1_out_ia_capability_512_w$) ,
  .rd_dat(_zy_simnet_cddip1_out_ia_rdata_513_w$) ,
  .bimc_odat(_zy_simnet_cddip2_ism_idat_514_w$) ,
  .bimc_osync(_zy_simnet_cddip2_ism_isync_515_w$) ,
  .ro_uncorrectable_ecc_error(_zy_simnet_cddip1_ism_mbe_516_w$) ,
  .im_rdy(_zy_simnet_cddip1_im_rdy_517_w$) ,
  .im_available(_zy_simnet_im_available_kme_cddip1_518_w$) ,
  .im_status(_zy_simnet_cddip1_out_im_status_519_w$) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .reg_addr(_zy_simnet_reg_addr_520_w$) ,
  .cmnd_op(_zy_simnet_cddip1_out_ia_config_521_w$) ,
  .cmnd_addr(_zy_simnet_cddip1_out_ia_config_522_w$) ,
  .wr_stb(_zy_simnet_wr_stb_523_w$) ,
  .wr_dat(_zy_simnet_cddip1_out_ia_wdata_524_w$) ,
  .ovstb(ovstb) ,
  .lvm(lvm) ,
  .mlvm(mlvm) ,
  .mrdten(_zy_simnet_cio_525) ,
  .bimc_rst_n(bimc_rst_n) ,
  .bimc_isync(_zy_simnet_cddip1_ism_isync_526_w$) ,
  .bimc_idat(_zy_simnet_cddip1_ism_idat_527_w$) ,
  .im_din(_zy_simnet_cddip1_im_din_528_w$) ,
  .im_vld(_zy_simnet_cddip1_im_vld_529_w$) ,
  .im_consumed(_zy_simnet_im_consumed_kme_cddip1_530_w$) ,
  .im_config(_zy_simnet_cddip1_out_im_config_531_w$) ); 
nx_interface_monitor_xcm98 u_nx_interface_monitor_cddip2(
  .stat_code(_zy_simnet_cddip2_out_ia_status_532_w$) ,
  .stat_datawords(_zy_simnet_cddip2_out_ia_status_533_w$) ,
  .stat_addr(_zy_simnet_cddip2_out_ia_status_534_w$) ,
  .capability_lst(_zy_simnet_cddip2_out_ia_capability_535_w$) ,
  .capability_type(_zy_simnet_cddip2_out_ia_capability_536_w$) ,
  .rd_dat(_zy_simnet_cddip2_out_ia_rdata_537_w$) ,
  .bimc_odat(_zy_simnet_cddip3_ism_idat_538_w$) ,
  .bimc_osync(_zy_simnet_cddip3_ism_isync_539_w$) ,
  .ro_uncorrectable_ecc_error(_zy_simnet_cddip2_ism_mbe_540_w$) ,
  .im_rdy(_zy_simnet_cddip2_im_rdy_541_w$) ,
  .im_available(_zy_simnet_im_available_kme_cddip2_542_w$) ,
  .im_status(_zy_simnet_cddip2_out_im_status_543_w$) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .reg_addr(_zy_simnet_reg_addr_544_w$) ,
  .cmnd_op(_zy_simnet_cddip2_out_ia_config_545_w$) ,
  .cmnd_addr(_zy_simnet_cddip2_out_ia_config_546_w$) ,
  .wr_stb(_zy_simnet_wr_stb_547_w$) ,
  .wr_dat(_zy_simnet_cddip2_out_ia_wdata_548_w$) ,
  .ovstb(ovstb) ,
  .lvm(lvm) ,
  .mlvm(mlvm) ,
  .mrdten(_zy_simnet_cio_549) ,
  .bimc_rst_n(bimc_rst_n) ,
  .bimc_isync(_zy_simnet_cddip2_ism_isync_550_w$) ,
  .bimc_idat(_zy_simnet_cddip2_ism_idat_551_w$) ,
  .im_din(_zy_simnet_cddip2_im_din_552_w$) ,
  .im_vld(_zy_simnet_cddip2_im_vld_553_w$) ,
  .im_consumed(_zy_simnet_im_consumed_kme_cddip2_554_w$) ,
  .im_config(_zy_simnet_cddip2_out_im_config_555_w$) ); 
nx_interface_monitor_xcm97 u_nx_interface_monitor_cddip3(
  .stat_code(_zy_simnet_cddip3_out_ia_status_556_w$) ,
  .stat_datawords(_zy_simnet_cddip3_out_ia_status_557_w$) ,
  .stat_addr(_zy_simnet_cddip3_out_ia_status_558_w$) ,
  .capability_lst(_zy_simnet_cddip3_out_ia_capability_559_w$) ,
  .capability_type(_zy_simnet_cddip3_out_ia_capability_560_w$) ,
  .rd_dat(_zy_simnet_cddip3_out_ia_rdata_561_w$) ,
  .bimc_odat(_zy_simnet_cddip3_ism_odat_562_w$) ,
  .bimc_osync(_zy_simnet_cddip3_ism_osync_563_w$) ,
  .ro_uncorrectable_ecc_error(_zy_simnet_cddip3_ism_mbe_564_w$) ,
  .im_rdy(_zy_simnet_cddip3_im_rdy_565_w$) ,
  .im_available(_zy_simnet_im_available_kme_cddip3_566_w$) ,
  .im_status(_zy_simnet_cddip3_out_im_status_567_w$) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .reg_addr(_zy_simnet_reg_addr_568_w$) ,
  .cmnd_op(_zy_simnet_cddip3_out_ia_config_569_w$) ,
  .cmnd_addr(_zy_simnet_cddip3_out_ia_config_570_w$) ,
  .wr_stb(_zy_simnet_wr_stb_571_w$) ,
  .wr_dat(_zy_simnet_cddip3_out_ia_wdata_572_w$) ,
  .ovstb(ovstb) ,
  .lvm(lvm) ,
  .mlvm(mlvm) ,
  .mrdten(_zy_simnet_cio_573) ,
  .bimc_rst_n(bimc_rst_n) ,
  .bimc_isync(_zy_simnet_cddip3_ism_isync_574_w$) ,
  .bimc_idat(_zy_simnet_cddip3_ism_idat_575_w$) ,
  .im_din(_zy_simnet_cddip3_im_din_576_w$) ,
  .im_vld(_zy_simnet_cddip3_im_vld_577_w$) ,
  .im_consumed(_zy_simnet_im_consumed_kme_cddip3_578_w$) ,
  .im_config(_zy_simnet_cddip3_out_im_config_579_w$) ); 
cr_kme_regfile_glue regfile_glue(
  .ckv_cmnd_op(_zy_simnet_ckv_cmnd_op_580_w$) ,
  .ckv_cmnd_addr(_zy_simnet_ckv_cmnd_addr_581_w$) ,
  .ckv_wr_dat(_zy_simnet_ckv_wr_dat_582_w$) ,
  .ckv_ia_capability(_zy_simnet_ckv_ia_capability_583_w$) ,
  .ckv_ia_rdata_part0(_zy_simnet_ckv_ia_rdata_part0_584_w$) ,
  .ckv_ia_rdata_part1(_zy_simnet_ckv_ia_rdata_part1_585_w$) ,
  .ckv_ia_status(_zy_simnet_ckv_ia_status_586_w$) ,
  .kim_cmnd_op(_zy_simnet_kim_cmnd_op_587_w$) ,
  .kim_cmnd_addr(_zy_simnet_kim_cmnd_addr_588_w$) ,
  .kim_wr_dat(_zy_simnet_kim_wr_dat_589_w$) ,
  .kim_ia_capability(_zy_simnet_kim_ia_capability_590_w$) ,
  .kim_ia_rdata_part0(_zy_simnet_kim_ia_rdata_part0_591_w$) ,
  .kim_ia_rdata_part1(_zy_simnet_kim_ia_rdata_part1_592_w$) ,
  .kim_ia_status(_zy_simnet_kim_ia_status_593_w$) ,
  .engine_sticky_status(_zy_simnet_engine_sticky_status_594_w$) ,
  .disable_ckv_kim_ism_reads(_zy_simnet_disable_ckv_kim_ism_reads_595_w$) ,
  .send_kme_ib_beat(_zy_simnet_send_kme_ib_beat_596_w$) ,
  .debug_kme_ib_tvalid(debug_kme_ib_tvalid) ,
  .debug_kme_ib_tlast(debug_kme_ib_tlast) ,
  .debug_kme_ib_tid(debug_kme_ib_tid) ,
  .debug_kme_ib_tstrb(debug_kme_ib_tstrb) ,
  .debug_kme_ib_tuser(debug_kme_ib_tuser) ,
  .debug_kme_ib_tdata(debug_kme_ib_tdata) ,
  .kme_cceip0_ob_out(_zy_simnet_kme_cceip0_ob_out_597_w$) ,
  .kme_cceip1_ob_out(_zy_simnet_kme_cceip1_ob_out_598_w$) ,
  .kme_cceip2_ob_out(_zy_simnet_kme_cceip2_ob_out_599_w$) ,
  .kme_cceip3_ob_out(_zy_simnet_kme_cceip3_ob_out_600_w$) ,
  .kme_cddip0_ob_out(_zy_simnet_kme_cddip0_ob_out_601_w$) ,
  .kme_cddip1_ob_out(_zy_simnet_kme_cddip1_ob_out_602_w$) ,
  .kme_cddip2_ob_out(_zy_simnet_kme_cddip2_ob_out_603_w$) ,
  .kme_cddip3_ob_out(_zy_simnet_kme_cddip3_ob_out_604_w$) ,
  .cceip_encrypt_bimc_isync(cceip_encrypt_bimc_isync) ,
  .cceip_encrypt_bimc_idat(cceip_encrypt_bimc_idat) ,
  .cceip_validate_bimc_isync(cceip_validate_bimc_isync) ,
  .cceip_validate_bimc_idat(cceip_validate_bimc_idat) ,
  .cddip_decrypt_bimc_isync(cddip_decrypt_bimc_isync) ,
  .cddip_decrypt_bimc_idat(cddip_decrypt_bimc_idat) ,
  .axi_bimc_isync(axi_bimc_isync) ,
  .axi_bimc_idat(axi_bimc_idat) ,
  .axi_term_bimc_isync(_zy_simnet_axi_term_bimc_isync_605_w$) ,
  .axi_term_bimc_idat(_zy_simnet_axi_term_bimc_idat_606_w$) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .ckv_stat_code(_zy_simnet_ckv_stat_code_607_w$) ,
  .ckv_stat_datawords(_zy_simnet_ckv_stat_datawords_608_w$) ,
  .ckv_stat_addr(_zy_simnet_ckv_stat_addr_609_w$) ,
  .ckv_capability_type(_zy_simnet_ckv_capability_type_610_w$) ,
  .ckv_capability_lst(_zy_simnet_ckv_capability_lst_611_w$) ,
  .ckv_rd_dat(_zy_simnet_ckv_rd_dat_612_w$) ,
  .o_ckv_ia_config(_zy_simnet_o_ckv_ia_config_613_w$) ,
  .o_ckv_ia_wdata_part0(_zy_simnet_o_ckv_ia_wdata_part0_614_w$) ,
  .o_ckv_ia_wdata_part1(_zy_simnet_o_ckv_ia_wdata_part1_615_w$) ,
  .kim_stat_code(_zy_simnet_kim_stat_code_616_w$) ,
  .kim_stat_datawords(_zy_simnet_kim_stat_datawords_617_w$) ,
  .kim_stat_addr(_zy_simnet_kim_stat_addr_618_w$) ,
  .kim_capability_type(_zy_simnet_kim_capability_type_619_w$) ,
  .kim_capability_lst(_zy_simnet_kim_capability_lst_620_w$) ,
  .kim_rd_dat(_zy_simnet_kim_rd_dat_621_w$) ,
  .o_kim_ia_config(_zy_simnet_o_kim_ia_config_622_w$) ,
  .o_kim_ia_wdata_part0(_zy_simnet_o_kim_ia_wdata_part0_623_w$) ,
  .o_kim_ia_wdata_part1(_zy_simnet_o_kim_ia_wdata_part1_624_w$) ,
  .set_rsm_is_backpressuring(set_rsm_is_backpressuring) ,
  .wr_stb(_zy_simnet_wr_stb_625_w$) ,
  .wr_data(_zy_simnet_wr_data_626_w$) ,
  .reg_addr(_zy_simnet_reg_addr_627_w$) ,
  .o_engine_sticky_status(_zy_simnet_o_engine_sticky_status_628_w$) ,
  .o_disable_ckv_kim_ism_reads(_zy_simnet_o_disable_ckv_kim_ism_reads_629_w$) ,
  .o_send_kme_ib_beat(_zy_simnet_o_send_kme_ib_beat_630_w$) ,
  .cceip0_out_ia_wdata(_zy_simnet_cceip0_out_ia_wdata_631_w$) ,
  .debug_kme_ib_tready(debug_kme_ib_tready) ,
  .tready_override(_zy_simnet_tready_override_632_w$) ,
  .kme_cceip0_ob_out_post(_zy_simnet_kme_cceip0_ob_out_post_633_w$) ,
  .kme_cceip1_ob_out_post(_zy_simnet_kme_cceip1_ob_out_post_634_w$) ,
  .kme_cceip2_ob_out_post(_zy_simnet_kme_cceip2_ob_out_post_635_w$) ,
  .kme_cceip3_ob_out_post(_zy_simnet_kme_cceip3_ob_out_post_636_w$) ,
  .kme_cddip0_ob_out_post(_zy_simnet_kme_cddip0_ob_out_post_637_w$) ,
  .kme_cddip1_ob_out_post(_zy_simnet_kme_cddip1_ob_out_post_638_w$) ,
  .kme_cddip2_ob_out_post(_zy_simnet_kme_cddip2_ob_out_post_639_w$) ,
  .kme_cddip3_ob_out_post(_zy_simnet_kme_cddip3_ob_out_post_640_w$) ,
  .cddip3_ism_osync(_zy_simnet_cddip3_ism_osync_641_w$) ,
  .cddip3_ism_odat(_zy_simnet_cddip3_ism_odat_642_w$) ,
  .cceip_encrypt_bimc_osync(cceip_encrypt_bimc_osync) ,
  .cceip_encrypt_bimc_odat(cceip_encrypt_bimc_odat) ,
  .cceip_validate_bimc_osync(cceip_validate_bimc_osync) ,
  .cceip_validate_bimc_odat(cceip_validate_bimc_odat) ,
  .cddip_decrypt_bimc_osync(cddip_decrypt_bimc_osync) ,
  .cddip_decrypt_bimc_odat(cddip_decrypt_bimc_odat) ,
  .axi_bimc_osync(axi_bimc_osync) ,
  .axi_bimc_odat(axi_bimc_odat) ); 
nx_ram_1rw_indirect_access_xcm123 ckv_indirect_access(
  .clk(clk) ,
  .rst_n(rst_n) ,
  .reg_addr(_zy_simnet_reg_addr_643_w$) ,
  .cmnd_op(_zy_simnet_ckv_cmnd_op_644_w$) ,
  .cmnd_addr(_zy_simnet_ckv_cmnd_addr_645_w$) ,
  .stat_code(_zy_simnet_ckv_stat_code_646_w$) ,
  .stat_datawords(_zy_simnet_ckv_stat_datawords_647_w$) ,
  .stat_addr(_zy_simnet_ckv_stat_addr_648_w$) ,
  .capability_lst(_zy_simnet_ckv_capability_lst_649_w$) ,
  .capability_type(_zy_simnet_ckv_capability_type_650_w$) ,
  .wr_stb(_zy_simnet_wr_stb_651_w$) ,
  .wr_dat(_zy_simnet_ckv_wr_dat_652_w$) ,
  .rd_dat(_zy_simnet_ckv_rd_dat_653_w$) ,
  .ovstb(ovstb) ,
  .lvm(lvm) ,
  .mlvm(mlvm) ,
  .mrdten(_zy_simnet_cio_654) ,
  .bimc_rst_n(bimc_rst_n) ,
  .bimc_isync(_zy_simnet_ckv_bimc_isync_655_w$) ,
  .bimc_idat(_zy_simnet_ckv_bimc_idat_656_w$) ,
  .bimc_odat(_zy_simnet_cceip0_ism_bimc_idat_657_w$) ,
  .bimc_osync(_zy_simnet_cceip0_ism_bimc_isync_658_w$) ,
  .ro_uncorrectable_ecc_error(ckv_mbe) ,
  .hw_add(ckv_addr) ,
  .hw_we(_zy_simnet_cio_659) ,
  .hw_bwe(_zy_simnet_cio_660) ,
  .hw_cs(ckv_rd) ,
  .hw_din(_zy_simnet_cio_661) ,
  .hw_dout(ckv_dout) ,
  .hw_yield(_zy_simnet_dio_662) ); 
nx_ram_1rw_indirect_access_xcm122 kim_indirect_access(
  .clk(clk) ,
  .rst_n(rst_n) ,
  .reg_addr(_zy_simnet_reg_addr_663_w$) ,
  .cmnd_op(_zy_simnet_kim_cmnd_op_664_w$) ,
  .cmnd_addr(_zy_simnet_kim_cmnd_addr_665_w$) ,
  .stat_code(_zy_simnet_kim_stat_code_666_w$) ,
  .stat_datawords(_zy_simnet_kim_stat_datawords_667_w$) ,
  .stat_addr(_zy_simnet_kim_stat_addr_668_w$) ,
  .capability_lst(_zy_simnet_kim_capability_lst_669_w$) ,
  .capability_type(_zy_simnet_kim_capability_type_670_w$) ,
  .wr_stb(_zy_simnet_wr_stb_671_w$) ,
  .wr_dat(_zy_simnet_kim_wr_dat_672_w$) ,
  .rd_dat(_zy_simnet_kim_rd_dat_673_w$) ,
  .ovstb(ovstb) ,
  .lvm(lvm) ,
  .mlvm(mlvm) ,
  .mrdten(_zy_simnet_cio_674) ,
  .bimc_rst_n(bimc_rst_n) ,
  .bimc_isync(_zy_simnet_kim_bimc_isync_675_w$) ,
  .bimc_idat(_zy_simnet_kim_bimc_idat_676_w$) ,
  .bimc_odat(_zy_simnet_ckv_bimc_idat_677_w$) ,
  .bimc_osync(_zy_simnet_ckv_bimc_isync_678_w$) ,
  .ro_uncorrectable_ecc_error(kim_mbe) ,
  .hw_add(kim_addr) ,
  .hw_we(_zy_simnet_cio_679) ,
  .hw_bwe(_zy_simnet_cio_680) ,
  .hw_cs(kim_rd) ,
  .hw_din(_zy_simnet_cio_681) ,
  .hw_dout(_zy_simnet_kim_dout_682_w$) ,
  .hw_yield(_zy_simnet_dio_683) ); 
cr_kme_drbg_reggen drbg_register_gen(
  .set_drbg_expired_int(_zy_simnet_set_drbg_expired_int_684_w$) ,
  .kdf_drbg_ctrl(_zy_simnet_kdf_drbg_ctrl_685_w$) ,
  .seed0_valid(seed0_valid) ,
  .seed0_internal_state_key(seed0_internal_state_key) ,
  .seed0_internal_state_value(seed0_internal_state_value) ,
  .seed0_reseed_interval(seed0_reseed_interval) ,
  .seed1_valid(seed1_valid) ,
  .seed1_internal_state_key(seed1_internal_state_key) ,
  .seed1_internal_state_value(seed1_internal_state_value) ,
  .seed1_reseed_interval(seed1_reseed_interval) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .wr_stb(_zy_simnet_wr_stb_686_w$) ,
  .wr_data(_zy_simnet_wr_data_687_w$) ,
  .reg_addr(_zy_simnet_reg_addr_688_w$) ,
  .o_kdf_drbg_ctrl(_zy_simnet_o_kdf_drbg_ctrl_689_w$) ,
  .o_kdf_drbg_seed_0_reseed_interval_0(_zy_simnet_o_kdf_drbg_seed_0_reseed_interval_0_690_w$) ,
  .o_kdf_drbg_seed_0_reseed_interval_1(_zy_simnet_o_kdf_drbg_seed_0_reseed_interval_1_691_w$) ,
  .o_kdf_drbg_seed_0_state_key_127_96(_zy_simnet_o_kdf_drbg_seed_0_state_key_127_96_692_w$) ,
  .o_kdf_drbg_seed_0_state_key_159_128(_zy_simnet_o_kdf_drbg_seed_0_state_key_159_128_693_w$) ,
  .o_kdf_drbg_seed_0_state_key_191_160(_zy_simnet_o_kdf_drbg_seed_0_state_key_191_160_694_w$) ,
  .o_kdf_drbg_seed_0_state_key_223_192(_zy_simnet_o_kdf_drbg_seed_0_state_key_223_192_695_w$) ,
  .o_kdf_drbg_seed_0_state_key_255_224(_zy_simnet_o_kdf_drbg_seed_0_state_key_255_224_696_w$) ,
  .o_kdf_drbg_seed_0_state_key_31_0(_zy_simnet_o_kdf_drbg_seed_0_state_key_31_0_697_w$) ,
  .o_kdf_drbg_seed_0_state_key_63_32(_zy_simnet_o_kdf_drbg_seed_0_state_key_63_32_698_w$) ,
  .o_kdf_drbg_seed_0_state_key_95_64(_zy_simnet_o_kdf_drbg_seed_0_state_key_95_64_699_w$) ,
  .o_kdf_drbg_seed_0_state_value_127_96(_zy_simnet_o_kdf_drbg_seed_0_state_value_127_96_700_w$) ,
  .o_kdf_drbg_seed_0_state_value_31_0(_zy_simnet_o_kdf_drbg_seed_0_state_value_31_0_701_w$) ,
  .o_kdf_drbg_seed_0_state_value_63_32(_zy_simnet_o_kdf_drbg_seed_0_state_value_63_32_702_w$) ,
  .o_kdf_drbg_seed_0_state_value_95_64(_zy_simnet_o_kdf_drbg_seed_0_state_value_95_64_703_w$) ,
  .o_kdf_drbg_seed_1_reseed_interval_0(_zy_simnet_o_kdf_drbg_seed_1_reseed_interval_0_704_w$) ,
  .o_kdf_drbg_seed_1_reseed_interval_1(_zy_simnet_o_kdf_drbg_seed_1_reseed_interval_1_705_w$) ,
  .o_kdf_drbg_seed_1_state_key_127_96(_zy_simnet_o_kdf_drbg_seed_1_state_key_127_96_706_w$) ,
  .o_kdf_drbg_seed_1_state_key_159_128(_zy_simnet_o_kdf_drbg_seed_1_state_key_159_128_707_w$) ,
  .o_kdf_drbg_seed_1_state_key_191_160(_zy_simnet_o_kdf_drbg_seed_1_state_key_191_160_708_w$) ,
  .o_kdf_drbg_seed_1_state_key_223_192(_zy_simnet_o_kdf_drbg_seed_1_state_key_223_192_709_w$) ,
  .o_kdf_drbg_seed_1_state_key_255_224(_zy_simnet_o_kdf_drbg_seed_1_state_key_255_224_710_w$) ,
  .o_kdf_drbg_seed_1_state_key_31_0(_zy_simnet_o_kdf_drbg_seed_1_state_key_31_0_711_w$) ,
  .o_kdf_drbg_seed_1_state_key_63_32(_zy_simnet_o_kdf_drbg_seed_1_state_key_63_32_712_w$) ,
  .o_kdf_drbg_seed_1_state_key_95_64(_zy_simnet_o_kdf_drbg_seed_1_state_key_95_64_713_w$) ,
  .o_kdf_drbg_seed_1_state_value_127_96(_zy_simnet_o_kdf_drbg_seed_1_state_value_127_96_714_w$) ,
  .o_kdf_drbg_seed_1_state_value_31_0(_zy_simnet_o_kdf_drbg_seed_1_state_value_31_0_715_w$) ,
  .o_kdf_drbg_seed_1_state_value_63_32(_zy_simnet_o_kdf_drbg_seed_1_state_value_63_32_716_w$) ,
  .o_kdf_drbg_seed_1_state_value_95_64(_zy_simnet_o_kdf_drbg_seed_1_state_value_95_64_717_w$) ,
  .seed0_invalidate(seed0_invalidate) ,
  .seed1_invalidate(seed1_invalidate) ); 
bimc_master bimc_master(
  .bimc_ecc_error(_zy_simnet_dio_718) ,
  .bimc_interrupt(_zy_simnet_bimc_interrupt_719_w$) ,
  .bimc_odat(_zy_simnet_kim_bimc_idat_720_w$) ,
  .bimc_osync(_zy_simnet_kim_bimc_isync_721_w$) ,
  .bimc_rst_n(bimc_rst_n) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .bimc_idat(_zy_simnet_axi_term_bimc_idat_722_w$) ,
  .bimc_isync(_zy_simnet_axi_term_bimc_isync_723_w$) ,
  .o_bimc_monitor_mask(_zy_simnet_o_bimc_monitor_mask_724_w$) ,
  .o_bimc_ecc_uncorrectable_error_cnt(_zy_simnet_o_bimc_ecc_uncorrectable_error_cnt_725_w$) ,
  .o_bimc_ecc_correctable_error_cnt(_zy_simnet_o_bimc_ecc_correctable_error_cnt_726_w$) ,
  .o_bimc_parity_error_cnt(_zy_simnet_o_bimc_parity_error_cnt_727_w$) ,
  .o_bimc_global_config(_zy_simnet_o_bimc_global_config_728_w$) ,
  .o_bimc_eccpar_debug(_zy_simnet_o_bimc_eccpar_debug_729_w$) ,
  .o_bimc_cmd2(_zy_simnet_o_bimc_cmd2_730_w$) ,
  .o_bimc_cmd1(_zy_simnet_o_bimc_cmd1_731_w$) ,
  .o_bimc_cmd0(_zy_simnet_o_bimc_cmd0_732_w$) ,
  .o_bimc_rxcmd2(_zy_simnet_o_bimc_rxcmd2_733_w$) ,
  .o_bimc_rxrsp2(_zy_simnet_o_bimc_rxrsp2_734_w$) ,
  .o_bimc_pollrsp2(_zy_simnet_o_bimc_pollrsp2_735_w$) ,
  .o_bimc_dbgcmd2(_zy_simnet_o_bimc_dbgcmd2_736_w$) ,
  .i_bimc_monitor(_zy_simnet_bimc_monitor_737_w$) ,
  .i_bimc_ecc_uncorrectable_error_cnt(_zy_simnet_bimc_ecc_uncorrectable_error_cnt_738_w$) ,
  .i_bimc_ecc_correctable_error_cnt(_zy_simnet_bimc_ecc_correctable_error_cnt_739_w$) ,
  .i_bimc_parity_error_cnt(_zy_simnet_bimc_parity_error_cnt_740_w$) ,
  .i_bimc_global_config(_zy_simnet_bimc_global_config_741_w$) ,
  .i_bimc_memid(_zy_simnet_bimc_memid_742_w$) ,
  .i_bimc_eccpar_debug(_zy_simnet_bimc_eccpar_debug_743_w$) ,
  .i_bimc_cmd2(_zy_simnet_bimc_cmd2_744_w$) ,
  .i_bimc_rxcmd2(_zy_simnet_bimc_rxcmd2_745_w$) ,
  .i_bimc_rxcmd1(_zy_simnet_bimc_rxcmd1_746_w$) ,
  .i_bimc_rxcmd0(_zy_simnet_bimc_rxcmd0_747_w$) ,
  .i_bimc_rxrsp2(_zy_simnet_bimc_rxrsp2_748_w$) ,
  .i_bimc_rxrsp1(_zy_simnet_bimc_rxrsp1_749_w$) ,
  .i_bimc_rxrsp0(_zy_simnet_bimc_rxrsp0_750_w$) ,
  .i_bimc_pollrsp2(_zy_simnet_bimc_pollrsp2_751_w$) ,
  .i_bimc_pollrsp1(_zy_simnet_bimc_pollrsp1_752_w$) ,
  .i_bimc_pollrsp0(_zy_simnet_bimc_pollrsp0_753_w$) ,
  .i_bimc_dbgcmd2(_zy_simnet_bimc_dbgcmd2_754_w$) ,
  .i_bimc_dbgcmd1(_zy_simnet_bimc_dbgcmd1_755_w$) ,
  .i_bimc_dbgcmd0(_zy_simnet_bimc_dbgcmd0_756_w$) ); 
cr_kme_int_handler int_handler(
  .kme_interrupt(kme_interrupt) ,
  .interrupt_status(_zy_simnet_interrupt_status_757_w$) ,
  .suppress_key_tlvs(suppress_key_tlvs) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .set_drbg_expired_int(_zy_simnet_set_drbg_expired_int_758_w$) ,
  .set_txc_bp_int(set_txc_bp_int) ,
  .set_gcm_tag_fail_int(set_gcm_tag_fail_int) ,
  .set_key_tlv_miscmp_int(set_key_tlv_miscmp_int) ,
  .set_tlv_bip2_error_int(set_tlv_bip2_error_int) ,
  .cceip0_ism_mbe(_zy_simnet_cceip0_ism_mbe_759_w$) ,
  .cceip1_ism_mbe(_zy_simnet_cceip1_ism_mbe_760_w$) ,
  .cceip2_ism_mbe(_zy_simnet_cceip2_ism_mbe_761_w$) ,
  .cceip3_ism_mbe(_zy_simnet_cceip3_ism_mbe_762_w$) ,
  .cddip0_ism_mbe(_zy_simnet_cddip0_ism_mbe_763_w$) ,
  .cddip1_ism_mbe(_zy_simnet_cddip1_ism_mbe_764_w$) ,
  .cddip2_ism_mbe(_zy_simnet_cddip2_ism_mbe_765_w$) ,
  .cddip3_ism_mbe(_zy_simnet_cddip3_ism_mbe_766_w$) ,
  .kim_mbe(kim_mbe) ,
  .ckv_mbe(ckv_mbe) ,
  .cceip_encrypt_mbe(cceip_encrypt_mbe) ,
  .cceip_validate_mbe(cceip_validate_mbe) ,
  .cddip_decrypt_mbe(cddip_decrypt_mbe) ,
  .axi_mbe(axi_mbe) ,
  .bimc_interrupt(_zy_simnet_bimc_interrupt_767_w$) ,
  .wr_stb(_zy_simnet_wr_stb_768_w$) ,
  .wr_data(_zy_simnet_wr_data_769_w$) ,
  .reg_addr(_zy_simnet_reg_addr_770_w$) ,
  .o_interrupt_mask(_zy_simnet_o_interrupt_mask_771_w$) ); 
nx_roreg_indirect_access_xcm130 u_SA_SNAPSHOT(
  .stat_code(_zy_simnet_sa_snapshot_ia_status_772_w$) ,
  .stat_datawords(_zy_simnet_sa_snapshot_ia_status_773_w$) ,
  .stat_addr(_zy_simnet_sa_snapshot_ia_status_774_w$) ,
  .capability_lst(_zy_simnet_sa_snapshot_ia_capability_775_w$) ,
  .capability_type(_zy_simnet_sa_snapshot_ia_capability_776_w$) ,
  .rd_dat(_zy_simnet_sa_snapshot_ia_rdata_777_w$) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .addr(_zy_simnet_reg_addr_778_w$) ,
  .cmnd_op(_zy_simnet_sa_snapshot_ia_config_779_w$) ,
  .cmnd_addr(_zy_simnet_sa_snapshot_ia_config_780_w$) ,
  .wr_stb(_zy_simnet_wr_stb_781_w$) ,
  .wr_dat(_zy_simnet_sa_snapshot_ia_wdata_782_w$) ,
  .mem_a(sa_snapshot) ); 
nx_roreg_indirect_access_xcm129 u_SA_COUNT(
  .stat_code(_zy_simnet_sa_count_ia_status_783_w$) ,
  .stat_datawords(_zy_simnet_sa_count_ia_status_784_w$) ,
  .stat_addr(_zy_simnet_sa_count_ia_status_785_w$) ,
  .capability_lst(_zy_simnet_sa_count_ia_capability_786_w$) ,
  .capability_type(_zy_simnet_sa_count_ia_capability_787_w$) ,
  .rd_dat(_zy_simnet_sa_count_ia_rdata_788_w$) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .addr(_zy_simnet_reg_addr_789_w$) ,
  .cmnd_op(_zy_simnet_sa_count_ia_config_790_w$) ,
  .cmnd_addr(_zy_simnet_sa_count_ia_config_791_w$) ,
  .wr_stb(_zy_simnet_wr_stb_792_w$) ,
  .wr_dat(_zy_simnet_sa_count_ia_wdata_793_w$) ,
  .mem_a(sa_count) ); 
nx_reg_indirect_access u_SA_CTRL(
  .stat_code(_zy_simnet_sa_ctrl_ia_status_794_w$) ,
  .stat_datawords(_zy_simnet_sa_ctrl_ia_status_795_w$) ,
  .stat_addr(_zy_simnet_sa_ctrl_ia_status_796_w$) ,
  .capability_lst(_zy_simnet_sa_ctrl_ia_capability_797_w$) ,
  .capability_type(_zy_simnet_sa_ctrl_ia_capability_798_w$) ,
  .rd_dat(_zy_simnet_sa_ctrl_ia_rdata_799_w$) ,
  .mem_a(sa_ctrl) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .addr(_zy_simnet_reg_addr_800_w$) ,
  .cmnd_op(_zy_simnet_sa_ctrl_ia_config_801_w$) ,
  .cmnd_addr(_zy_simnet_sa_ctrl_ia_config_802_w$) ,
  .wr_stb(_zy_simnet_wr_stb_803_w$) ,
  .wr_dat(_zy_simnet_sa_ctrl_ia_wdata_804_w$) ,
  .rst_dat(sa_ctrl_rst_dat) ); 
always_comb 
 begin
  cceip0_im_din.desc.eob = kme_cceip0_ob_out_pre.tuser[1];
  cceip0_im_din.desc.bytes_vld = kme_cceip0_ob_out_pre.tstrb;
  cceip0_im_din.desc.im_meta[22:15] = 8'b0;
  cceip0_im_din.desc.im_meta[14] = kme_cceip0_ob_out_pre.tid;
  cceip0_im_din.desc.im_meta[13:6] = kme_cceip0_ob_out_pre.tuser;
  cceip0_im_din.desc.im_meta[5:0] = 6'b0;
  cceip0_im_din.data = kme_cceip0_ob_out_pre.tdata;
  cceip1_im_din.desc.eob = kme_cceip1_ob_out_pre.tuser[1];
  cceip1_im_din.desc.bytes_vld = kme_cceip1_ob_out_pre.tstrb;
  cceip1_im_din.desc.im_meta[22:15] = 8'b0;
  cceip1_im_din.desc.im_meta[14] = kme_cceip1_ob_out_pre.tid;
  cceip1_im_din.desc.im_meta[13:6] = kme_cceip1_ob_out_pre.tuser;
  cceip1_im_din.desc.im_meta[5:0] = 6'b0;
  cceip1_im_din.data = kme_cceip1_ob_out_pre.tdata;
  cceip2_im_din.desc.eob = kme_cceip2_ob_out_pre.tuser[1];
  cceip2_im_din.desc.bytes_vld = kme_cceip2_ob_out_pre.tstrb;
  cceip2_im_din.desc.im_meta[22:15] = 8'b0;
  cceip2_im_din.desc.im_meta[14] = kme_cceip2_ob_out_pre.tid;
  cceip2_im_din.desc.im_meta[13:6] = kme_cceip2_ob_out_pre.tuser;
  cceip2_im_din.desc.im_meta[5:0] = 6'b0;
  cceip2_im_din.data = kme_cceip2_ob_out_pre.tdata;
  cceip3_im_din.desc.eob = kme_cceip3_ob_out_pre.tuser[1];
  cceip3_im_din.desc.bytes_vld = kme_cceip3_ob_out_pre.tstrb;
  cceip3_im_din.desc.im_meta[22:15] = 8'b0;
  cceip3_im_din.desc.im_meta[14] = kme_cceip3_ob_out_pre.tid;
  cceip3_im_din.desc.im_meta[13:6] = kme_cceip3_ob_out_pre.tuser;
  cceip3_im_din.desc.im_meta[5:0] = 6'b0;
  cceip3_im_din.data = kme_cceip3_ob_out_pre.tdata;
  cddip0_im_din.desc.eob = kme_cddip0_ob_out_pre.tuser[1];
  cddip0_im_din.desc.bytes_vld = kme_cddip0_ob_out_pre.tstrb;
  cddip0_im_din.desc.im_meta[22:15] = 8'b0;
  cddip0_im_din.desc.im_meta[14] = kme_cddip0_ob_out_pre.tid;
  cddip0_im_din.desc.im_meta[13:6] = kme_cddip0_ob_out_pre.tuser;
  cddip0_im_din.desc.im_meta[5:0] = 6'b0;
  cddip0_im_din.data = kme_cddip0_ob_out_pre.tdata;
  cddip1_im_din.desc.eob = kme_cddip1_ob_out_pre.tuser[1];
  cddip1_im_din.desc.bytes_vld = kme_cddip1_ob_out_pre.tstrb;
  cddip1_im_din.desc.im_meta[22:15] = 8'b0;
  cddip1_im_din.desc.im_meta[14] = kme_cddip1_ob_out_pre.tid;
  cddip1_im_din.desc.im_meta[13:6] = kme_cddip1_ob_out_pre.tuser;
  cddip1_im_din.desc.im_meta[5:0] = 6'b0;
  cddip1_im_din.data = kme_cddip1_ob_out_pre.tdata;
  cddip2_im_din.desc.eob = kme_cddip2_ob_out_pre.tuser[1];
  cddip2_im_din.desc.bytes_vld = kme_cddip2_ob_out_pre.tstrb;
  cddip2_im_din.desc.im_meta[22:15] = 8'b0;
  cddip2_im_din.desc.im_meta[14] = kme_cddip2_ob_out_pre.tid;
  cddip2_im_din.desc.im_meta[13:6] = kme_cddip2_ob_out_pre.tuser;
  cddip2_im_din.desc.im_meta[5:0] = 6'b0;
  cddip2_im_din.data = kme_cddip2_ob_out_pre.tdata;
  cddip3_im_din.desc.eob = kme_cddip3_ob_out_pre.tuser[1];
  cddip3_im_din.desc.bytes_vld = kme_cddip3_ob_out_pre.tstrb;
  cddip3_im_din.desc.im_meta[22:15] = 8'b0;
  cddip3_im_din.desc.im_meta[14] = kme_cddip3_ob_out_pre.tid;
  cddip3_im_din.desc.im_meta[13:6] = kme_cddip3_ob_out_pre.tuser;
  cddip3_im_din.desc.im_meta[5:0] = 6'b0;
  cddip3_im_din.data = kme_cddip3_ob_out_pre.tdata;
 end
always_comb 
 blkid_revid_config = {16'b1100111100000000,8'b0,revid_wire};
always_comb 
 begin:unmblk0
  integer ii;
  for (ii = 0;(ii < 32); ii = (ii + 1))
   begin
    sa_ctrl_rst_dat[ii] = 32'b0;
   end
 end
always_comb 
 begin
  im_available[0] = im_available_kme_cceip0.bank_lo;
  im_available[8] = im_available_kme_cddip0.bank_lo;
  im_available[2] = im_available_kme_cceip1.bank_lo;
  im_available[10] = im_available_kme_cddip1.bank_lo;
  im_available[4] = im_available_kme_cceip2.bank_lo;
  im_available[12] = im_available_kme_cddip2.bank_lo;
  im_available[6] = im_available_kme_cceip3.bank_lo;
  im_available[14] = im_available_kme_cddip3.bank_lo;
  im_available[1] = im_available_kme_cceip0.bank_hi;
  im_available[9] = im_available_kme_cddip0.bank_hi;
  im_available[3] = im_available_kme_cceip1.bank_hi;
  im_available[11] = im_available_kme_cddip1.bank_hi;
  im_available[5] = im_available_kme_cceip2.bank_hi;
  im_available[13] = im_available_kme_cddip2.bank_hi;
  im_available[7] = im_available_kme_cceip3.bank_hi;
  im_available[15] = im_available_kme_cddip3.bank_hi;
 end
always_ff 
 @(posedge clk or negedge rst_n)
  begin
   if (( !rst_n ))
    begin
     im_consumed_kme_cceip0.bank_hi <= 1'b0;
     im_consumed_kme_cceip0.bank_lo <= 1'b0;
     im_consumed_kme_cceip1.bank_hi <= 1'b0;
     im_consumed_kme_cceip1.bank_lo <= 1'b0;
     im_consumed_kme_cceip2.bank_hi <= 1'b0;
     im_consumed_kme_cceip2.bank_lo <= 1'b0;
     im_consumed_kme_cceip3.bank_hi <= 1'b0;
     im_consumed_kme_cceip3.bank_lo <= 1'b0;
     im_consumed_kme_cddip0.bank_hi <= 1'b0;
     im_consumed_kme_cddip0.bank_lo <= 1'b0;
     im_consumed_kme_cddip1.bank_hi <= 1'b0;
     im_consumed_kme_cddip1.bank_lo <= 1'b0;
     im_consumed_kme_cddip2.bank_hi <= 1'b0;
     im_consumed_kme_cddip2.bank_lo <= 1'b0;
     im_consumed_kme_cddip3.bank_hi <= 1'b0;
     im_consumed_kme_cddip3.bank_lo <= 1'b0;
    end
   else
    begin
     im_consumed_kme_cceip0.bank_lo <= 1'b0;
     im_consumed_kme_cddip0.bank_lo <= 1'b0;
     im_consumed_kme_cceip1.bank_lo <= 1'b0;
     im_consumed_kme_cddip1.bank_lo <= 1'b0;
     im_consumed_kme_cceip2.bank_lo <= 1'b0;
     im_consumed_kme_cddip2.bank_lo <= 1'b0;
     im_consumed_kme_cceip3.bank_lo <= 1'b0;
     im_consumed_kme_cddip3.bank_lo <= 1'b0;
     im_consumed_kme_cceip0.bank_hi <= 1'b0;
     im_consumed_kme_cddip0.bank_hi <= 1'b0;
     im_consumed_kme_cceip1.bank_hi <= 1'b0;
     im_consumed_kme_cddip1.bank_hi <= 1'b0;
     im_consumed_kme_cceip2.bank_hi <= 1'b0;
     im_consumed_kme_cddip2.bank_hi <= 1'b0;
     im_consumed_kme_cceip3.bank_hi <= 1'b0;
     im_consumed_kme_cddip3.bank_hi <= 1'b0;
     if ((wr_stb && (reg_addr == 11'b01111110000)))
      begin
       if (wr_data[0])
        im_consumed_kme_cceip0.bank_lo <= 1'b1;
       if (wr_data[2])
        im_consumed_kme_cceip1.bank_lo <= 1'b1;
       if (wr_data[4])
        im_consumed_kme_cceip2.bank_lo <= 1'b1;
       if (wr_data[6])
        im_consumed_kme_cceip3.bank_lo <= 1'b1;
       if (wr_data[1])
        im_consumed_kme_cceip0.bank_hi <= 1'b1;
       if (wr_data[3])
        im_consumed_kme_cceip1.bank_hi <= 1'b1;
       if (wr_data[5])
        im_consumed_kme_cceip2.bank_hi <= 1'b1;
       if (wr_data[7])
        im_consumed_kme_cceip3.bank_hi <= 1'b1;
       if (wr_data[8])
        im_consumed_kme_cddip0.bank_lo <= 1'b1;
       if (wr_data[10])
        im_consumed_kme_cddip1.bank_lo <= 1'b1;
       if (wr_data[12])
        im_consumed_kme_cddip2.bank_lo <= 1'b1;
       if (wr_data[14])
        im_consumed_kme_cddip3.bank_lo <= 1'b1;
       if (wr_data[9])
        im_consumed_kme_cddip0.bank_hi <= 1'b1;
       if (wr_data[11])
        im_consumed_kme_cddip1.bank_hi <= 1'b1;
       if (wr_data[13])
        im_consumed_kme_cddip2.bank_hi <= 1'b1;
       if (wr_data[15])
        im_consumed_kme_cddip3.bank_hi <= 1'b1;
      end
    end
  end
endmodule

