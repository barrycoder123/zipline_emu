// xc_work/v/103.sv
// /home/ibarry/Project-Zipline-master/rtl/common/nx_library/nx_interface_monitor.v:31
// NOTE: This file corresponds to a module in the Hardware/DUT partition.
`timescale 1ns/1ns
(* celldefine = 1 *)
module nx_interface_monitor_xcm104(stat_code,stat_datawords,stat_addr,capability_lst,capability_type,rd_dat,bimc_odat,bimc_osync,ro_uncorrectable_ecc_error,im_rdy,
im_available,im_status,clk,rst_n,reg_addr,cmnd_op,cmnd_addr,wr_stb,wr_dat,ovstb,lvm,mlvm,
mrdten,bimc_rst_n,bimc_isync,bimc_idat,im_din,im_vld,im_consumed,im_config);
// pkg external : PKG - nx_mem_typePKG : ENUM_LIT - TRUE
// pkg external : PKG - nx_mem_typePKG : ENUM_LIT - FALSE
// pkg external : PKG - nx_mem_typePKG : DTYPE  
// pkg external : PKG - nx_mem_typePKG : ENUM_LIT - SPRAM
// external : u_ram.g.u_ram.get_backdoor (resolved )  (task)  
// external : u_ram.g.u_ram.set_backdoor (resolved )  (task)  
// pragma multiple_driver_resolution
parameter IN_FLIGHT = 5;
parameter IN_FLIGHT_USE = 0;
parameter CMND_ADDRESS = 11'b01010000;
parameter STAT_ADDRESS = 11'b01000000;
parameter IMRD_ADDRESS = 11'b01101000;
parameter ALIGNMENT = 2;
parameter N_TIMER_BITS = 6;
parameter N_REG_ADDR_BITS = 11;
parameter N_DATA_BITS = 96;
parameter N_ENTRIES = 512;
parameter N_INIT_INC_BITS = 0;
parameter SPECIALIZE = 1;
parameter LATCH = 0;
parameter reg [95:0] RAM_MASK  = 96'b111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111;
parameter reg [95:0] RESET_DATA  = 96'b0;
localparam N_RAM_BITS = 32'sb01100000;
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
 logic [1:0] mode ;
 logic [9:0] wr_credit_config ;
} im_config_t;
typedef struct packed {
 im_available_t available;
 logic overflow;
 logic [8:0] wr_pointer ;
} im_status_t;
input  clk;
input  rst_n;
input  [10:0] reg_addr ;
input  [3:0] cmnd_op ;
input  [8:0] cmnd_addr ;
output logic [2:0] stat_code ;
output logic [4:0] stat_datawords ;
output logic [8:0] stat_addr ;
output logic [15:0] capability_lst ;
output logic [3:0] capability_type ;
input  wr_stb;
input  [95:0] wr_dat ;
output logic [95:0] rd_dat ;
input  ovstb;
input  lvm;
input  mlvm;
input  mrdten;
input  bimc_rst_n;
input  bimc_isync;
input  bimc_idat;
output logic bimc_odat;
output logic bimc_osync;
output logic ro_uncorrectable_ecc_error;
input im_din_t im_din;
input  im_vld;
output  im_rdy;
output im_available_t im_available;
input im_consumed_t im_consumed;
input im_config_t im_config;
output im_status_t im_status;
typedef struct packed {
 logic dis_used;
 logic dis_return;
 logic [9:0] credit_limit ;
} sw_config_t;
typedef struct packed {
 logic used_err;
 logic return_err;
 logic [9:0] credit_issued ;
} hw_status_t;
import nx_mem_typePKG::* ;
localparam nx_mem_typePKG::capabilities_t capabilities_t_set = 16'b1100000101111111;
localparam N_ENTRIES_HALF = 256;
logic [3:0] im_din_space_avail ;
im_din_t im_din_dly;
logic im_din_empty;
logic im_din_full;
logic im_din_rd;
im_available_t im_available_pre;
logic enable;
logic yield;
logic [8:0] sw_add ;
logic sw_cs;
logic [95:0] sw_wdat ;
logic sw_we;
logic [8:0] add ;
logic [95:0] bwe ;
logic cs;
logic [95:0] din ;
logic we;
logic [95:0] dout ;
logic [8:0] hw_add ;
logic hw_we;
logic hw_cs;
logic [95:0] hw_din ;
logic hw_yield;
logic [8:0] credit_available ;
logic [8:0] credit_return ;
logic [8:0] credit_used ;
logic im_rd_stb;
logic ready;
logic bank_status;
logic im_vld_qual;
logic sw_init;
logic [8:0] wr_pointer ;
logic im_vld_dly;
logic overflow;
logic im_vld_mod;
logic im_vld_if;
im_consumed_t im_consumed_reg;
hw_status_t hw_status;
sw_config_t sw_config;
logic [95:0] ram_din ;
logic [95:0] ram_bwe ;
logic [95:0] ram_dout ;
logic [8:0] addr_limit ;
wire  [0:2] _zy_simnet_stat_code_0_w$ ;
wire  [0:4] _zy_simnet_stat_datawords_1_w$ ;
wire  [0:8] _zy_simnet_stat_addr_2_w$ ;
wire  [0:15] _zy_simnet_capability_lst_3_w$ ;
wire  [0:3] _zy_simnet_capability_type_4_w$ ;
wire  [0:95] _zy_simnet_rd_dat_5_w$ ;
wire  _zy_simnet_bimc_odat_6_w$;
wire  _zy_simnet_bimc_osync_7_w$;
wire  _zy_simnet_ro_uncorrectable_ecc_error_8_w$;
wire  [0:1] _zy_simnet_im_available_9_w$ ;
wire  [0:11] _zy_simnet_im_status_10_w$ ;
wire  [0:95] _zy_simnet_im_din_dly_11_w$ ;
wire  _zy_simnet_im_din_full_12_w$;
wire  _zy_simnet_im_din_empty_13_w$;
wire  _zy_simnet_im_vld_if_14_w$;
wire  _zy_simnet_im_din_rd_15_w$;
wire  [0:3] _zy_simnet_im_din_space_avail_16_w$ ;
wire  [0:8] _zy_simnet_credit_available_17_w$ ;
wire  [0:11] _zy_simnet_hw_status_18_w$ ;
wire  _zy_simnet_sw_init_19_w$;
wire  [0:8] _zy_simnet_credit_return_20_w$ ;
wire  [0:8] _zy_simnet_credit_used_21_w$ ;
wire  [0:11] _zy_simnet_sw_config_22_w$ ;
wire  _zy_simnet_bimc_odat_23_w$;
wire  _zy_simnet_bimc_osync_24_w$;
wire  _zy_simnet_ro_uncorrectable_ecc_error_25_w$;
wire  [0:95] _zy_simnet_ram_bwe_26_w$ ;
wire  [0:95] _zy_simnet_ram_din_27_w$ ;
wire  [0:8] _zy_simnet_add_28_w$ ;
wire  _zy_simnet_cs_29_w$;
wire  _zy_simnet_we_30_w$;
wire  [0:95] _zy_simnet_ram_dout_31_w$ ;
wire  _zy_simnet_cio_32;
wire  [0:2] _zy_simnet_stat_code_33_w$ ;
wire  [0:4] _zy_simnet_stat_datawords_34_w$ ;
wire  [0:8] _zy_simnet_stat_addr_35_w$ ;
wire  _zy_simnet_dio_36;
wire  [0:15] _zy_simnet_capability_lst_37_w$ ;
wire  [0:3] _zy_simnet_capability_type_38_w$ ;
wire  _zy_simnet_enable_39_w$;
wire  [0:8] _zy_simnet_addr_limit_40_w$ ;
wire  [0:95] _zy_simnet_rd_dat_41_w$ ;
wire  _zy_simnet_sw_cs_42_w$;
wire  _zy_simnet_dio_43;
wire  _zy_simnet_sw_we_44_w$;
wire  [0:8] _zy_simnet_sw_add_45_w$ ;
wire  [0:95] _zy_simnet_sw_wdat_46_w$ ;
wire  [0:95] _zy_simnet_dout_47_w$ ;
wire  _zy_simnet_cio_48;
wire  [0:7] _zy_simnet_cio_49 ;
wire  _zy_simnet_tvar_50;
wire  _zy_simnet_yield_51_w$;
wire  _zy_simnet_dio_52;
// F59, L202
assign  im_vld_mod = (im_vld & im_rdy);
// F59, L208
assign  im_vld_dly = (( ~im_din_empty ) && (credit_available != 32'b0));
// F59, L209
ixc_assign  #(1) _zz_strnp_0 (im_din_rd,im_vld_dly);
// F59, L211
ixc_assign  #(1) _zz_strnp_1 (im_vld_if,im_vld_mod);
// F59, L236
assign  sw_init = ((im_config.mode == 2'b11) ? 1'b1 : 1'b0);
// F59, L242
assign  wr_pointer = ((hw_add == 32'b0) ? 32'b0111111111 : (hw_add - 32'b01));
// F59, L245
assign  sw_config.dis_used = 1'b0;
// F59, L246
assign  sw_config.dis_return = 1'b0;
// F59, L247
ixc_assign  #(10) _zz_strnp_2 (sw_config.credit_limit,im_config.wr_credit_config);
// F59, L248
assign  im_available_pre.bank_lo = (ready & ( !bank_status ));
// F59, L249
assign  im_available_pre.bank_hi = (ready & bank_status);
// F59, L250
ixc_assign  #(1) _zz_strnp_3 (im_status.overflow,overflow);
// F59, L251
ixc_assign  #(9) _zz_strnp_4 (im_status.wr_pointer,wr_pointer);
// F59, L252
ixc_assign  #(2) _zz_strnp_5 (im_status.available,im_available_pre);
// F59, L255
assign  im_rd_stb = (((wr_stb && (reg_addr == 11'b01101000)) | im_consumed_reg.bank_lo) | im_consumed_reg.bank_hi);
// F59, L267
assign  im_rdy = ((im_config.mode == 2'b0) ? 1'b1 : ((im_config.mode == 2'b01) ? 1'b1 : ((im_config.mode == 2'b10) ? ((im_din_space_avail > 32'b0101) & ( ~hw_yield )) : 1'b1)));
// F59, L273
assign  ready = ((im_config.mode == 2'b0) ? ( | hw_status.credit_issued ) : ((im_config.mode == 2'b01) ? ( | hw_status.credit_issued ) : ((im_config.mode == 2'b10) ? (hw_status.credit_issued >= 32'b0100000000) : 1'b0)));
// F59, L279
assign  im_vld_qual = ((im_config.mode == 2'b0) ? (im_vld_dly & ( | credit_available )) : ((im_config.mode == 2'b01) ? im_vld_dly : ((im_config.mode == 2'b10) ? im_vld_dly : 1'b0)));
// F59, L286
ixc_assign  #(1) _zz_strnp_6 (hw_cs,im_vld_qual);
// F59, L287
ixc_assign  #(1) _zz_strnp_7 (hw_we,im_vld_qual);
// F59, L288
ixc_assign  #(96) _zz_strnp_8 (hw_din,im_din_dly);
// F59, L331
assign  cs = (hw_cs || sw_cs);
// F59, L332
assign  add = (hw_cs ? hw_add : sw_add);
// F59, L333
assign  bwe = 96'b111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111;
// F59, L334
assign  din = (hw_cs ? hw_din : sw_wdat);
// F59, L335
assign  we = (hw_cs ? hw_we : sw_we);
// F59, L337
ixc_assign  #(1) _zz_strnp_9 (hw_yield,yield);
// F59, L411
assign  ram_din = pack_ram(din);
// F59, L412
assign  ram_bwe = pack_ram(bwe);
// F59, L413
assign  dout = unpack_ram(ram_dout);
// F59, L428
assign  addr_limit = 9'b111111111;
// F59, L56
ixc_assign  #(3) _zz_strnp_10 (_zy_simnet_stat_code_0_w$,stat_code);
// F59, L56
ixc_assign  #(5) _zz_strnp_11 (_zy_simnet_stat_datawords_1_w$,stat_datawords);
// F59, L56
ixc_assign  #(9) _zz_strnp_12 (_zy_simnet_stat_addr_2_w$,stat_addr);
// F59, L56
ixc_assign  #(16) _zz_strnp_13 (_zy_simnet_capability_lst_3_w$,capability_lst);
// F59, L57
ixc_assign  #(4) _zz_strnp_14 (_zy_simnet_capability_type_4_w$,capability_type);
// F59, L57
ixc_assign  #(96) _zz_strnp_15 (_zy_simnet_rd_dat_5_w$,rd_dat);
// F59, L57
ixc_assign  #(1) _zz_strnp_16 (_zy_simnet_bimc_odat_6_w$,bimc_odat);
// F59, L57
ixc_assign  #(1) _zz_strnp_17 (_zy_simnet_bimc_osync_7_w$,bimc_osync);
// F59, L58
ixc_assign  #(1) _zz_strnp_18 (_zy_simnet_ro_uncorrectable_ecc_error_8_w$,ro_uncorrectable_ecc_error);
// F59, L58
ixc_assign  #(2) _zz_strnp_19 (_zy_simnet_im_available_9_w$,im_available);
// F59, L58
ixc_assign  #(12) _zz_strnp_20 (_zy_simnet_im_status_10_w$,im_status);
// F59, L224
ixc_assign  #(96) _zz_strnp_21 (im_din_dly,_zy_simnet_im_din_dly_11_w$);
// F59, L225
ixc_assign  #(1) _zz_strnp_22 (im_din_full,_zy_simnet_im_din_full_12_w$);
// F59, L226
ixc_assign  #(1) _zz_strnp_23 (im_din_empty,_zy_simnet_im_din_empty_13_w$);
// F59, L200
ixc_assign  #(1) _zz_strnp_24 (_zy_simnet_im_vld_if_14_w$,im_vld_if);
// F59, L155
ixc_assign  #(1) _zz_strnp_25 (_zy_simnet_im_din_rd_15_w$,im_din_rd);
// F59, L227
ixc_assign  #(4) _zz_strnp_26 (im_din_space_avail,_zy_simnet_im_din_space_avail_16_w$);
// F59, L362
ixc_assign  #(9) _zz_strnp_27 (credit_available,_zy_simnet_credit_available_17_w$);
// F59, L362
ixc_assign  #(12) _zz_strnp_28 (hw_status,_zy_simnet_hw_status_18_w$);
// F59, L193
ixc_assign  #(1) _zz_strnp_29 (_zy_simnet_sw_init_19_w$,sw_init);
// F59, L186
ixc_assign  #(9) _zz_strnp_30 (_zy_simnet_credit_return_20_w$,credit_return);
// F59, L187
ixc_assign  #(9) _zz_strnp_31 (_zy_simnet_credit_used_21_w$,credit_used);
// F59, L240
ixc_assign  #(12) _zz_strnp_32 (_zy_simnet_sw_config_22_w$,sw_config);
// F59, L420
ixc_assign  #(1) _zz_strnp_33 (bimc_odat,_zy_simnet_bimc_odat_23_w$);
// F59, L420
ixc_assign  #(1) _zz_strnp_34 (bimc_osync,_zy_simnet_bimc_osync_24_w$);
// F59, L420
ixc_assign  #(1) _zz_strnp_35 (ro_uncorrectable_ecc_error,_zy_simnet_ro_uncorrectable_ecc_error_25_w$);
// F59, L366
ixc_assign  #(96) _zz_strnp_36 (_zy_simnet_ram_bwe_26_w$,ram_bwe);
// F59, L365
ixc_assign  #(96) _zz_strnp_37 (_zy_simnet_ram_din_27_w$,ram_din);
// F59, L171
ixc_assign  #(9) _zz_strnp_38 (_zy_simnet_add_28_w$,add);
// F59, L173
ixc_assign  #(1) _zz_strnp_39 (_zy_simnet_cs_29_w$,cs);
// F59, L175
ixc_assign  #(1) _zz_strnp_40 (_zy_simnet_we_30_w$,we);
// F59, L422
ixc_assign  #(96) _zz_strnp_41 (ram_dout,_zy_simnet_ram_dout_31_w$);
// F59, L447
assign  _zy_simnet_cio_32 = 1'b0;
// F59, L454
ixc_assign  #(3) _zz_strnp_42 (stat_code,_zy_simnet_stat_code_33_w$);
// F59, L455
ixc_assign  #(5) _zz_strnp_43 (stat_datawords,_zy_simnet_stat_datawords_34_w$);
// F59, L456
ixc_assign  #(9) _zz_strnp_44 (stat_addr,_zy_simnet_stat_addr_35_w$);
// F59, L457
ixc_assign  #(16) _zz_strnp_45 (capability_lst,_zy_simnet_capability_lst_37_w$);
// F59, L458
ixc_assign  #(4) _zz_strnp_46 (capability_type,_zy_simnet_capability_type_38_w$);
// F59, L459
ixc_assign  #(1) _zz_strnp_47 (enable,_zy_simnet_enable_39_w$);
// F59, L427
ixc_assign  #(9) _zz_strnp_48 (_zy_simnet_addr_limit_40_w$,addr_limit);
// F59, L460
ixc_assign  #(96) _zz_strnp_49 (rd_dat,_zy_simnet_rd_dat_41_w$);
// F59, L461
ixc_assign  #(1) _zz_strnp_50 (sw_cs,_zy_simnet_sw_cs_42_w$);
// F59, L462
ixc_assign  #(1) _zz_strnp_51 (sw_we,_zy_simnet_sw_we_44_w$);
// F59, L463
ixc_assign  #(9) _zz_strnp_52 (sw_add,_zy_simnet_sw_add_45_w$);
// F59, L464
ixc_assign  #(96) _zz_strnp_53 (sw_wdat,_zy_simnet_sw_wdat_46_w$);
// F59, L176
ixc_assign  #(96) _zz_strnp_54 (_zy_simnet_dout_47_w$,dout);
// F59, L450
assign  _zy_simnet_cio_48 = 1'b0;
// F59, L451
assign  _zy_simnet_cio_49 = 8'b0;
// F59, L444
assign  _zy_simnet_tvar_50 = ( !hw_cs );
// F59, L465
ixc_assign  #(1) _zz_strnp_55 (yield,_zy_simnet_yield_51_w$);
// F59, L31
ixc_context_read #(105) _zzixc_ctxrd_0 ({stat_addr,rd_dat});
sync_fifo u_sync_fifo(
  .dout(_zy_simnet_im_din_dly_11_w$) ,
  .full(_zy_simnet_im_din_full_12_w$) ,
  .empty(_zy_simnet_im_din_empty_13_w$) ,
  .clk(clk) ,
  .rst_n(rst_n) ,
  .din(im_din) ,
  .wr_en(_zy_simnet_im_vld_if_14_w$) ,
  .rd_en(_zy_simnet_im_din_rd_15_w$) ,
  .space_avail(_zy_simnet_im_din_space_avail_16_w$) ); 
nx_credit_manager u_nx_credit_manager(_zy_simnet_credit_available_17_w$,_zy_simnet_hw_status_18_w$,clk,rst_n,_zy_simnet_sw_init_19_w$,_zy_simnet_credit_return_20_w$,_zy_simnet_credit_used_21_w$,_zy_simnet_sw_config_22_w$); 
nx_ram_1rw_xcm110 u_ram(clk,rst_n,ovstb,lvm,mlvm,mrdten,bimc_rst_n,bimc_isync,bimc_idat,_zy_simnet_bimc_odat_23_w$,
  _zy_simnet_bimc_osync_24_w$,_zy_simnet_ro_uncorrectable_ecc_error_25_w$,_zy_simnet_ram_bwe_26_w$,_zy_simnet_ram_din_27_w$,_zy_simnet_add_28_w$,_zy_simnet_cs_29_w$,_zy_simnet_we_30_w$,_zy_simnet_ram_dout_31_w$); 
nx_indirect_access_cntrl_xcm120 u_cntrl(
  .clk(clk) ,
  .rst_n(rst_n) ,
  .wr_stb(wr_stb) ,
  .reg_addr(reg_addr) ,
  .cmnd_op(cmnd_op) ,
  .cmnd_addr(cmnd_addr) ,
  .cmnd_table_id(_zy_simnet_cio_32) ,
  .stat_code(_zy_simnet_stat_code_33_w$) ,
  .stat_datawords(_zy_simnet_stat_datawords_34_w$) ,
  .stat_addr(_zy_simnet_stat_addr_35_w$) ,
  .stat_table_id(_zy_simnet_dio_36) ,
  .capability_lst(_zy_simnet_capability_lst_37_w$) ,
  .capability_type(_zy_simnet_capability_type_38_w$) ,
  .enable(_zy_simnet_enable_39_w$) ,
  .addr_limit(_zy_simnet_addr_limit_40_w$) ,
  .wr_dat(wr_dat) ,
  .rd_dat(_zy_simnet_rd_dat_41_w$) ,
  .sw_cs(_zy_simnet_sw_cs_42_w$) ,
  .sw_ce(_zy_simnet_dio_43) ,
  .sw_we(_zy_simnet_sw_we_44_w$) ,
  .sw_add(_zy_simnet_sw_add_45_w$) ,
  .sw_wdat(_zy_simnet_sw_wdat_46_w$) ,
  .sw_rdat(_zy_simnet_dout_47_w$) ,
  .sw_match(_zy_simnet_cio_48) ,
  .sw_aindex(_zy_simnet_cio_49) ,
  .grant(_zy_simnet_tvar_50) ,
  .yield(_zy_simnet_yield_51_w$) ,
  .reset(_zy_simnet_dio_52) ); 

function  [95:0] pack_ram;
 input reg [95:0] in ;
 // F59, L382
 begin:unmblk1
  int j;
  // F59, L384
  j = 0;
  // F59, L385
  begin:unmblk2
   int i;
   // F59, L385
   for (i = 0;(i < 96); i = (i + 1))
    // F59, L385
    begin
     // F59, L386
     if (RAM_MASK[i])
      // F59, L386
      begin
       // F59, L387
       pack_ram[j] = in[i];
       j = (j + 1);
      end
    end
  end
  return pack_ram;
 end
endfunction


function  [95:0] unpack_ram;
 input reg [95:0] in ;
 // F59, L397
 begin:unmblk3
  int j;
  // F59, L399
  j = 0;
  unpack_ram = 96'b0;
  // F59, L401
  begin:unmblk4
   int i;
   // F59, L401
   for (i = 0;(i < 96); i = (i + 1))
    // F59, L401
    begin
     // F59, L402
     if (RAM_MASK[i])
      // F59, L402
      begin
       // F59, L403
       unpack_ram[i] = in[j];
       j = (j + 1);
      end
    end
  end
  return unpack_ram;
 end
endfunction

// F59, L257
always_comb 
 // F59, L257
 begin
  // F59, L258
  credit_return = 9'b0;
  if (im_rd_stb)
   // F59, L259
   begin
    // F59, L260
    credit_return = 9'b100000000;
   end
 end
// F59, L292
always_ff 
 @(posedge clk or negedge rst_n)
  // F59, L292
  begin
   // F59, L293
   if (( !rst_n ))
    // F59, L293
    begin
     // F59, L296
     bank_status <= 1'b0;
     hw_add <= 9'b0;
     im_available <= 2'b0;
     im_consumed_reg <= 2'b0;
     overflow <= 1'b0;
    end
   else
    // F59, L303
    begin
     // F59, L304
     im_available <= im_available_pre;
     im_consumed_reg <= im_consumed;
     if (sw_init)
      // F59, L306
      begin
       // F59, L307
       bank_status <= 1'b0;
       hw_add <= 9'b0;
       overflow <= 1'b0;
      end
     overflow <= (overflow | (im_vld_mod & im_din_full));
     if (im_vld_qual)
      // F59, L312
      begin
       // F59, L313
       hw_add <= (hw_add + 32'b01);
       if ((im_config.mode == 2'b10))
        // F59, L314
        begin
         // F59, L315
         if (im_din_dly.desc.eob)
          if ((hw_add < 32'b0100000000))
          hw_add <= 9'b100000000;
          else
          hw_add <= 9'b0;
         else
          hw_add <= (hw_add + 32'b01);
        end
      end
     if ((im_rd_stb && (hw_status.credit_issued >= 32'b0100000000)))
      // F59, L324
      begin
       // F59, L325
       bank_status <= ( ~bank_status );
      end
    end
  end
// F59, L339
always_comb 
 // F59, L339
 begin
  // F59, L340
  if (hw_we)
   if ((im_config.mode == 2'b0))
    credit_used = 9'b01;
   else
    if ((im_config.mode == 2'b10))
     if (im_din_dly.desc.eob)
      if ((hw_add < 32'b0100000000))
       credit_used = (32'b0100000000 - hw_add);
      else
       credit_used = (32'b01000000000 - hw_add);
     else
      credit_used = 9'b01;
    else
     credit_used = 9'b0;
  else
   credit_used = 9'b0;
 end
// pragma CVASTRPROP MODULE nx_interface_monitor_xcm104 PROP_RANOFF TRUE
endmodule

