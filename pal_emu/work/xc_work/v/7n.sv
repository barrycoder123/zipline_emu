// xc_work/v/7n.sv
// /home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_core.v:21
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
module cr_kme_core(kme_ib_out,kme_cceip0_ob_out,kme_cceip1_ob_out,kme_cceip2_ob_out,kme_cceip3_ob_out,kme_cddip0_ob_out,kme_cddip1_ob_out,kme_cddip2_ob_out,kme_cddip3_ob_out,ckv_rd,
ckv_addr,kim_rd,kim_addr,cceip_encrypt_bimc_osync,cceip_encrypt_bimc_odat,cceip_encrypt_mbe,cceip_validate_bimc_osync,cceip_validate_bimc_odat,cceip_validate_mbe,cddip_decrypt_bimc_osync,cddip_decrypt_bimc_odat,cddip_decrypt_mbe,
axi_bimc_osync,axi_bimc_odat,axi_mbe,seed0_invalidate,seed1_invalidate,set_txc_bp_int,set_gcm_tag_fail_int,set_key_tlv_miscmp_int,set_tlv_bip2_error_int,set_rsm_is_backpressuring,idle_components,sa_snapshot,
sa_count,kme_idle,clk,rst_n,scan_en,scan_mode,scan_rst_n,disable_debug_cmd,disable_unencrypted_keys,suppress_key_tlvs,always_validate_kim_ref,kme_ib_in,
kme_cceip0_ob_in,kme_cceip1_ob_in,kme_cceip2_ob_in,kme_cceip3_ob_in,kme_cddip0_ob_in,kme_cddip1_ob_in,kme_cddip2_ob_in,kme_cddip3_ob_in,ckv_dout,ckv_mbe,kim_dout,kim_mbe,
bimc_rst_n,cceip_encrypt_bimc_isync,cceip_encrypt_bimc_idat,cceip_validate_bimc_isync,cceip_validate_bimc_idat,cddip_decrypt_bimc_isync,cddip_decrypt_bimc_idat,axi_bimc_isync,axi_bimc_idat,labels,seed0_valid,seed0_internal_state_key,
seed0_internal_state_value,seed0_reseed_interval,seed1_valid,seed1_internal_state_key,seed1_internal_state_value,seed1_reseed_interval,tready_override,cceip_encrypt_kop_fifo_override,cceip_validate_kop_fifo_override,cddip_decrypt_kop_fifo_override,kdf_test_key_size,kdf_test_mode_en,
sa_global_ctrl,sa_ctrl);
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
parameter KME_STUB = 0;
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
import cr_kmePKG::* ;
import cr_kme_regfilePKG::* ;
localparam CKV_NUM_ENTRIES = 32768;
localparam CKV_DATA_WIDTH = 64;
localparam KIM_NUM_ENTRIES = 16384;
localparam KIM_DATA_WIDTH = 38;
input  clk;
input  rst_n;
input  scan_en;
input  scan_mode;
input  scan_rst_n;
input  disable_debug_cmd;
input  disable_unencrypted_keys;
input  suppress_key_tlvs;
input  always_validate_kim_ref;
input axi4s_dp_bus_t kme_ib_in;
output axi4s_dp_rdy_t kme_ib_out;
input axi4s_dp_rdy_t kme_cceip0_ob_in;
output axi4s_dp_bus_t kme_cceip0_ob_out;
input axi4s_dp_rdy_t kme_cceip1_ob_in;
output axi4s_dp_bus_t kme_cceip1_ob_out;
input axi4s_dp_rdy_t kme_cceip2_ob_in;
output axi4s_dp_bus_t kme_cceip2_ob_out;
input axi4s_dp_rdy_t kme_cceip3_ob_in;
output axi4s_dp_bus_t kme_cceip3_ob_out;
input axi4s_dp_rdy_t kme_cddip0_ob_in;
output axi4s_dp_bus_t kme_cddip0_ob_out;
input axi4s_dp_rdy_t kme_cddip1_ob_in;
output axi4s_dp_bus_t kme_cddip1_ob_out;
input axi4s_dp_rdy_t kme_cddip2_ob_in;
output axi4s_dp_bus_t kme_cddip2_ob_out;
input axi4s_dp_rdy_t kme_cddip3_ob_in;
output axi4s_dp_bus_t kme_cddip3_ob_out;
output  ckv_rd;
output  [14:0] ckv_addr ;
input  [63:0] ckv_dout ;
input  ckv_mbe;
output  kim_rd;
output  [13:0] kim_addr ;
input kim_entry_t kim_dout;
input  kim_mbe;
input  bimc_rst_n;
output  cceip_encrypt_bimc_osync;
output  cceip_encrypt_bimc_odat;
input  cceip_encrypt_bimc_isync;
input  cceip_encrypt_bimc_idat;
output  cceip_encrypt_mbe;
output  cceip_validate_bimc_osync;
output  cceip_validate_bimc_odat;
input  cceip_validate_bimc_isync;
input  cceip_validate_bimc_idat;
output  cceip_validate_mbe;
output  cddip_decrypt_bimc_osync;
output  cddip_decrypt_bimc_odat;
input  cddip_decrypt_bimc_isync;
input  cddip_decrypt_bimc_idat;
output  cddip_decrypt_mbe;
output  axi_bimc_osync;
output  axi_bimc_odat;
input  axi_bimc_isync;
input  axi_bimc_idat;
output  axi_mbe;
input label_t [7:0] labels ;
input  seed0_valid;
input  [255:0] seed0_internal_state_key ;
input  [127:0] seed0_internal_state_value ;
input  [47:0] seed0_reseed_interval ;
input  seed1_valid;
input  [255:0] seed1_internal_state_key ;
input  [127:0] seed1_internal_state_value ;
input  [47:0] seed1_reseed_interval ;
output  seed0_invalidate;
output  seed1_invalidate;
output  set_txc_bp_int;
output  set_gcm_tag_fail_int;
output  set_key_tlv_miscmp_int;
output  set_tlv_bip2_error_int;
output  [7:0] set_rsm_is_backpressuring ;
input cr_kme_regfilePKG::tready_override_t tready_override;
input cr_kme_regfilePKG::kop_fifo_override_t cceip_encrypt_kop_fifo_override, cceip_validate_kop_fifo_override, cddip_decrypt_kop_fifo_override;
output cr_kme_regfilePKG::idle_t idle_components;
input  [31:0] kdf_test_key_size ;
input  kdf_test_mode_en;
input cr_kme_regfilePKG::sa_global_ctrl_t sa_global_ctrl;
input cr_kme_regfilePKG::sa_ctrl_t sa_ctrl [31:0];
output cr_kme_regfilePKG::sa_snapshot_t sa_snapshot [31:0];
output cr_kme_regfilePKG::sa_count_t sa_count [31:0];
output  kme_idle;
wire  _zy_simnet_kme_ib_out_0_w$;
wire  [0:82] _zy_simnet_kme_cceip0_ob_out_1_w$ ;
wire  [0:82] _zy_simnet_kme_cceip1_ob_out_2_w$ ;
wire  [0:82] _zy_simnet_kme_cceip2_ob_out_3_w$ ;
wire  [0:82] _zy_simnet_kme_cceip3_ob_out_4_w$ ;
wire  [0:82] _zy_simnet_kme_cddip0_ob_out_5_w$ ;
wire  [0:82] _zy_simnet_kme_cddip1_ob_out_6_w$ ;
wire  [0:82] _zy_simnet_kme_cddip2_ob_out_7_w$ ;
wire  [0:82] _zy_simnet_kme_cddip3_ob_out_8_w$ ;
wire  [0:31] _zy_simnet_idle_components_9_w$ ;
assign  _zy_simnet_kme_ib_out_0_w$ = kme_ib_out;
assign  _zy_simnet_kme_cceip0_ob_out_1_w$ = kme_cceip0_ob_out;
assign  _zy_simnet_kme_cceip1_ob_out_2_w$ = kme_cceip1_ob_out;
assign  _zy_simnet_kme_cceip2_ob_out_3_w$ = kme_cceip2_ob_out;
assign  _zy_simnet_kme_cceip3_ob_out_4_w$ = kme_cceip3_ob_out;
assign  _zy_simnet_kme_cddip0_ob_out_5_w$ = kme_cddip0_ob_out;
assign  _zy_simnet_kme_cddip1_ob_out_6_w$ = kme_cddip1_ob_out;
assign  _zy_simnet_kme_cddip2_ob_out_7_w$ = kme_cddip2_ob_out;
assign  _zy_simnet_kme_cddip3_ob_out_8_w$ = kme_cddip3_ob_out;
assign  _zy_simnet_idle_components_9_w$ = idle_components;

function  [63:0] endian_switch;
 input reg [63:0] data ;
 endian_switch = {data[32'sd7:32'sd0],data[32'sd15:32'sd8],data[32'sd23:32'sd16],data[32'sd31:32'sd24],data[32'sd39:32'sd32],data[32'sd47:32'sd40],data[32'sd55:32'sd48],data[32'sd63:32'sd56]};
endfunction


function  [3:0] strb_to_bytes;
 input reg [7:0] strb ;
 case (strb)
  8'b01:
   strb_to_bytes = 4'b01;
  8'b011:
   strb_to_bytes = 4'b010;
  8'b0111:
   strb_to_bytes = 4'b011;
  8'b01111:
   strb_to_bytes = 4'b0100;
  8'b011111:
   strb_to_bytes = 4'b0101;
  8'b0111111:
   strb_to_bytes = 4'b0110;
  8'b01111111:
   strb_to_bytes = 4'b0111;
  8'b11111111:
   strb_to_bytes = 4'b1000;
  default:
   strb_to_bytes = 4'b0;
 endcase
endfunction


function  [7:0] bytes_to_strb;
 input reg [3:0] bytes ;
 case (bytes)
  4'b01:
   bytes_to_strb = 8'b01;
  4'b010:
   bytes_to_strb = 8'b011;
  4'b011:
   bytes_to_strb = 8'b0111;
  4'b0100:
   bytes_to_strb = 8'b01111;
  4'b0101:
   bytes_to_strb = 8'b011111;
  4'b0110:
   bytes_to_strb = 8'b0111111;
  4'b0111:
   bytes_to_strb = 8'b01111111;
  4'b1000:
   bytes_to_strb = 8'b11111111;
  default:
   bytes_to_strb = 8'b0;
 endcase
endfunction


function  [6:0] strb_to_bits;
 input reg [7:0] strb ;
 case (strb)
  8'b01:
   strb_to_bits = 7'b01000;
  8'b011:
   strb_to_bits = 7'b010000;
  8'b0111:
   strb_to_bits = 7'b011000;
  8'b01111:
   strb_to_bits = 7'b0100000;
  8'b011111:
   strb_to_bits = 7'b0101000;
  8'b0111111:
   strb_to_bits = 7'b0110000;
  8'b01111111:
   strb_to_bits = 7'b0111000;
  8'b11111111:
   strb_to_bits = 7'b1000000;
  default:
   strb_to_bits = 7'b0;
 endcase
endfunction

if(1) begin: kme_is_core
 wire  cceip_encrypt_gcm_tag_fail_int;
 kme_internal_t cceip_encrypt_in;
 wire  cceip_encrypt_in_stall;
 wire  cceip_encrypt_in_valid;
 wire  cceip_encrypt_ob_afull;
 wire  cceip_encrypt_ob_full;
 tlvp_if_bus_t cceip_encrypt_ob_tlv;
 wire  cceip_encrypt_ob_wr;
 wire  [70:0] cceip_encrypt_out ;
 wire  cceip_encrypt_out_ack;
 wire  cceip_encrypt_out_valid;
 wire  [3:0] cceip_key_tlv_rsm_end_pulse ;
 wire  [3:0] cceip_key_tlv_rsm_idle ;
 wire  [3:0] cceip_ob_afull ;
 wire  [3:0] cceip_ob_full ;
 tlvp_if_bus_t [3:0] cceip_ob_tlv ;
 wire  [3:0] cceip_ob_wr ;
 wire  cceip_validate_gcm_tag_fail_int;
 kme_internal_t cceip_validate_in;
 wire  cceip_validate_in_stall;
 wire  cceip_validate_in_valid;
 wire  cceip_validate_ob_afull;
 wire  cceip_validate_ob_full;
 tlvp_if_bus_t cceip_validate_ob_tlv;
 wire  cceip_validate_ob_wr;
 wire  [70:0] cceip_validate_out ;
 wire  cceip_validate_out_ack;
 wire  cceip_validate_out_valid;
 wire  cddip_decrypt_gcm_tag_fail_int;
 kme_internal_t cddip_decrypt_in;
 wire  cddip_decrypt_in_stall;
 wire  cddip_decrypt_in_valid;
 wire  [3:0] cddip_key_tlv_rsm_end_pulse ;
 wire  [3:0] cddip_key_tlv_rsm_idle ;
 wire  [3:0] cddip_ob_afull ;
 axi4s_dp_rdy_t core_kme_ib_out;
 wire  disable_debug_cmd_q;
 wire  [127:0] drng_256_out ;
 wire  drng_ack;
 wire  drng_health_fail;
 wire  drng_idle;
 wire  drng_seed_expired;
 wire  drng_valid;
 wire  kme_slv_aempty;
 wire  kme_slv_empty;
 axi4s_dp_bus_t kme_slv_out;
 wire  kme_slv_rd;
 wire  stat_aux_cmd_with_vf_pf_fail;
 wire  stat_aux_key_type_0;
 wire  stat_aux_key_type_1;
 wire  stat_aux_key_type_10;
 wire  stat_aux_key_type_11;
 wire  stat_aux_key_type_12;
 wire  stat_aux_key_type_13;
 wire  stat_aux_key_type_2;
 wire  stat_aux_key_type_3;
 wire  stat_aux_key_type_4;
 wire  stat_aux_key_type_5;
 wire  stat_aux_key_type_6;
 wire  stat_aux_key_type_7;
 wire  stat_aux_key_type_8;
 wire  stat_aux_key_type_9;
 wire  stat_cceip0_stall_on_valid_key;
 wire  stat_cceip1_stall_on_valid_key;
 wire  stat_cceip2_stall_on_valid_key;
 wire  stat_cceip3_stall_on_valid_key;
 wire  stat_cddip0_stall_on_valid_key;
 wire  stat_cddip1_stall_on_valid_key;
 wire  stat_cddip2_stall_on_valid_key;
 wire  stat_cddip3_stall_on_valid_key;
 wire  stat_drbg_reseed;
 wire  stat_req_with_expired_seed;
 wire  tlv_parser_idle;
 wire  tlv_parser_int_tlv_start_pulse;
 wire  [3:0] cddip_ob_full ;
 wire  _zy_simnet_core_kme_ib_out_10_w$;
 wire  [0:82] _zy_simnet_kme_slv_out_11_w$ ;
 wire  [0:70] _zy_simnet_cceip_encrypt_in_12_w$ ;
 wire  [0:70] _zy_simnet_cceip_validate_in_13_w$ ;
 wire  [0:70] _zy_simnet_cddip_decrypt_in_14_w$ ;
 wire  [0:82] _zy_simnet_kme_slv_out_15_w$ ;
 wire  [0:70] _zy_simnet_cceip_encrypt_in_16_w$ ;
 wire  [0:70] _zy_simnet_cceip_validate_in_17_w$ ;
 wire  [0:105] _zy_simnet_cceip_encrypt_ob_tlv_18_w$ ;
 wire  [0:105] _zy_simnet_cceip_validate_ob_tlv_19_w$ ;
 wire tlvp_if_bus_t [3:0] _zy_simnet_tvar_20 ;
 wire  [0:105] _zy_simnet_cceip_encrypt_ob_tlv_21_w$ ;
 wire  [0:105] _zy_simnet_cceip_validate_ob_tlv_22_w$ ;
 wire  [0:82] _zy_simnet_kme_cceip0_ob_out_23_w$ ;
 wire  [0:105] _zy_simnet_cceip_ob_tlv_24_w$ ;
 wire  _zy_simnet_kme_ib_out_25_w$;
 wire  [0:31] _zy_simnet_idle_components_26_w$ ;
 wire  _zy_simnet_core_kme_ib_out_27_w$;
  assign  kme_cceip1_ob_out = 83'b0;
  assign  kme_cceip2_ob_out = 83'b0;
  assign  kme_cceip3_ob_out = 83'b0;
  assign  kme_cddip0_ob_out = 83'b0;
  assign  kme_cddip1_ob_out = 83'b0;
  assign  kme_cddip2_ob_out = 83'b0;
  assign  kme_cddip3_ob_out = 83'b0;
  assign  cddip_decrypt_in_stall = 1'b0;
  assign  stat_cceip1_stall_on_valid_key = 1'b0;
  assign  stat_cceip2_stall_on_valid_key = 1'b0;
  assign  stat_cceip3_stall_on_valid_key = 1'b0;
  assign  stat_cddip0_stall_on_valid_key = 1'b0;
  assign  stat_cddip1_stall_on_valid_key = 1'b0;
  assign  stat_cddip2_stall_on_valid_key = 1'b0;
  assign  stat_cddip3_stall_on_valid_key = 1'b0;
  assign  cceip_key_tlv_rsm_end_pulse[3:1] = 3'b0;
  assign  cddip_key_tlv_rsm_end_pulse[3:0] = 4'b0;
  assign  cceip_key_tlv_rsm_idle[3:1] = 3'b0;
  assign  cddip_key_tlv_rsm_idle[3:0] = 4'b0;
  assign  cddip_decrypt_gcm_tag_fail_int = 1'b0;
  assign  cddip_ob_full[3:0] = 4'b0;
  assign  cddip_decrypt_bimc_osync = 1'b0;
  assign  cddip_decrypt_bimc_odat = 1'b0;
  assign  cddip_decrypt_mbe = 1'b0;
  assign  core_kme_ib_out = _zy_simnet_core_kme_ib_out_10_w$;
  assign  kme_slv_out = _zy_simnet_kme_slv_out_11_w$;
  assign  cceip_encrypt_in = _zy_simnet_cceip_encrypt_in_12_w$;
  assign  cceip_validate_in = _zy_simnet_cceip_validate_in_13_w$;
  assign  cddip_decrypt_in = _zy_simnet_cddip_decrypt_in_14_w$;
  assign  _zy_simnet_kme_slv_out_15_w$ = kme_slv_out;
  assign  _zy_simnet_cceip_encrypt_in_16_w$ = cceip_encrypt_in;
  assign  _zy_simnet_cceip_validate_in_17_w$ = cceip_validate_in;
  assign  cceip_encrypt_ob_tlv = _zy_simnet_cceip_encrypt_ob_tlv_18_w$;
  assign  cceip_validate_ob_tlv = _zy_simnet_cceip_validate_ob_tlv_19_w$;
  assign  cceip_ob_tlv = _zy_simnet_tvar_20;
  assign  _zy_simnet_cceip_encrypt_ob_tlv_21_w$ = cceip_encrypt_ob_tlv;
  assign  _zy_simnet_cceip_validate_ob_tlv_22_w$ = cceip_validate_ob_tlv;
  assign  kme_cceip0_ob_out = _zy_simnet_kme_cceip0_ob_out_23_w$;
  assign  _zy_simnet_cceip_ob_tlv_24_w$ = cceip_ob_tlv[0];
  assign  kme_ib_out = _zy_simnet_kme_ib_out_25_w$;
  assign  idle_components = _zy_simnet_idle_components_26_w$;
  assign  _zy_simnet_core_kme_ib_out_27_w$ = core_kme_ib_out;
  cr_axi4s2_slv txc_axi_intf(
   .axi4s_ib_out(_zy_simnet_core_kme_ib_out_10_w$) ,
   .axi4s_slv_out(_zy_simnet_kme_slv_out_11_w$) ,
   .axi4s_slv_empty(kme_slv_empty) ,
   .axi4s_slv_aempty(kme_slv_aempty) ,
   .axi4s_slv_bimc_odat(axi_bimc_odat) ,
   .axi4s_slv_bimc_osync(axi_bimc_osync) ,
   .axi4s_slv_ro_uncorrectable_ecc_error(axi_mbe) ,
   .clk(clk) ,
   .rst_n(rst_n) ,
   .axi4s_ib_in(kme_ib_in) ,
   .axi4s_slv_rd(kme_slv_rd) ,
   .axi4s_slv_bimc_idat(axi_bimc_idat) ,
   .axi4s_slv_bimc_isync(axi_bimc_isync) ,
   .bimc_rst_n(bimc_rst_n) );
  cr_kme_drng drng(
   .drng_health_fail(drng_health_fail) ,
   .drng_seed_expired(drng_seed_expired) ,
   .drng_256_out(drng_256_out) ,
   .drng_valid(drng_valid) ,
   .seed0_invalidate(seed0_invalidate) ,
   .seed1_invalidate(seed1_invalidate) ,
   .stat_drbg_reseed(stat_drbg_reseed) ,
   .drng_idle(drng_idle) ,
   .clk(clk) ,
   .rst_n(rst_n) ,
   .drng_ack(drng_ack) ,
   .seed0_valid(seed0_valid) ,
   .seed0_internal_state_key(seed0_internal_state_key) ,
   .seed0_internal_state_value(seed0_internal_state_value) ,
   .seed0_reseed_interval(seed0_reseed_interval) ,
   .seed1_valid(seed1_valid) ,
   .seed1_internal_state_key(seed1_internal_state_key) ,
   .seed1_internal_state_value(seed1_internal_state_value) ,
   .seed1_reseed_interval(seed1_reseed_interval) );
  cr_kme_ckv_pipeline ckv_pipeline(
   .kme_slv_rd(kme_slv_rd) ,
   .cceip_encrypt_in(_zy_simnet_cceip_encrypt_in_12_w$) ,
   .cceip_encrypt_in_valid(cceip_encrypt_in_valid) ,
   .cceip_validate_in(_zy_simnet_cceip_validate_in_13_w$) ,
   .cceip_validate_in_valid(cceip_validate_in_valid) ,
   .cddip_decrypt_in(_zy_simnet_cddip_decrypt_in_14_w$) ,
   .cddip_decrypt_in_valid(cddip_decrypt_in_valid) ,
   .ckv_rd(ckv_rd) ,
   .ckv_addr(ckv_addr) ,
   .kim_rd(kim_rd) ,
   .kim_addr(kim_addr) ,
   .drng_ack(drng_ack) ,
   .stat_req_with_expired_seed(stat_req_with_expired_seed) ,
   .stat_aux_key_type_0(stat_aux_key_type_0) ,
   .stat_aux_key_type_1(stat_aux_key_type_1) ,
   .stat_aux_key_type_2(stat_aux_key_type_2) ,
   .stat_aux_key_type_3(stat_aux_key_type_3) ,
   .stat_aux_key_type_4(stat_aux_key_type_4) ,
   .stat_aux_key_type_5(stat_aux_key_type_5) ,
   .stat_aux_key_type_6(stat_aux_key_type_6) ,
   .stat_aux_key_type_7(stat_aux_key_type_7) ,
   .stat_aux_key_type_8(stat_aux_key_type_8) ,
   .stat_aux_key_type_9(stat_aux_key_type_9) ,
   .stat_aux_key_type_10(stat_aux_key_type_10) ,
   .stat_aux_key_type_11(stat_aux_key_type_11) ,
   .stat_aux_key_type_12(stat_aux_key_type_12) ,
   .stat_aux_key_type_13(stat_aux_key_type_13) ,
   .stat_aux_cmd_with_vf_pf_fail(stat_aux_cmd_with_vf_pf_fail) ,
   .tlv_parser_idle(tlv_parser_idle) ,
   .tlv_parser_int_tlv_start_pulse(tlv_parser_int_tlv_start_pulse) ,
   .set_tlv_bip2_error_int(set_tlv_bip2_error_int) ,
   .clk(clk) ,
   .rst_n(rst_n) ,
   .disable_debug_cmd_q(disable_debug_cmd_q) ,
   .disable_unencrypted_keys(disable_unencrypted_keys) ,
   .always_validate_kim_ref(always_validate_kim_ref) ,
   .kme_slv_out(_zy_simnet_kme_slv_out_15_w$) ,
   .kme_slv_aempty(kme_slv_aempty) ,
   .kme_slv_empty(kme_slv_empty) ,
   .cceip_encrypt_in_stall(cceip_encrypt_in_stall) ,
   .cceip_validate_in_stall(cceip_validate_in_stall) ,
   .cddip_decrypt_in_stall(cddip_decrypt_in_stall) ,
   .ckv_dout(ckv_dout) ,
   .ckv_mbe(ckv_mbe) ,
   .kim_dout(kim_dout) ,
   .kim_mbe(kim_mbe) ,
   .drng_seed_expired(drng_seed_expired) ,
   .drng_health_fail(drng_health_fail) ,
   .drng_256_out(drng_256_out) ,
   .drng_valid(drng_valid) );
  cr_kme_ram_fifo cceip_encrypt_kop_fifo(
   .fifo_in_stall(cceip_encrypt_in_stall) ,
   .fifo_out(cceip_encrypt_out) ,
   .fifo_out_valid(cceip_encrypt_out_valid) ,
   .fifo_bimc_osync(cceip_encrypt_bimc_osync) ,
   .fifo_bimc_odat(cceip_encrypt_bimc_odat) ,
   .fifo_mbe(cceip_encrypt_mbe) ,
   .clk(clk) ,
   .rst_n(rst_n) ,
   .fifo_in(_zy_simnet_cceip_encrypt_in_16_w$) ,
   .fifo_in_valid(cceip_encrypt_in_valid) ,
   .fifo_out_ack(cceip_encrypt_out_ack) ,
   .bimc_rst_n(bimc_rst_n) ,
   .fifo_bimc_isync(cceip_encrypt_bimc_isync) ,
   .fifo_bimc_idat(cceip_encrypt_bimc_idat) );
  cr_kme_ram_fifo cceip_validate_kop_fifo(
   .fifo_in_stall(cceip_validate_in_stall) ,
   .fifo_out(cceip_validate_out) ,
   .fifo_out_valid(cceip_validate_out_valid) ,
   .fifo_bimc_osync(cceip_validate_bimc_osync) ,
   .fifo_bimc_odat(cceip_validate_bimc_odat) ,
   .fifo_mbe(cceip_validate_mbe) ,
   .clk(clk) ,
   .rst_n(rst_n) ,
   .fifo_in(_zy_simnet_cceip_validate_in_17_w$) ,
   .fifo_in_valid(cceip_validate_in_valid) ,
   .fifo_out_ack(cceip_validate_out_ack) ,
   .bimc_rst_n(bimc_rst_n) ,
   .fifo_bimc_isync(cceip_validate_bimc_isync) ,
   .fifo_bimc_idat(cceip_validate_bimc_idat) );
  cr_kme_kop_xcm69 cceip_encrypt_kop(
   .kme_internal_out_ack(cceip_encrypt_out_ack) ,
   .key_tlv_ob_wr(cceip_encrypt_ob_wr) ,
   .key_tlv_ob_tlv(_zy_simnet_cceip_encrypt_ob_tlv_18_w$) ,
   .set_gcm_tag_fail_int(cceip_encrypt_gcm_tag_fail_int) ,
   .clk(clk) ,
   .rst_n(rst_n) ,
   .scan_en(scan_en) ,
   .scan_mode(scan_mode) ,
   .scan_rst_n(scan_rst_n) ,
   .labels(labels) ,
   .kme_internal_out(cceip_encrypt_out) ,
   .kme_internal_out_valid(cceip_encrypt_out_valid) ,
   .key_tlv_ob_full(cceip_encrypt_ob_full) ,
   .key_tlv_ob_afull(cceip_encrypt_ob_afull) ,
   .kop_fifo_override(cceip_encrypt_kop_fifo_override) ,
   .kdf_test_key_size(kdf_test_key_size) ,
   .kdf_test_mode_en(kdf_test_mode_en) );
  cr_kme_kop_xcm68 cceip_validate_kop(
   .kme_internal_out_ack(cceip_validate_out_ack) ,
   .key_tlv_ob_wr(cceip_validate_ob_wr) ,
   .key_tlv_ob_tlv(_zy_simnet_cceip_validate_ob_tlv_19_w$) ,
   .set_gcm_tag_fail_int(cceip_validate_gcm_tag_fail_int) ,
   .clk(clk) ,
   .rst_n(rst_n) ,
   .scan_en(scan_en) ,
   .scan_mode(scan_mode) ,
   .scan_rst_n(scan_rst_n) ,
   .labels(labels) ,
   .kme_internal_out(cceip_validate_out) ,
   .kme_internal_out_valid(cceip_validate_out_valid) ,
   .key_tlv_ob_full(cceip_validate_ob_full) ,
   .key_tlv_ob_afull(cceip_validate_ob_afull) ,
   .kop_fifo_override(cceip_validate_kop_fifo_override) ,
   .kdf_test_key_size(kdf_test_key_size) ,
   .kdf_test_mode_en(kdf_test_mode_en) );
  cr_kme_key_tlv_compare_split cceip_key_tlv_compare_split(
   .set_key_tlv_miscmp_int(set_key_tlv_miscmp_int) ,
   .cceip_encrypt_ob_full(cceip_encrypt_ob_full) ,
   .cceip_encrypt_ob_afull(cceip_encrypt_ob_afull) ,
   .cceip_validate_ob_full(cceip_validate_ob_full) ,
   .cceip_validate_ob_afull(cceip_validate_ob_afull) ,
   .cceip_ob_wr(cceip_ob_wr) ,
   .cceip_ob_tlv(_zy_simnet_tvar_20) ,
   .clk(clk) ,
   .rst_n(rst_n) ,
   .suppress_key_tlvs(suppress_key_tlvs) ,
   .cceip_encrypt_ob_wr(cceip_encrypt_ob_wr) ,
   .cceip_encrypt_ob_tlv(_zy_simnet_cceip_encrypt_ob_tlv_21_w$) ,
   .cceip_validate_ob_wr(cceip_validate_ob_wr) ,
   .cceip_validate_ob_tlv(_zy_simnet_cceip_validate_ob_tlv_22_w$) ,
   .cceip_ob_full(cceip_ob_full) ,
   .cceip_ob_afull(cceip_ob_afull) );
  cr_kme_key_tlv_rsm cceip0_key_tlv_rsm(
   .usr_ob_full(cceip_ob_full[0]) ,
   .usr_ob_afull(cceip_ob_afull[0]) ,
   .axi4s_ob_out(_zy_simnet_kme_cceip0_ob_out_23_w$) ,
   .stat_stall_on_valid_key(stat_cceip0_stall_on_valid_key) ,
   .key_tlv_rsm_end_pulse(cceip_key_tlv_rsm_end_pulse[0]) ,
   .key_tlv_rsm_idle(cceip_key_tlv_rsm_idle[0]) ,
   .clk(clk) ,
   .rst_n(rst_n) ,
   .usr_ob_wr(cceip_ob_wr[0]) ,
   .usr_ob_tlv(_zy_simnet_cceip_ob_tlv_24_w$) ,
   .axi4s_ob_in(kme_cceip0_ob_in) );
  cr_kme_core_glue core_glue(
   .disable_debug_cmd_q(disable_debug_cmd_q) ,
   .set_gcm_tag_fail_int(set_gcm_tag_fail_int) ,
   .set_txc_bp_int(set_txc_bp_int) ,
   .set_rsm_is_backpressuring(set_rsm_is_backpressuring) ,
   .kme_ib_out(_zy_simnet_kme_ib_out_25_w$) ,
   .sa_snapshot(sa_snapshot) ,
   .sa_count(sa_count) ,
   .kme_idle(kme_idle) ,
   .idle_components(_zy_simnet_idle_components_26_w$) ,
   .clk(clk) ,
   .rst_n(rst_n) ,
   .disable_debug_cmd(disable_debug_cmd) ,
   .cceip_encrypt_gcm_tag_fail_int(cceip_encrypt_gcm_tag_fail_int) ,
   .cceip_validate_gcm_tag_fail_int(cceip_validate_gcm_tag_fail_int) ,
   .cddip_decrypt_gcm_tag_fail_int(cddip_decrypt_gcm_tag_fail_int) ,
   .cceip_ob_full(cceip_ob_full) ,
   .cddip_ob_full(cddip_ob_full) ,
   .tready_override(tready_override) ,
   .core_kme_ib_out(_zy_simnet_core_kme_ib_out_27_w$) ,
   .sa_global_ctrl(sa_global_ctrl) ,
   .sa_ctrl(sa_ctrl) ,
   .stat_drbg_reseed(stat_drbg_reseed) ,
   .stat_req_with_expired_seed(stat_req_with_expired_seed) ,
   .stat_aux_key_type_0(stat_aux_key_type_0) ,
   .stat_aux_key_type_1(stat_aux_key_type_1) ,
   .stat_aux_key_type_2(stat_aux_key_type_2) ,
   .stat_aux_key_type_3(stat_aux_key_type_3) ,
   .stat_aux_key_type_4(stat_aux_key_type_4) ,
   .stat_aux_key_type_5(stat_aux_key_type_5) ,
   .stat_aux_key_type_6(stat_aux_key_type_6) ,
   .stat_aux_key_type_7(stat_aux_key_type_7) ,
   .stat_aux_key_type_8(stat_aux_key_type_8) ,
   .stat_aux_key_type_9(stat_aux_key_type_9) ,
   .stat_aux_key_type_10(stat_aux_key_type_10) ,
   .stat_aux_key_type_11(stat_aux_key_type_11) ,
   .stat_aux_key_type_12(stat_aux_key_type_12) ,
   .stat_aux_key_type_13(stat_aux_key_type_13) ,
   .stat_cceip0_stall_on_valid_key(stat_cceip0_stall_on_valid_key) ,
   .stat_cceip1_stall_on_valid_key(stat_cceip1_stall_on_valid_key) ,
   .stat_cceip2_stall_on_valid_key(stat_cceip2_stall_on_valid_key) ,
   .stat_cceip3_stall_on_valid_key(stat_cceip3_stall_on_valid_key) ,
   .stat_cddip0_stall_on_valid_key(stat_cddip0_stall_on_valid_key) ,
   .stat_cddip1_stall_on_valid_key(stat_cddip1_stall_on_valid_key) ,
   .stat_cddip2_stall_on_valid_key(stat_cddip2_stall_on_valid_key) ,
   .stat_cddip3_stall_on_valid_key(stat_cddip3_stall_on_valid_key) ,
   .stat_aux_cmd_with_vf_pf_fail(stat_aux_cmd_with_vf_pf_fail) ,
   .kme_slv_empty(kme_slv_empty) ,
   .drng_idle(drng_idle) ,
   .tlv_parser_idle(tlv_parser_idle) ,
   .tlv_parser_int_tlv_start_pulse(tlv_parser_int_tlv_start_pulse) ,
   .cceip_key_tlv_rsm_end_pulse(cceip_key_tlv_rsm_end_pulse) ,
   .cddip_key_tlv_rsm_end_pulse(cddip_key_tlv_rsm_end_pulse) ,
   .cceip_key_tlv_rsm_idle(cceip_key_tlv_rsm_idle) ,
   .cddip_key_tlv_rsm_idle(cddip_key_tlv_rsm_idle) );
end
endmodule

