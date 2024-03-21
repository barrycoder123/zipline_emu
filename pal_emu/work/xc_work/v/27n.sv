// xc_work/v/27n.sv
// /home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kim_drng_reader.v:19
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
module cr_kme_kim_drng_reader(kimreader_parser_ack,kimreader_ckvreader_valid,kimreader_ckvreader_data,drng_ack,kim_rd,kim_addr,stat_req_with_expired_seed,stat_aux_key_type_0,stat_aux_key_type_1,stat_aux_key_type_2,
stat_aux_key_type_3,stat_aux_key_type_4,stat_aux_key_type_5,stat_aux_key_type_6,stat_aux_key_type_7,stat_aux_key_type_8,stat_aux_key_type_9,stat_aux_key_type_10,stat_aux_key_type_11,stat_aux_key_type_12,stat_aux_key_type_13,stat_aux_cmd_with_vf_pf_fail,
clk,rst_n,parser_kimreader_valid,parser_kimreader_data,ckvreader_kimreader_ack,drng_seed_expired,drng_health_fail,drng_256_out,drng_valid,kim_dout,kim_mbe,disable_unencrypted_keys);
// pkg external : PKG - cr_kme_regfilePKG : DTYPE  
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
input  parser_kimreader_valid;
input kme_internal_t parser_kimreader_data;
output reg kimreader_parser_ack;
output reg kimreader_ckvreader_valid;
output kme_internal_t kimreader_ckvreader_data;
input  ckvreader_kimreader_ack;
input  drng_seed_expired;
input  drng_health_fail;
input  [127:0] drng_256_out ;
input  drng_valid;
output reg drng_ack;
output reg kim_rd;
output reg [13:0] kim_addr ;
input kim_entry_t kim_dout;
input  kim_mbe;
output reg stat_req_with_expired_seed;
output reg stat_aux_key_type_0;
output reg stat_aux_key_type_1;
output reg stat_aux_key_type_2;
output reg stat_aux_key_type_3;
output reg stat_aux_key_type_4;
output reg stat_aux_key_type_5;
output reg stat_aux_key_type_6;
output reg stat_aux_key_type_7;
output reg stat_aux_key_type_8;
output reg stat_aux_key_type_9;
output reg stat_aux_key_type_10;
output reg stat_aux_key_type_11;
output reg stat_aux_key_type_12;
output reg stat_aux_key_type_13;
output reg stat_aux_cmd_with_vf_pf_fail;
input  disable_unencrypted_keys;
typedef enum bit [2:0] {PASSTHROUGH=3'b0,DEK_KIM_READ=3'b01,DAK_KIM_READ=3'b010,TX_KIM_ENTRIES=3'b011,INSERT_RGUID0=3'b100,INSERT_RGUID1=3'b101,INSERT_RGUID2=3'b110,INSERT_RGUID3=3'b111} kim_drng_reader_fsm;
kim_drng_reader_fsm cur_state, nxt_state;
reg [13:0] dek_ref_q ;
reg [13:0] dak_ref_q ;
reg dek_is_kdf_key_q;
reg dak_is_kdf_key_q;
zipline_error_e kim_errors_q;
kim_entry_t dek_kim_entry_q, dak_kim_entry_q;
reg dek_kim_mbe_q;
reg dak_kim_mbe_q;
reg kim_rd_q;
kme_internal_word_0_t tlv_word0;
kme_internal_word_8_t tlv_word8;
kme_internal_word_9_t tlv_word9;
kme_internal_word_42_t tlv_word42;
aux_key_ctrl_t aux_key_ctrl;
aux_key_type_e aux_key_type;
genvar nn;
wire  _zy_simnet_kimreader_parser_ack_0_w$;
wire  _zy_simnet_kimreader_ckvreader_valid_1_w$;
wire  [0:70] _zy_simnet_kimreader_ckvreader_data_2_w$ ;
wire  _zy_simnet_drng_ack_3_w$;
wire  _zy_simnet_kim_rd_4_w$;
wire  [0:13] _zy_simnet_kim_addr_5_w$ ;
wire  _zy_simnet_stat_req_with_expired_seed_6_w$;
wire  _zy_simnet_stat_aux_key_type_0_7_w$;
wire  _zy_simnet_stat_aux_key_type_1_8_w$;
wire  _zy_simnet_stat_aux_key_type_2_9_w$;
wire  _zy_simnet_stat_aux_key_type_3_10_w$;
wire  _zy_simnet_stat_aux_key_type_4_11_w$;
wire  _zy_simnet_stat_aux_key_type_5_12_w$;
wire  _zy_simnet_stat_aux_key_type_6_13_w$;
wire  _zy_simnet_stat_aux_key_type_7_14_w$;
wire  _zy_simnet_stat_aux_key_type_8_15_w$;
wire  _zy_simnet_stat_aux_key_type_9_16_w$;
wire  _zy_simnet_stat_aux_key_type_10_17_w$;
wire  _zy_simnet_stat_aux_key_type_11_18_w$;
wire  _zy_simnet_stat_aux_key_type_12_19_w$;
wire  _zy_simnet_stat_aux_key_type_13_20_w$;
wire  _zy_simnet_stat_aux_cmd_with_vf_pf_fail_21_w$;
wire  _zy_sva_disable_unenc_keys_1_reset_or;
bit [0:0]  _zy_sva_disable_unenc_keys_1_ccheck = 1'b0;
bit [0:0]  _zy_sva_disable_unenc_keys_1_cpass = 1'b0;
bit _zy_sva_b0;
wire  _zy_sva_enable_unenc_keys_2_reset_or;
bit [0:0]  _zy_sva_enable_unenc_keys_2_ccheck = 1'b0;
bit [0:0]  _zy_sva_enable_unenc_keys_2_cpass = 1'b0;
bit _zy_sva_b1;
wire  _zy_sva_disable_unenc_keys_3_reset_or;
bit [0:0]  _zy_sva_disable_unenc_keys_3_ccheck = 1'b0;
bit [0:0]  _zy_sva_disable_unenc_keys_3_cpass = 1'b0;
bit _zy_sva_b2;
wire  _zy_sva_enable_unenc_keys_4_reset_or;
bit [0:0]  _zy_sva_enable_unenc_keys_4_ccheck = 1'b0;
bit [0:0]  _zy_sva_enable_unenc_keys_4_cpass = 1'b0;
bit _zy_sva_b3;
wire  _zy_sva_disable_unenc_keys_5_reset_or;
bit [0:0]  _zy_sva_disable_unenc_keys_5_ccheck = 1'b0;
bit [0:0]  _zy_sva_disable_unenc_keys_5_cpass = 1'b0;
bit _zy_sva_b4;
wire  _zy_sva_enable_unenc_keys_6_reset_or;
bit [0:0]  _zy_sva_enable_unenc_keys_6_ccheck = 1'b0;
bit [0:0]  _zy_sva_enable_unenc_keys_6_cpass = 1'b0;
bit _zy_sva_b5;
wire  _zy_sva_disable_unenc_keys_7_reset_or;
bit [0:0]  _zy_sva_disable_unenc_keys_7_ccheck = 1'b0;
bit [0:0]  _zy_sva_disable_unenc_keys_7_cpass = 1'b0;
bit _zy_sva_b6;
wire  _zy_sva_enable_unenc_keys_8_reset_or;
bit [0:0]  _zy_sva_enable_unenc_keys_8_ccheck = 1'b0;
bit [0:0]  _zy_sva_enable_unenc_keys_8_cpass = 1'b0;
bit _zy_sva_b7;
wire  _zy_sva_disable_unenc_keys_9_reset_or;
bit [0:0]  _zy_sva_disable_unenc_keys_9_ccheck = 1'b0;
bit [0:0]  _zy_sva_disable_unenc_keys_9_cpass = 1'b0;
bit _zy_sva_b8;
wire  _zy_sva_enable_unenc_keys_10_reset_or;
bit [0:0]  _zy_sva_enable_unenc_keys_10_ccheck = 1'b0;
bit [0:0]  _zy_sva_enable_unenc_keys_10_cpass = 1'b0;
bit _zy_sva_b9;
// synopsys translate_off
wire  _sva_placeholder_clk;
wire  _sva_placeholder_expr;
// synopsys translate_on
wire  _zy_sva_b0_t;
wire  _zy_sva_b1_t;
wire  _zy_sva_b2_t;
wire  _zy_sva_b3_t;
wire  _zy_sva_b4_t;
wire  _zy_sva_b5_t;
wire  _zy_sva_b6_t;
wire  _zy_sva_b7_t;
wire  _zy_sva_b8_t;
wire  _zy_sva_b9_t;
reg _zyL438_tfiRv4;
reg _zyL444_tfiRv5;
reg _zyL468_tfiRv6;
reg _zyL473_tfiRv7;
wire  _zy_disable_unencrypted_keys_x$ed_22;
assign  _zy_simnet_kimreader_parser_ack_0_w$ = kimreader_parser_ack;
assign  _zy_simnet_kimreader_ckvreader_valid_1_w$ = kimreader_ckvreader_valid;
assign  _zy_simnet_kimreader_ckvreader_data_2_w$ = kimreader_ckvreader_data;
assign  _zy_simnet_drng_ack_3_w$ = drng_ack;
assign  _zy_simnet_kim_rd_4_w$ = kim_rd;
assign  _zy_simnet_kim_addr_5_w$ = kim_addr;
assign  _zy_simnet_stat_req_with_expired_seed_6_w$ = stat_req_with_expired_seed;
assign  _zy_simnet_stat_aux_key_type_0_7_w$ = stat_aux_key_type_0;
assign  _zy_simnet_stat_aux_key_type_1_8_w$ = stat_aux_key_type_1;
assign  _zy_simnet_stat_aux_key_type_2_9_w$ = stat_aux_key_type_2;
assign  _zy_simnet_stat_aux_key_type_3_10_w$ = stat_aux_key_type_3;
assign  _zy_simnet_stat_aux_key_type_4_11_w$ = stat_aux_key_type_4;
assign  _zy_simnet_stat_aux_key_type_5_12_w$ = stat_aux_key_type_5;
assign  _zy_simnet_stat_aux_key_type_6_13_w$ = stat_aux_key_type_6;
assign  _zy_simnet_stat_aux_key_type_7_14_w$ = stat_aux_key_type_7;
assign  _zy_simnet_stat_aux_key_type_8_15_w$ = stat_aux_key_type_8;
assign  _zy_simnet_stat_aux_key_type_9_16_w$ = stat_aux_key_type_9;
assign  _zy_simnet_stat_aux_key_type_10_17_w$ = stat_aux_key_type_10;
assign  _zy_simnet_stat_aux_key_type_11_18_w$ = stat_aux_key_type_11;
assign  _zy_simnet_stat_aux_key_type_12_19_w$ = stat_aux_key_type_12;
assign  _zy_simnet_stat_aux_key_type_13_20_w$ = stat_aux_key_type_13;
assign  _zy_simnet_stat_aux_cmd_with_vf_pf_fail_21_w$ = stat_aux_cmd_with_vf_pf_fail;
assign  _zy_sva_disable_unenc_keys_1_reset_or = (rst_n !== 32'b01);
assign  _zy_sva_enable_unenc_keys_2_reset_or = (rst_n !== 32'b01);
assign  _zy_sva_disable_unenc_keys_3_reset_or = (rst_n !== 32'b01);
assign  _zy_sva_enable_unenc_keys_4_reset_or = (rst_n !== 32'b01);
assign  _zy_sva_disable_unenc_keys_5_reset_or = (rst_n !== 32'b01);
assign  _zy_sva_enable_unenc_keys_6_reset_or = (rst_n !== 32'b01);
assign  _zy_sva_disable_unenc_keys_7_reset_or = (rst_n !== 32'b01);
assign  _zy_sva_enable_unenc_keys_8_reset_or = (rst_n !== 32'b01);
assign  _zy_sva_disable_unenc_keys_9_reset_or = (rst_n !== 32'b01);
assign  _zy_sva_enable_unenc_keys_10_reset_or = (rst_n !== 32'b01);
assign  _zy_sva_b0_t = (((parser_kimreader_data.id == KME_WORD0) && _zy_disable_unencrypted_keys_x$ed_22) && (tlv_word0.key_type == 32'b010));
assign  _zy_sva_b1_t = (((parser_kimreader_data.id == KME_WORD0) && ( !_zy_disable_unencrypted_keys_x$ed_22 )) && (tlv_word0.key_type == 32'b010));
assign  _zy_sva_b2_t = (((parser_kimreader_data.id == KME_WORD0) && _zy_disable_unencrypted_keys_x$ed_22) && (tlv_word0.key_type == 32'b011));
assign  _zy_sva_b3_t = (((parser_kimreader_data.id == KME_WORD0) && ( !_zy_disable_unencrypted_keys_x$ed_22 )) && (tlv_word0.key_type == 32'b011));
assign  _zy_sva_b4_t = (((parser_kimreader_data.id == KME_WORD0) && _zy_disable_unencrypted_keys_x$ed_22) && (tlv_word0.key_type == 32'b0100));
assign  _zy_sva_b5_t = (((parser_kimreader_data.id == KME_WORD0) && ( !_zy_disable_unencrypted_keys_x$ed_22 )) && (tlv_word0.key_type == 32'b0100));
assign  _zy_sva_b6_t = (((parser_kimreader_data.id == KME_WORD0) && _zy_disable_unencrypted_keys_x$ed_22) && (tlv_word0.key_type == 32'b0101));
assign  _zy_sva_b7_t = (((parser_kimreader_data.id == KME_WORD0) && ( !_zy_disable_unencrypted_keys_x$ed_22 )) && (tlv_word0.key_type == 32'b0101));
assign  _zy_sva_b8_t = (((parser_kimreader_data.id == KME_WORD0) && _zy_disable_unencrypted_keys_x$ed_22) && (tlv_word0.key_type == 32'b0110));
assign  _zy_sva_b9_t = (((parser_kimreader_data.id == KME_WORD0) && ( !_zy_disable_unencrypted_keys_x$ed_22 )) && (tlv_word0.key_type == 32'b0110));
/* ++ ixc_sample  #(1) _zz_zy_sva_b0 (_zy_sva_b0, _zy_sva_b0_t); */
reg _zy__zz_zy_sva_b0_r;
initial 
 _zy__zz_zy_sva_b0_r = _zy_sva_b0_t;
assign _zy_sva_b0 = _zy__zz_zy_sva_b0_r;
always 
 @(_zy_sva_b0_t)
  begin
   xc_top.xcSchEotQ;
   @(xc_top.eotQEvent) ;
   _zy__zz_zy_sva_b0_r = _zy_sva_b0_t;
  end
// -- ixc_sample

/* ++ ixc_sample  #(1) _zz_zy_sva_b1 (_zy_sva_b1, _zy_sva_b1_t); */
reg _zy__zz_zy_sva_b1_r;
initial 
 _zy__zz_zy_sva_b1_r = _zy_sva_b1_t;
assign _zy_sva_b1 = _zy__zz_zy_sva_b1_r;
always 
 @(_zy_sva_b1_t)
  begin
   xc_top.xcSchEotQ;
   @(xc_top.eotQEvent) ;
   _zy__zz_zy_sva_b1_r = _zy_sva_b1_t;
  end
// -- ixc_sample

/* ++ ixc_sample  #(1) _zz_zy_sva_b2 (_zy_sva_b2, _zy_sva_b2_t); */
reg _zy__zz_zy_sva_b2_r;
initial 
 _zy__zz_zy_sva_b2_r = _zy_sva_b2_t;
assign _zy_sva_b2 = _zy__zz_zy_sva_b2_r;
always 
 @(_zy_sva_b2_t)
  begin
   xc_top.xcSchEotQ;
   @(xc_top.eotQEvent) ;
   _zy__zz_zy_sva_b2_r = _zy_sva_b2_t;
  end
// -- ixc_sample

/* ++ ixc_sample  #(1) _zz_zy_sva_b3 (_zy_sva_b3, _zy_sva_b3_t); */
reg _zy__zz_zy_sva_b3_r;
initial 
 _zy__zz_zy_sva_b3_r = _zy_sva_b3_t;
assign _zy_sva_b3 = _zy__zz_zy_sva_b3_r;
always 
 @(_zy_sva_b3_t)
  begin
   xc_top.xcSchEotQ;
   @(xc_top.eotQEvent) ;
   _zy__zz_zy_sva_b3_r = _zy_sva_b3_t;
  end
// -- ixc_sample

/* ++ ixc_sample  #(1) _zz_zy_sva_b4 (_zy_sva_b4, _zy_sva_b4_t); */
reg _zy__zz_zy_sva_b4_r;
initial 
 _zy__zz_zy_sva_b4_r = _zy_sva_b4_t;
assign _zy_sva_b4 = _zy__zz_zy_sva_b4_r;
always 
 @(_zy_sva_b4_t)
  begin
   xc_top.xcSchEotQ;
   @(xc_top.eotQEvent) ;
   _zy__zz_zy_sva_b4_r = _zy_sva_b4_t;
  end
// -- ixc_sample

/* ++ ixc_sample  #(1) _zz_zy_sva_b5 (_zy_sva_b5, _zy_sva_b5_t); */
reg _zy__zz_zy_sva_b5_r;
initial 
 _zy__zz_zy_sva_b5_r = _zy_sva_b5_t;
assign _zy_sva_b5 = _zy__zz_zy_sva_b5_r;
always 
 @(_zy_sva_b5_t)
  begin
   xc_top.xcSchEotQ;
   @(xc_top.eotQEvent) ;
   _zy__zz_zy_sva_b5_r = _zy_sva_b5_t;
  end
// -- ixc_sample

/* ++ ixc_sample  #(1) _zz_zy_sva_b6 (_zy_sva_b6, _zy_sva_b6_t); */
reg _zy__zz_zy_sva_b6_r;
initial 
 _zy__zz_zy_sva_b6_r = _zy_sva_b6_t;
assign _zy_sva_b6 = _zy__zz_zy_sva_b6_r;
always 
 @(_zy_sva_b6_t)
  begin
   xc_top.xcSchEotQ;
   @(xc_top.eotQEvent) ;
   _zy__zz_zy_sva_b6_r = _zy_sva_b6_t;
  end
// -- ixc_sample

/* ++ ixc_sample  #(1) _zz_zy_sva_b7 (_zy_sva_b7, _zy_sva_b7_t); */
reg _zy__zz_zy_sva_b7_r;
initial 
 _zy__zz_zy_sva_b7_r = _zy_sva_b7_t;
assign _zy_sva_b7 = _zy__zz_zy_sva_b7_r;
always 
 @(_zy_sva_b7_t)
  begin
   xc_top.xcSchEotQ;
   @(xc_top.eotQEvent) ;
   _zy__zz_zy_sva_b7_r = _zy_sva_b7_t;
  end
// -- ixc_sample

/* ++ ixc_sample  #(1) _zz_zy_sva_b8 (_zy_sva_b8, _zy_sva_b8_t); */
reg _zy__zz_zy_sva_b8_r;
initial 
 _zy__zz_zy_sva_b8_r = _zy_sva_b8_t;
assign _zy_sva_b8 = _zy__zz_zy_sva_b8_r;
always 
 @(_zy_sva_b8_t)
  begin
   xc_top.xcSchEotQ;
   @(xc_top.eotQEvent) ;
   _zy__zz_zy_sva_b8_r = _zy_sva_b8_t;
  end
// -- ixc_sample

/* ++ ixc_sample  #(1) _zz_zy_sva_b9 (_zy_sva_b9, _zy_sva_b9_t); */
reg _zy__zz_zy_sva_b9_r;
initial 
 _zy__zz_zy_sva_b9_r = _zy_sva_b9_t;
assign _zy_sva_b9 = _zy__zz_zy_sva_b9_r;
always 
 @(_zy_sva_b9_t)
  begin
   xc_top.xcSchEotQ;
   @(xc_top.eotQEvent) ;
   _zy__zz_zy_sva_b9_r = _zy_sva_b9_t;
  end
// -- ixc_sample

axPIBMod #(1 )_zy_pimod__23(_zy_disable_unencrypted_keys_x$ed_22,disable_unencrypted_keys); 

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


function  dek_needs_kek;
 input aux_key_type_e key_type;
 begin
  case (key_type)
   ENC_DEK256,
   ENC_DEK512,
   ENC_DEK256_DAK,
   ENC_DEK512_DAK,
   ENC_DEK256_DAK_COMB,
   ENC_DEK512_DAK_COMB:
    dek_needs_kek = 1'b1;
   default:
    dek_needs_kek = 1'b0;
  endcase
 end
endfunction


function  dak_needs_kek;
 input aux_key_type_e key_type;
 begin
  case (key_type)
   ENC_DAK,
   ENC_DEK256_DAK,
   ENC_DEK512_DAK,
   ENC_DEK256_DAK_COMB,
   ENC_DEK512_DAK_COMB:
    dak_needs_kek = 1'b1;
   default:
    dak_needs_kek = 1'b0;
  endcase
 end
endfunction

always 
 @(posedge clk or posedge _zy_sva_disable_unenc_keys_1_reset_or)
  begin
   if (_zy_sva_disable_unenc_keys_1_reset_or)
    begin
    end
   else
    begin:_zy_sva_sblk_1_1
     bit _zy_sva_nts_1_1_pass;
     _zy_sva_nts_1_1_pass = _zy_sva_b0;
     _zy_sva_disable_unenc_keys_1_ccheck = 1'b1;
     if (_zy_sva_nts_1_1_pass)
      begin
       _zy_sva_disable_unenc_keys_1_cpass = 1'b1;
      end
    end
  end
always 
 @(posedge clk or posedge _zy_sva_enable_unenc_keys_2_reset_or)
  begin
   if (_zy_sva_enable_unenc_keys_2_reset_or)
    begin
    end
   else
    begin:_zy_sva_sblk_2_1
     bit _zy_sva_nts_2_1_pass;
     _zy_sva_nts_2_1_pass = _zy_sva_b1;
     _zy_sva_enable_unenc_keys_2_ccheck = 1'b1;
     if (_zy_sva_nts_2_1_pass)
      begin
       _zy_sva_enable_unenc_keys_2_cpass = 1'b1;
      end
    end
  end
always 
 @(posedge clk or posedge _zy_sva_disable_unenc_keys_3_reset_or)
  begin
   if (_zy_sva_disable_unenc_keys_3_reset_or)
    begin
    end
   else
    begin:_zy_sva_sblk_3_1
     bit _zy_sva_nts_3_1_pass;
     _zy_sva_nts_3_1_pass = _zy_sva_b2;
     _zy_sva_disable_unenc_keys_3_ccheck = 1'b1;
     if (_zy_sva_nts_3_1_pass)
      begin
       _zy_sva_disable_unenc_keys_3_cpass = 1'b1;
      end
    end
  end
always 
 @(posedge clk or posedge _zy_sva_enable_unenc_keys_4_reset_or)
  begin
   if (_zy_sva_enable_unenc_keys_4_reset_or)
    begin
    end
   else
    begin:_zy_sva_sblk_4_1
     bit _zy_sva_nts_4_1_pass;
     _zy_sva_nts_4_1_pass = _zy_sva_b3;
     _zy_sva_enable_unenc_keys_4_ccheck = 1'b1;
     if (_zy_sva_nts_4_1_pass)
      begin
       _zy_sva_enable_unenc_keys_4_cpass = 1'b1;
      end
    end
  end
always 
 @(posedge clk or posedge _zy_sva_disable_unenc_keys_5_reset_or)
  begin
   if (_zy_sva_disable_unenc_keys_5_reset_or)
    begin
    end
   else
    begin:_zy_sva_sblk_5_1
     bit _zy_sva_nts_5_1_pass;
     _zy_sva_nts_5_1_pass = _zy_sva_b4;
     _zy_sva_disable_unenc_keys_5_ccheck = 1'b1;
     if (_zy_sva_nts_5_1_pass)
      begin
       _zy_sva_disable_unenc_keys_5_cpass = 1'b1;
      end
    end
  end
always 
 @(posedge clk or posedge _zy_sva_enable_unenc_keys_6_reset_or)
  begin
   if (_zy_sva_enable_unenc_keys_6_reset_or)
    begin
    end
   else
    begin:_zy_sva_sblk_6_1
     bit _zy_sva_nts_6_1_pass;
     _zy_sva_nts_6_1_pass = _zy_sva_b5;
     _zy_sva_enable_unenc_keys_6_ccheck = 1'b1;
     if (_zy_sva_nts_6_1_pass)
      begin
       _zy_sva_enable_unenc_keys_6_cpass = 1'b1;
      end
    end
  end
always 
 @(posedge clk or posedge _zy_sva_disable_unenc_keys_7_reset_or)
  begin
   if (_zy_sva_disable_unenc_keys_7_reset_or)
    begin
    end
   else
    begin:_zy_sva_sblk_7_1
     bit _zy_sva_nts_7_1_pass;
     _zy_sva_nts_7_1_pass = _zy_sva_b6;
     _zy_sva_disable_unenc_keys_7_ccheck = 1'b1;
     if (_zy_sva_nts_7_1_pass)
      begin
       _zy_sva_disable_unenc_keys_7_cpass = 1'b1;
      end
    end
  end
always 
 @(posedge clk or posedge _zy_sva_enable_unenc_keys_8_reset_or)
  begin
   if (_zy_sva_enable_unenc_keys_8_reset_or)
    begin
    end
   else
    begin:_zy_sva_sblk_8_1
     bit _zy_sva_nts_8_1_pass;
     _zy_sva_nts_8_1_pass = _zy_sva_b7;
     _zy_sva_enable_unenc_keys_8_ccheck = 1'b1;
     if (_zy_sva_nts_8_1_pass)
      begin
       _zy_sva_enable_unenc_keys_8_cpass = 1'b1;
      end
    end
  end
always 
 @(posedge clk or posedge _zy_sva_disable_unenc_keys_9_reset_or)
  begin
   if (_zy_sva_disable_unenc_keys_9_reset_or)
    begin
    end
   else
    begin:_zy_sva_sblk_9_1
     bit _zy_sva_nts_9_1_pass;
     _zy_sva_nts_9_1_pass = _zy_sva_b8;
     _zy_sva_disable_unenc_keys_9_ccheck = 1'b1;
     if (_zy_sva_nts_9_1_pass)
      begin
       _zy_sva_disable_unenc_keys_9_cpass = 1'b1;
      end
    end
  end
always 
 @(posedge clk or posedge _zy_sva_enable_unenc_keys_10_reset_or)
  begin
   if (_zy_sva_enable_unenc_keys_10_reset_or)
    begin
    end
   else
    begin:_zy_sva_sblk_10_1
     bit _zy_sva_nts_10_1_pass;
     _zy_sva_nts_10_1_pass = _zy_sva_b9;
     _zy_sva_enable_unenc_keys_10_ccheck = 1'b1;
     if (_zy_sva_nts_10_1_pass)
      begin
       _zy_sva_enable_unenc_keys_10_cpass = 1'b1;
      end
    end
  end
always 
 @(posedge clk or negedge rst_n)
  begin
   if (( !rst_n ))
    begin
     cur_state <= PASSTHROUGH;
     kim_rd_q <= 1'b0;
    end
   else
    begin
     cur_state <= nxt_state;
     kim_rd_q <= kim_rd;
    end
  end
always 
 @(*)
  begin
   nxt_state = cur_state;
   case (cur_state)
    PASSTHROUGH:
     begin
      if (kimreader_parser_ack)
       begin
        if ((parser_kimreader_data.id == KME_DEBUG_KEYHDR))
         begin
          if (((aux_key_ctrl.dek_key_op == KDF) | (aux_key_ctrl.dak_key_op == KDF)))
          begin
          if (((aux_key_ctrl.kdf_mode == KDF_MODE_COMB_RGUID) | (aux_key_ctrl.kdf_mode == KDF_MODE_RGUID)))
          begin
          nxt_state = INSERT_RGUID0;
          end
          end
         end
        if ((parser_kimreader_data.id == KME_IVTWEAK))
         begin
          if (parser_kimreader_data.eoi)
          begin
          nxt_state = DEK_KIM_READ;
          end
         end
       end
     end
    INSERT_RGUID0:
     begin
      if (ckvreader_kimreader_ack)
       begin
        nxt_state = INSERT_RGUID1;
       end
     end
    INSERT_RGUID1:
     begin
      if (ckvreader_kimreader_ack)
       begin
        nxt_state = INSERT_RGUID2;
       end
     end
    INSERT_RGUID2:
     begin
      if (ckvreader_kimreader_ack)
       begin
        nxt_state = INSERT_RGUID3;
       end
     end
    INSERT_RGUID3:
     begin
      if (ckvreader_kimreader_ack)
       begin
        nxt_state = PASSTHROUGH;
       end
     end
    DEK_KIM_READ:
     begin
      if (kim_rd)
       begin
        nxt_state = DAK_KIM_READ;
       end
     end
    DAK_KIM_READ:
     begin
      if (kim_rd)
       begin
        nxt_state = TX_KIM_ENTRIES;
       end
     end
    TX_KIM_ENTRIES:
     begin
      if (kimreader_ckvreader_valid)
       begin
        if (kimreader_ckvreader_data.eoi)
         begin
          if (ckvreader_kimreader_ack)
          begin
          nxt_state = PASSTHROUGH;
          end
         end
       end
     end
   endcase
  end
always 
 @(*)
  begin
   drng_ack = 1'b0;
   kimreader_parser_ack = 1'b0;
   kimreader_ckvreader_valid = 1'b0;
   kimreader_ckvreader_data = 71'b0;
   kim_rd = 1'b0;
   kim_addr = 14'b0;
   aux_key_ctrl = parser_kimreader_data.tdata[31:0];
   tlv_word0 = parser_kimreader_data.tdata;
   tlv_word8 = 64'b0;
   tlv_word9 = 64'b0;
   tlv_word42 = parser_kimreader_data.tdata;
   tlv_word42.error_code = kim_errors_q;
   case (cur_state)
    PASSTHROUGH:
     begin
      kimreader_ckvreader_valid = parser_kimreader_valid;
      kimreader_ckvreader_data = parser_kimreader_data;
      kimreader_parser_ack = ckvreader_kimreader_ack;
      if ((parser_kimreader_data.id == KME_ERROR))
       begin
        kimreader_ckvreader_data.tdata = tlv_word42;
       end
     end
    INSERT_RGUID0,
    INSERT_RGUID1,
    INSERT_RGUID2,
    INSERT_RGUID3:
     begin
      if (parser_kimreader_valid)
       begin
        if (drng_valid)
         begin
          kimreader_ckvreader_valid = 1'b1;
          kimreader_ckvreader_data = parser_kimreader_data;
          kimreader_parser_ack = ckvreader_kimreader_ack;
          case (cur_state)
          INSERT_RGUID0:
          kimreader_ckvreader_data.tdata = drng_256_out[127:64];
          INSERT_RGUID1:
          kimreader_ckvreader_data.tdata = drng_256_out[63:0];
          INSERT_RGUID2:
          kimreader_ckvreader_data.tdata = drng_256_out[127:64];
          INSERT_RGUID3:
          kimreader_ckvreader_data.tdata = drng_256_out[63:0];
          endcase
          case (cur_state)
          INSERT_RGUID1:
          drng_ack = ckvreader_kimreader_ack;
          INSERT_RGUID3:
          drng_ack = ckvreader_kimreader_ack;
          endcase
         end
        else
         if (drng_seed_expired)
          begin
          kimreader_ckvreader_valid = 1'b1;
          kimreader_ckvreader_data = parser_kimreader_data;
          kimreader_parser_ack = ckvreader_kimreader_ack;
          end
       end
     end
    DEK_KIM_READ:
     begin
      kim_rd = 1'b1;
      kim_addr = dek_ref_q;
     end
    DAK_KIM_READ:
     begin
      kim_rd = 1'b1;
      kim_addr = dak_ref_q;
     end
    TX_KIM_ENTRIES:
     begin
      tlv_word8 = parser_kimreader_data.tdata;
      tlv_word8.dek_kim_entry = (tlv_word8.validate_dek ? dek_kim_entry_q : 38'b0);
      tlv_word9 = parser_kimreader_data.tdata;
      tlv_word9.dak_kim_entry = (tlv_word9.validate_dak ? dak_kim_entry_q : 38'b0);
      if ((parser_kimreader_data.id == KME_KIM))
       begin
        kimreader_ckvreader_valid = 1'b1;
        kimreader_ckvreader_data = parser_kimreader_data;
        kimreader_parser_ack = ckvreader_kimreader_ack;
        if ((parser_kimreader_data.eoi == 1'b0))
         begin
          kimreader_ckvreader_data.tdata = tlv_word8;
         end
        else
         begin
          kimreader_ckvreader_data.tdata = tlv_word9;
         end
       end
     end
   endcase
  end
always 
 @(posedge clk or negedge rst_n)
  begin
   if (( !rst_n ))
    begin
     aux_key_type <= NO_AUX_KEY;
     kim_errors_q <= NO_ERRORS;
     dek_ref_q <= 14'b0;
     dak_ref_q <= 14'b0;
     dek_is_kdf_key_q <= 1'b0;
     dak_is_kdf_key_q <= 1'b0;
     stat_req_with_expired_seed <= 1'b0;
     stat_aux_key_type_0 <= 1'b0;
     stat_aux_key_type_1 <= 1'b0;
     stat_aux_key_type_2 <= 1'b0;
     stat_aux_key_type_3 <= 1'b0;
     stat_aux_key_type_4 <= 1'b0;
     stat_aux_key_type_5 <= 1'b0;
     stat_aux_key_type_6 <= 1'b0;
     stat_aux_key_type_7 <= 1'b0;
     stat_aux_key_type_8 <= 1'b0;
     stat_aux_key_type_9 <= 1'b0;
     stat_aux_key_type_10 <= 1'b0;
     stat_aux_key_type_11 <= 1'b0;
     stat_aux_key_type_12 <= 1'b0;
     stat_aux_key_type_13 <= 1'b0;
     stat_aux_cmd_with_vf_pf_fail <= 1'b0;
    end
   else
    begin
     stat_req_with_expired_seed <= 1'b0;
     stat_aux_key_type_0 <= 1'b0;
     stat_aux_key_type_1 <= 1'b0;
     stat_aux_key_type_2 <= 1'b0;
     stat_aux_key_type_3 <= 1'b0;
     stat_aux_key_type_4 <= 1'b0;
     stat_aux_key_type_5 <= 1'b0;
     stat_aux_key_type_6 <= 1'b0;
     stat_aux_key_type_7 <= 1'b0;
     stat_aux_key_type_8 <= 1'b0;
     stat_aux_key_type_9 <= 1'b0;
     stat_aux_key_type_10 <= 1'b0;
     stat_aux_key_type_11 <= 1'b0;
     stat_aux_key_type_12 <= 1'b0;
     stat_aux_key_type_13 <= 1'b0;
     stat_aux_cmd_with_vf_pf_fail <= 1'b0;
     if (kimreader_parser_ack)
      begin
       if ((parser_kimreader_data.id == KME_WORD0))
        begin
         aux_key_type <= tlv_word0.key_type;
         case (tlv_word0.key_type)
          DEK256,
          DEK512,
          DAK,
          DEK256_DAK,
          DEK512_DAK:
          kim_errors_q <= (disable_unencrypted_keys ? KME_UNSUPPORTED_KEY_TYPE : NO_ERRORS);
          NO_AUX_KEY:
          kim_errors_q <= (tlv_word0.keyless_algos ? NO_ERRORS : KME_UNSUPPORTED_KEY_TYPE);
          default:
          kim_errors_q <= NO_ERRORS;
         endcase
        end
       if ((parser_kimreader_data.id == KME_DEBUG_KEYHDR))
        begin
         dek_ref_q <= aux_key_ctrl.dek_key_ref;
         dak_ref_q <= aux_key_ctrl.dak_key_ref;
         dek_is_kdf_key_q <= (aux_key_ctrl.dek_key_op == KDF);
         dak_is_kdf_key_q <= (aux_key_ctrl.dak_key_op == KDF);
        end
       if ((parser_kimreader_data.id == KME_KIM))
        begin
         if ((aux_key_type != NO_AUX_KEY))
          begin
          if ((parser_kimreader_data.eoi == 1'b0))
          begin
          if ((tlv_word8.missing_guid || tlv_word8.missing_iv))
          begin
          kim_errors_q <= KME_UNSUPPORTED_KEY_TYPE;
          end
          else
          begin
          if (tlv_word8.validate_dek)
          begin
          if (tlv_word8.dek_kim_entry.pf_num[3])
          begin
          begin:_zypbctfiCscp0_L438_dek_needs_kek
          aux_key_type_e _zykey_type_L554_tfiV0;
          _zykey_type_L554_tfiV0 = aux_key_type;
          case (_zykey_type_L554_tfiV0)
          ENC_DEK256,
          ENC_DEK512,
          ENC_DEK256_DAK,
          ENC_DEK512_DAK,
          ENC_DEK256_DAK_COMB,
          ENC_DEK512_DAK_COMB:
          _zyL438_tfiRv4 = 1'b1;
          default:
          _zyL438_tfiRv4 = 1'b0;
          endcase
          end
          if (( ~_zyL438_tfiRv4 ))
          begin
          kim_errors_q <= KME_DEK_ILLEGAL_KEK_USAGE;
          end
          end
          else
          begin
          begin:_zypbctfiCscp1_L444_dek_needs_kek
          aux_key_type_e _zykey_type_L554_tfiV0;
          _zykey_type_L554_tfiV0 = aux_key_type;
          case (_zykey_type_L554_tfiV0)
          ENC_DEK256,
          ENC_DEK512,
          ENC_DEK256_DAK,
          ENC_DEK512_DAK,
          ENC_DEK256_DAK_COMB,
          ENC_DEK512_DAK_COMB:
          _zyL444_tfiRv5 = 1'b1;
          default:
          _zyL444_tfiRv5 = 1'b0;
          endcase
          end
          if (_zyL444_tfiRv5)
          begin
          kim_errors_q <= KME_DEK_ILLEGAL_KEK_USAGE;
          end
          end
          if ((tlv_word8.pf_num[0] != tlv_word8.dek_kim_entry.pf_num[0]))
          kim_errors_q <= KME_DEK_PF_VF_VAL_ERR;
          if ((tlv_word8.vf_valid != tlv_word8.dek_kim_entry.vf_valid))
          kim_errors_q <= KME_DEK_PF_VF_VAL_ERR;
          if (tlv_word8.vf_valid)
          begin
          if ((tlv_word8.vf_num != tlv_word8.dek_kim_entry.vf_num))
          begin
          kim_errors_q <= KME_DEK_PF_VF_VAL_ERR;
          end
          end
          if ((tlv_word8.dek_kim_entry.valid == 1'b0))
          kim_errors_q <= KME_DEK_INV_KIM;
          end
          end
          end
          else
          begin
          if (tlv_word9.validate_dak)
          begin
          if (tlv_word9.dak_kim_entry.pf_num[3])
          begin
          begin:_zypbctfiCscp2_L468_dak_needs_kek
          aux_key_type_e _zykey_type_L566_tfiV2;
          _zykey_type_L566_tfiV2 = aux_key_type;
          case (_zykey_type_L566_tfiV2)
          ENC_DAK,
          ENC_DEK256_DAK,
          ENC_DEK512_DAK,
          ENC_DEK256_DAK_COMB,
          ENC_DEK512_DAK_COMB:
          _zyL468_tfiRv6 = 1'b1;
          default:
          _zyL468_tfiRv6 = 1'b0;
          endcase
          end
          if (( ~_zyL468_tfiRv6 ))
          begin
          kim_errors_q <= KME_DAK_ILLEGAL_KEK_USAGE;
          end
          end
          else
          begin
          begin:_zypbctfiCscp3_L473_dak_needs_kek
          aux_key_type_e _zykey_type_L566_tfiV2;
          _zykey_type_L566_tfiV2 = aux_key_type;
          case (_zykey_type_L566_tfiV2)
          ENC_DAK,
          ENC_DEK256_DAK,
          ENC_DEK512_DAK,
          ENC_DEK256_DAK_COMB,
          ENC_DEK512_DAK_COMB:
          _zyL473_tfiRv7 = 1'b1;
          default:
          _zyL473_tfiRv7 = 1'b0;
          endcase
          end
          if (_zyL473_tfiRv7)
          begin
          kim_errors_q <= KME_DAK_ILLEGAL_KEK_USAGE;
          end
          end
          if ((tlv_word9.pf_num[0] != tlv_word9.dak_kim_entry.pf_num[0]))
          kim_errors_q <= KME_DAK_PF_VF_VAL_ERR;
          if ((tlv_word9.vf_valid != tlv_word9.dak_kim_entry.vf_valid))
          kim_errors_q <= KME_DAK_PF_VF_VAL_ERR;
          if (tlv_word9.vf_valid)
          begin
          if ((tlv_word9.vf_num != tlv_word9.dak_kim_entry.vf_num))
          begin
          kim_errors_q <= KME_DAK_PF_VF_VAL_ERR;
          end
          end
          if ((tlv_word9.dak_kim_entry.valid == 1'b0))
          kim_errors_q <= KME_DAK_INV_KIM;
          end
          end
          end
        end
       if ((parser_kimreader_data.id == KME_DEK_CKV0))
        begin
         if (parser_kimreader_data.eoi)
          begin
          case (aux_key_type)
          NO_AUX_KEY:
          stat_aux_key_type_0 <= 1'b1;
          AUX_KEY_ONLY:
          stat_aux_key_type_1 <= 1'b1;
          DEK256:
          stat_aux_key_type_2 <= 1'b1;
          DEK512:
          stat_aux_key_type_3 <= 1'b1;
          DAK:
          stat_aux_key_type_4 <= 1'b1;
          DEK256_DAK:
          stat_aux_key_type_5 <= 1'b1;
          DEK512_DAK:
          stat_aux_key_type_6 <= 1'b1;
          ENC_DEK256:
          stat_aux_key_type_7 <= 1'b1;
          ENC_DEK512:
          stat_aux_key_type_8 <= 1'b1;
          ENC_DAK:
          stat_aux_key_type_9 <= 1'b1;
          ENC_DEK256_DAK:
          stat_aux_key_type_10 <= 1'b1;
          ENC_DEK512_DAK:
          stat_aux_key_type_11 <= 1'b1;
          ENC_DEK256_DAK_COMB:
          stat_aux_key_type_12 <= 1'b1;
          ENC_DEK512_DAK_COMB:
          stat_aux_key_type_13 <= 1'b1;
          endcase
          if ((kim_errors_q == KME_DEK_PF_VF_VAL_ERR))
          stat_aux_cmd_with_vf_pf_fail <= 1'b1;
          if ((kim_errors_q == KME_DAK_PF_VF_VAL_ERR))
          stat_aux_cmd_with_vf_pf_fail <= 1'b1;
          end
        end
       if ((parser_kimreader_data.id == KME_DEK_CKV1))
        begin
         if ((dek_kim_mbe_q | dak_kim_mbe_q))
          begin
          kim_errors_q <= KME_ECC_FAIL;
          end
        end
      end
    end
  end
always 
 @(posedge clk or negedge rst_n)
  begin
   if (( !rst_n ))
    begin
     dek_kim_entry_q <= 38'b0;
     dak_kim_entry_q <= 38'b0;
     dek_kim_mbe_q <= 1'b0;
     dak_kim_mbe_q <= 1'b0;
    end
   else
    if (kim_rd_q)
     begin
      if ((cur_state == DAK_KIM_READ))
       {dek_kim_mbe_q,dek_kim_entry_q} <= {kim_mbe,kim_dout};
      if ((cur_state == TX_KIM_ENTRIES))
       {dak_kim_mbe_q,dak_kim_entry_q} <= {kim_mbe,kim_dout};
     end
    else
     if (kimreader_ckvreader_valid)
      begin
       if ((kimreader_ckvreader_data.id == KME_ERROR))
        begin
         if (ckvreader_kimreader_ack)
          begin
          dek_kim_entry_q <= 38'b0;
          dak_kim_entry_q <= 38'b0;
          dek_kim_mbe_q <= 1'b0;
          dak_kim_mbe_q <= 1'b0;
          end
        end
      end
  end
initial 
 begin
 end
genvar nn$73; 
for ( nn$73 = 2 ; (nn$73 <= 6) ; nn$73 = (nn$73 + 1) ) begin: key_type_enc_dek
end
genvar nn$74; 
// pragma cva_vlog_forgen key_type_enc_dek 
for ( nn$74 = 2 ; (nn$74 <= 2) ; nn$74 = (nn$74 + 1) ) begin: key_type_enc_dek_2_
 localparam integer nn = 2;
  axis_assert("disable_unenc_keys",1'b0,2'b10,,,,,,,_zy_sva_disable_unenc_keys_1_cpass,,_zy_sva_disable_unenc_keys_1_ccheck,,"/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kim_drng_reader.v",591,3'b000);
 disable_unenc_keys:cover property (@( posedge clk ) disable iff ((rst_n !== 32'b01)) (((parser_kimreader_data.id == KME_WORD0) && disable_unencrypted_keys) && (tlv_word0.key_type == 32'b010)))
    begin
  end
  axis_assert("enable_unenc_keys",1'b0,2'b10,,,,,,,_zy_sva_enable_unenc_keys_2_cpass,,_zy_sva_enable_unenc_keys_2_ccheck,,"/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kim_drng_reader.v",596,3'b000);
 enable_unenc_keys:cover property (@( posedge clk ) disable iff ((rst_n !== 32'b01)) (((parser_kimreader_data.id == KME_WORD0) && ( !disable_unencrypted_keys )) && (tlv_word0.key_type == 32'b010)))
    begin
  end
end
genvar nn$75; 
// pragma cva_vlog_forgen key_type_enc_dek 
for ( nn$75 = 3 ; (nn$75 <= 3) ; nn$75 = (nn$75 + 1) ) begin: key_type_enc_dek_3_
 localparam integer nn = 3;
  axis_assert("disable_unenc_keys",1'b0,2'b10,,,,,,,_zy_sva_disable_unenc_keys_3_cpass,,_zy_sva_disable_unenc_keys_3_ccheck,,"/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kim_drng_reader.v",591,3'b000);
 disable_unenc_keys:cover property (@( posedge clk ) disable iff ((rst_n !== 32'b01)) (((parser_kimreader_data.id == KME_WORD0) && disable_unencrypted_keys) && (tlv_word0.key_type == 32'b011)))
    begin
  end
  axis_assert("enable_unenc_keys",1'b0,2'b10,,,,,,,_zy_sva_enable_unenc_keys_4_cpass,,_zy_sva_enable_unenc_keys_4_ccheck,,"/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kim_drng_reader.v",596,3'b000);
 enable_unenc_keys:cover property (@( posedge clk ) disable iff ((rst_n !== 32'b01)) (((parser_kimreader_data.id == KME_WORD0) && ( !disable_unencrypted_keys )) && (tlv_word0.key_type == 32'b011)))
    begin
  end
end
genvar nn$76; 
// pragma cva_vlog_forgen key_type_enc_dek 
for ( nn$76 = 4 ; (nn$76 <= 4) ; nn$76 = (nn$76 + 1) ) begin: key_type_enc_dek_4_
 localparam integer nn = 4;
  axis_assert("disable_unenc_keys",1'b0,2'b10,,,,,,,_zy_sva_disable_unenc_keys_5_cpass,,_zy_sva_disable_unenc_keys_5_ccheck,,"/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kim_drng_reader.v",591,3'b000);
 disable_unenc_keys:cover property (@( posedge clk ) disable iff ((rst_n !== 32'b01)) (((parser_kimreader_data.id == KME_WORD0) && disable_unencrypted_keys) && (tlv_word0.key_type == 32'b0100)))
    begin
  end
  axis_assert("enable_unenc_keys",1'b0,2'b10,,,,,,,_zy_sva_enable_unenc_keys_6_cpass,,_zy_sva_enable_unenc_keys_6_ccheck,,"/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kim_drng_reader.v",596,3'b000);
 enable_unenc_keys:cover property (@( posedge clk ) disable iff ((rst_n !== 32'b01)) (((parser_kimreader_data.id == KME_WORD0) && ( !disable_unencrypted_keys )) && (tlv_word0.key_type == 32'b0100)))
    begin
  end
end
genvar nn$77; 
// pragma cva_vlog_forgen key_type_enc_dek 
for ( nn$77 = 5 ; (nn$77 <= 5) ; nn$77 = (nn$77 + 1) ) begin: key_type_enc_dek_5_
 localparam integer nn = 5;
  axis_assert("disable_unenc_keys",1'b0,2'b10,,,,,,,_zy_sva_disable_unenc_keys_7_cpass,,_zy_sva_disable_unenc_keys_7_ccheck,,"/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kim_drng_reader.v",591,3'b000);
 disable_unenc_keys:cover property (@( posedge clk ) disable iff ((rst_n !== 32'b01)) (((parser_kimreader_data.id == KME_WORD0) && disable_unencrypted_keys) && (tlv_word0.key_type == 32'b0101)))
    begin
  end
  axis_assert("enable_unenc_keys",1'b0,2'b10,,,,,,,_zy_sva_enable_unenc_keys_8_cpass,,_zy_sva_enable_unenc_keys_8_ccheck,,"/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kim_drng_reader.v",596,3'b000);
 enable_unenc_keys:cover property (@( posedge clk ) disable iff ((rst_n !== 32'b01)) (((parser_kimreader_data.id == KME_WORD0) && ( !disable_unencrypted_keys )) && (tlv_word0.key_type == 32'b0101)))
    begin
  end
end
genvar nn$78; 
// pragma cva_vlog_forgen key_type_enc_dek 
for ( nn$78 = 6 ; (nn$78 <= 6) ; nn$78 = (nn$78 + 1) ) begin: key_type_enc_dek_6_
 localparam integer nn = 6;
  axis_assert("disable_unenc_keys",1'b0,2'b10,,,,,,,_zy_sva_disable_unenc_keys_9_cpass,,_zy_sva_disable_unenc_keys_9_ccheck,,"/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kim_drng_reader.v",591,3'b000);
 disable_unenc_keys:cover property (@( posedge clk ) disable iff ((rst_n !== 32'b01)) (((parser_kimreader_data.id == KME_WORD0) && disable_unencrypted_keys) && (tlv_word0.key_type == 32'b0110)))
    begin
  end
  axis_assert("enable_unenc_keys",1'b0,2'b10,,,,,,,_zy_sva_enable_unenc_keys_10_cpass,,_zy_sva_enable_unenc_keys_10_ccheck,,"/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kim_drng_reader.v",596,3'b000);
 enable_unenc_keys:cover property (@( posedge clk ) disable iff ((rst_n !== 32'b01)) (((parser_kimreader_data.id == KME_WORD0) && ( !disable_unencrypted_keys )) && (tlv_word0.key_type == 32'b0110)))
    begin
  end
end
endmodule
