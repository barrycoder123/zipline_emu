// xc_work/v/WORK/svPkg0n.sv
// /home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_regsPKG.svp:11
package cr_kme_regsPKG;
typedef enum logic [1:0] {ENET=2'b0,IPV4=2'b01,IPV6=2'b10,MPLS=2'b11} pkt_hdr_e;
typedef enum logic [3:0] {CMD_SIMPLE=4'b0,COMPND_4K=4'b0101,COMPND_8K=4'b0110,COMPND_RSV=4'b1111} cmd_compound_cmd_frm_size_e;
typedef enum logic {GUID_NOT_PRESENT=1'b0,GUID_PRESENT=1'b1} cmd_guid_present_e;
typedef enum logic {CRC_NOT_PRESENT=1'b0,CRC_PRESENT=1'b1} cmd_frmd_crc_in_e;
typedef enum logic [6:0] {CCEIP_FRMD_USER_NULL=7'b01011,CCEIP_FRMD_USER_PI16=7'b01100,CCEIP_FRMD_USER_PI64=7'b01101,CCEIP_FRMD_USER_VM=7'b01110,CCEIP_TYPE_IN_RSV=7'b1111111} cceip_cmd_frmd_in_type_e;
typedef enum logic [6:0] {CDDIP_FRMD_INT_APP=7'b01111,CDDIP_FRMD_INT_SIP=7'b010000,CDDIP_FRMD_INT_LIP=7'b010001,CDDIP_FRMD_INT_VM=7'b010010,CDDIP_FRMD_INT_VM_SHORT=7'b010110,CDDIP_TYPE_IN_RSV=7'b1111111} cddip_cmd_frmd_in_type_e;
typedef enum logic [6:0] {CCEIP_FRMD_INT_APP=7'b01111,CCEIP_FRMD_INT_SIP=7'b010000,CCEIP_FRMD_INT_LIP=7'b010001,CCEIP_FRMD_INT_VM=7'b010010,CCEIP_FRMD_INT_VM_SHORT=7'b010110,CCEIP_TYPE_OUT_RSV=7'b1111111} cceip_cmd_frmd_out_type_e;
typedef enum logic [6:0] {CDDIP_FRMD_USER_NULL=7'b01011,CDDIP_FRMD_USER_PI16=7'b01100,CDDIP_FRMD_USER_PI64=7'b01101,CDDIP_FRMD_USER_VM=7'b01110,CDDIP_TYPE_OUT_RSV=7'b1111111} cddip_cmd_frmd_out_type_e;
typedef enum logic {NOT_GEN=1'b0,GEN=1'b1} cmd_frmd_out_crc_e;
typedef enum logic [1:0] {FRMD_T10_DIX=2'b0,FRMD_CRC64=2'b01,FRMD_CRC64E=2'b10,FRMD_CRC_RSV=2'b11} cmd_frmd_out_crc_type_e;
typedef enum logic [1:0] {NO_CRC=2'b0,CRC_8B_CRC64=2'b01,CRC_8B_CRC64E=2'b10,MD_TYPE_RSV=2'b11} cmd_md_type_e;
typedef enum logic [1:0] {CRC_GEN_VERIFY=2'b0,CRC_RSV1=2'b01,CRC_RSV2=2'b10,CRC_RSV3=2'b11} cmd_md_op_e;
typedef enum logic {FRMD_MAC_NOP=1'b0,FRMD_MAC_CAL=1'b1} cmd_frmd_raw_mac_sel_e;
typedef enum logic {CHU_NORMAL=1'b0,CHU_APPEND=1'b1} cmd_chu_append_e;
typedef enum logic [3:0] {NONE=4'b0,ZLIB=4'b01,GZIP=4'b010,XP9=4'b011,XP10=4'b0100,CHU4K=4'b0101,CHU8K=4'b0110,RSV_MODE=4'b1111} cmd_comp_mode_e;
typedef enum logic [3:0] {WIN_32B=4'b0,WIN_4K=4'b01,WIN_8K=4'b010,WIN_16K=4'b011,WIN_32K=4'b0100,WIN_64K=4'b0101,RSV_WIN=4'b1111} cmd_lz77_win_size_e;
typedef enum logic [1:0] {NO_MATCH=2'b0,CHAR_1=2'b01,CHAR_2=2'b10,RSV_DLY=2'b11} cmd_lz77_dly_match_win_e;
typedef enum logic {CHAR_3=1'b0,CHAR_4=1'b1} cmd_lz77_min_match_len_e;
typedef enum logic [1:0] {LEN_LZ77_WIN=2'b0,LEN_256B=2'b01,MIN_MTCH_14=2'b10,LEN_64B=2'b11} cmd_lz77_max_symb_len_e;
typedef enum logic [1:0] {NO_PREFIX=2'b0,USER_PREFIX=2'b01,PREDEF_PREFIX=2'b10,PREDET_HUFF=2'b11} cmd_xp10_prefix_mode_e;
typedef enum logic {CRC32=1'b0,CRC64=1'b1} cmd_xp10_crc_mode_e;
typedef enum logic [1:0] {FRM=2'b0,FRM_LESS_16=2'b01,INF=2'b10,RSV_THRSH=2'b11} cmd_chu_comp_thrsh_e;
typedef enum logic {NO_CIPHER=1'b0,CIPHER=1'b1} cmd_cipher_mode_e;
typedef enum logic [3:0] {AUTH_NULL=4'b0,SHA2=4'b01,HMAC_SHA2=4'b010,AUTH_RSVD=4'b1111} cmd_auth_op_e;
typedef enum logic [3:0] {CPH_NULL=4'b0,AES_GCM=4'b01,AES_XTS_XEX=4'b010,AES_GMAC=4'b011,CPH_RSVD=4'b1111} cmd_cipher_op_e;
typedef enum logic [1:0] {IV_NONE=2'b0,IV_AUX_CMD=2'b01,IV_KEYS=2'b10,IV_AUX_FRMD=2'b11} cmd_iv_src_e;
typedef enum logic [1:0] {IV_SRC=2'b0,IV_RND=2'b01,IV_INC=2'b10,IV_RSV=2'b11} cmd_iv_op_e;
typedef enum logic {NO_PAD=1'b0,PAD_16B=1'b1} cmd_cipher_pad_e;
typedef enum logic {DGST_256=1'b0,DGST_64=1'b1} cmd_digest_size_e;
typedef enum logic {SIMPLE=1'b0,COMPOUND=1'b1} rqe_frame_type_e;
typedef enum logic {TRACE_OFF=1'b0,TRACE_ON=1'b1} rqe_trace_e;
typedef enum logic [3:0] {RQE_SIMPLE=4'b0,RQE_COMPOUND_4K=4'b0101,RQE_COMPOUND_8K=4'b0110,RQE_RSV_FRAME_SIZE=4'b1111} rqe_frame_size_e;
typedef enum logic [1:0] {RAW=2'b01,PARSEABLE=2'b0,XP10CFH4K=2'b10,XP10CFH8K=2'b11} frmd_coding_e;
typedef enum logic [1:0] {DIGEST_64B=2'b0,DIGEST_128B=2'b01,DIGEST_256B=2'b10,DIGEST_0B=2'b11} frmd_mac_size_e;
typedef enum logic [1:0] {REP=2'b0,PASS=2'b01,MODIFY=2'b10,DELETE=2'b11} tlv_parse_action_e;
typedef enum logic {USER=1'b0,TLVP=1'b1} tlvp_corrupt_e;
typedef enum logic {DATAPATH_CORRUPT=1'b0,FUNCTIONAL_ERROR=1'b1} cmd_type_e;
typedef enum logic [1:0] {SINGLE_ERR=2'b0,CONTINUOUS_ERROR=2'b01,STOP=2'b10,EOT=2'b11} cmd_mode_e;
typedef enum logic [5:0] {NO_AUX_KEY=6'b0,AUX_KEY_ONLY=6'b01,DEK256=6'b010,DEK512=6'b011,DAK=6'b0100,DEK256_DAK=6'b0101,DEK512_DAK=6'b0110,ENC_DEK256=6'b0111,ENC_DEK512=6'b01000,ENC_DAK=6'b01001,
ENC_DEK256_DAK=6'b01010,ENC_DEK512_DAK=6'b01011,ENC_DEK256_DAK_COMB=6'b01100,ENC_DEK512_DAK_COMB=6'b01101,KEY_TYPE_RSV=6'b111111} aux_key_type_e;
typedef enum logic {NOOP=1'b0,KDF=1'b1} aux_key_op_e;
typedef enum logic [1:0] {KDF_MODE_GUID=2'b0,KDF_MODE_RGUID=2'b01,KDF_MODE_COMB_GUID=2'b10,KDF_MODE_COMB_RGUID=2'b11} aux_kdf_mode_e;
typedef enum logic [3:0] {NOP=4'b0,READ=4'b01,WRITE=4'b010,ENABLE=4'b011,DISABLED=4'b0100,RESET=4'b0101,INITIALIZE=4'b0110,INITIALIZE_INC=4'b0111,SET_INI_START=4'b1000,COMPARE=4'b1001,
SIM_TMO=4'b1110,ACK_ERROR=4'b1111} ia_operation_e;
typedef enum logic [2:0] {READY=3'b0,BUSY=3'b01,TMO=3'b010,OVR=3'b011,NXM=3'b100,UOP=3'b101,PDN=3'b111} ia_status_e;
typedef enum logic [3:0] {SPRAM=4'b0,SRFRAM=4'b01,REG=4'b010,TCAM=4'b011,MEM_TYPE_4=4'b0100,MEM_TYPE_5=4'b0101,MEM_TYPE_6=4'b0110,MEM_TYPE_7=4'b0111,MEM_TYPE_8=4'b1000,MEM_TYPE_9=4'b1001,
MEM_TYPE_10=4'b1010,MEM_TYPE_11=4'b1011,MEM_TYPE_12=4'b1100,MEM_TYPE_13=4'b1101,MEM_TYPE_14=4'b1110,MEM_TYPE_15=4'b1111} mem_type_e;
typedef enum logic [1:0] {START=2'b0,END=2'b01,CONTINUOUS=2'b10,OFF=2'b11} im_mode_e;
typedef enum logic [10:0] {BLKID_REVID_CONFIG=11'b0,REVISION_CONFIG=11'b0100,SPARE_CONFIG=11'b01000,CCEIP0_OUT_IA_CAPABILITY=11'b01100,CCEIP0_OUT_IA_STATUS=11'b010000,CCEIP0_OUT_IA_WDATA_PART0=11'b010100,CCEIP0_OUT_IA_WDATA_PART1=11'b011000,CCEIP0_OUT_IA_WDATA_PART2=11'b011100,CCEIP0_OUT_IA_CONFIG=11'b0100000,CCEIP0_OUT_IA_RDATA_PART0=11'b0100100,
CCEIP0_OUT_IA_RDATA_PART1=11'b0101000,CCEIP0_OUT_IA_RDATA_PART2=11'b0101100,CCEIP0_OUT_IM_CONFIG=11'b0110000,CCEIP0_OUT_IM_STATUS=11'b0110100,CCEIP0_OUT_IM_READ_DONE=11'b0111000,CCEIP1_OUT_IA_CAPABILITY=11'b0111100,CCEIP1_OUT_IA_STATUS=11'b01000000,CCEIP1_OUT_IA_WDATA_PART0=11'b01000100,CCEIP1_OUT_IA_WDATA_PART1=11'b01001000,CCEIP1_OUT_IA_WDATA_PART2=11'b01001100,
CCEIP1_OUT_IA_CONFIG=11'b01010000,CCEIP1_OUT_IA_RDATA_PART0=11'b01010100,CCEIP1_OUT_IA_RDATA_PART1=11'b01011000,CCEIP1_OUT_IA_RDATA_PART2=11'b01011100,CCEIP1_OUT_IM_CONFIG=11'b01100000,CCEIP1_OUT_IM_STATUS=11'b01100100,CCEIP1_OUT_IM_READ_DONE=11'b01101000,CCEIP2_OUT_IA_CAPABILITY=11'b01101100,CCEIP2_OUT_IA_STATUS=11'b01110000,CCEIP2_OUT_IA_WDATA_PART0=11'b01110100,
CCEIP2_OUT_IA_WDATA_PART1=11'b01111000,CCEIP2_OUT_IA_WDATA_PART2=11'b01111100,CCEIP2_OUT_IA_CONFIG=11'b010000000,CCEIP2_OUT_IA_RDATA_PART0=11'b010000100,CCEIP2_OUT_IA_RDATA_PART1=11'b010001000,CCEIP2_OUT_IA_RDATA_PART2=11'b010001100,CCEIP2_OUT_IM_CONFIG=11'b010010000,CCEIP2_OUT_IM_STATUS=11'b010010100,CCEIP2_OUT_IM_READ_DONE=11'b010011000,CCEIP3_OUT_IA_CAPABILITY=11'b010011100,
CCEIP3_OUT_IA_STATUS=11'b010100000,CCEIP3_OUT_IA_WDATA_PART0=11'b010100100,CCEIP3_OUT_IA_WDATA_PART1=11'b010101000,CCEIP3_OUT_IA_WDATA_PART2=11'b010101100,CCEIP3_OUT_IA_CONFIG=11'b010110000,CCEIP3_OUT_IA_RDATA_PART0=11'b010110100,CCEIP3_OUT_IA_RDATA_PART1=11'b010111000,CCEIP3_OUT_IA_RDATA_PART2=11'b010111100,CCEIP3_OUT_IM_CONFIG=11'b011000000,CCEIP3_OUT_IM_STATUS=11'b011000100,
CCEIP3_OUT_IM_READ_DONE=11'b011001000,CDDIP0_OUT_IA_CAPABILITY=11'b011001100,CDDIP0_OUT_IA_STATUS=11'b011010000,CDDIP0_OUT_IA_WDATA_PART0=11'b011010100,CDDIP0_OUT_IA_WDATA_PART1=11'b011011000,CDDIP0_OUT_IA_WDATA_PART2=11'b011011100,CDDIP0_OUT_IA_CONFIG=11'b011100000,CDDIP0_OUT_IA_RDATA_PART0=11'b011100100,CDDIP0_OUT_IA_RDATA_PART1=11'b011101000,CDDIP0_OUT_IA_RDATA_PART2=11'b011101100,
CDDIP0_OUT_IM_CONFIG=11'b011110000,CDDIP0_OUT_IM_STATUS=11'b011110100,CDDIP0_OUT_IM_READ_DONE=11'b011111000,CDDIP1_OUT_IA_CAPABILITY=11'b011111100,CDDIP1_OUT_IA_STATUS=11'b0100000000,CDDIP1_OUT_IA_WDATA_PART0=11'b0100000100,CDDIP1_OUT_IA_WDATA_PART1=11'b0100001000,CDDIP1_OUT_IA_WDATA_PART2=11'b0100001100,CDDIP1_OUT_IA_CONFIG=11'b0100010000,CDDIP1_OUT_IA_RDATA_PART0=11'b0100010100,
CDDIP1_OUT_IA_RDATA_PART1=11'b0100011000,CDDIP1_OUT_IA_RDATA_PART2=11'b0100011100,CDDIP1_OUT_IM_CONFIG=11'b0100100000,CDDIP1_OUT_IM_STATUS=11'b0100100100,CDDIP1_OUT_IM_READ_DONE=11'b0100101000,CDDIP2_OUT_IA_CAPABILITY=11'b0100101100,CDDIP2_OUT_IA_STATUS=11'b0100110000,CDDIP2_OUT_IA_WDATA_PART0=11'b0100110100,CDDIP2_OUT_IA_WDATA_PART1=11'b0100111000,CDDIP2_OUT_IA_WDATA_PART2=11'b0100111100,
CDDIP2_OUT_IA_CONFIG=11'b0101000000,CDDIP2_OUT_IA_RDATA_PART0=11'b0101000100,CDDIP2_OUT_IA_RDATA_PART1=11'b0101001000,CDDIP2_OUT_IA_RDATA_PART2=11'b0101001100,CDDIP2_OUT_IM_CONFIG=11'b0101010000,CDDIP2_OUT_IM_STATUS=11'b0101010100,CDDIP2_OUT_IM_READ_DONE=11'b0101011000,CDDIP3_OUT_IA_CAPABILITY=11'b0101011100,CDDIP3_OUT_IA_STATUS=11'b0101100000,CDDIP3_OUT_IA_WDATA_PART0=11'b0101100100,
CDDIP3_OUT_IA_WDATA_PART1=11'b0101101000,CDDIP3_OUT_IA_WDATA_PART2=11'b0101101100,CDDIP3_OUT_IA_CONFIG=11'b0101110000,CDDIP3_OUT_IA_RDATA_PART0=11'b0101110100,CDDIP3_OUT_IA_RDATA_PART1=11'b0101111000,CDDIP3_OUT_IA_RDATA_PART2=11'b0101111100,CDDIP3_OUT_IM_CONFIG=11'b0110000000,CDDIP3_OUT_IM_STATUS=11'b0110000100,CDDIP3_OUT_IM_READ_DONE=11'b0110001000,CKV_IA_CAPABILITY=11'b0110001100,
CKV_IA_STATUS=11'b0110010000,CKV_IA_WDATA_PART0=11'b0110010100,CKV_IA_WDATA_PART1=11'b0110011000,CKV_IA_CONFIG=11'b0110011100,CKV_IA_RDATA_PART0=11'b0110100000,CKV_IA_RDATA_PART1=11'b0110100100,KIM_IA_CAPABILITY=11'b0110101000,KIM_IA_STATUS=11'b0110101100,KIM_IA_WDATA_PART0=11'b0110110000,KIM_IA_WDATA_PART1=11'b0110110100,
KIM_IA_CONFIG=11'b0110111000,KIM_IA_RDATA_PART0=11'b0110111100,KIM_IA_RDATA_PART1=11'b0111000000,LABEL0_CONFIG=11'b0111001000,LABEL0_DATA7=11'b0111001100,LABEL0_DATA6=11'b0111010000,LABEL0_DATA5=11'b0111010100,LABEL0_DATA4=11'b0111011000,LABEL0_DATA3=11'b0111011100,LABEL0_DATA2=11'b0111100000,
LABEL0_DATA1=11'b0111100100,LABEL0_DATA0=11'b0111101000,LABEL1_CONFIG=11'b0111110000,LABEL1_DATA7=11'b0111110100,LABEL1_DATA6=11'b0111111000,LABEL1_DATA5=11'b0111111100,LABEL1_DATA4=11'b01000000000,LABEL1_DATA3=11'b01000000100,LABEL1_DATA2=11'b01000001000,LABEL1_DATA1=11'b01000001100,
LABEL1_DATA0=11'b01000010000,LABEL2_CONFIG=11'b01000011000,LABEL2_DATA7=11'b01000011100,LABEL2_DATA6=11'b01000100000,LABEL2_DATA5=11'b01000100100,LABEL2_DATA4=11'b01000101000,LABEL2_DATA3=11'b01000101100,LABEL2_DATA2=11'b01000110000,LABEL2_DATA1=11'b01000110100,LABEL2_DATA0=11'b01000111000,
LABEL3_CONFIG=11'b01001000000,LABEL3_DATA7=11'b01001000100,LABEL3_DATA6=11'b01001001000,LABEL3_DATA5=11'b01001001100,LABEL3_DATA4=11'b01001010000,LABEL3_DATA3=11'b01001010100,LABEL3_DATA2=11'b01001011000,LABEL3_DATA1=11'b01001011100,LABEL3_DATA0=11'b01001100000,LABEL4_CONFIG=11'b01001101000,
LABEL4_DATA7=11'b01001101100,LABEL4_DATA6=11'b01001110000,LABEL4_DATA5=11'b01001110100,LABEL4_DATA4=11'b01001111000,LABEL4_DATA3=11'b01001111100,LABEL4_DATA2=11'b01010000000,LABEL4_DATA1=11'b01010000100,LABEL4_DATA0=11'b01010001000,LABEL5_CONFIG=11'b01010010000,LABEL5_DATA7=11'b01010010100,
LABEL5_DATA6=11'b01010011000,LABEL5_DATA5=11'b01010011100,LABEL5_DATA4=11'b01010100000,LABEL5_DATA3=11'b01010100100,LABEL5_DATA2=11'b01010101000,LABEL5_DATA1=11'b01010101100,LABEL5_DATA0=11'b01010110000,LABEL6_CONFIG=11'b01010111000,LABEL6_DATA7=11'b01010111100,LABEL6_DATA6=11'b01011000000,
LABEL6_DATA5=11'b01011000100,LABEL6_DATA4=11'b01011001000,LABEL6_DATA3=11'b01011001100,LABEL6_DATA2=11'b01011010000,LABEL6_DATA1=11'b01011010100,LABEL6_DATA0=11'b01011011000,LABEL7_CONFIG=11'b01011100000,LABEL7_DATA7=11'b01011100100,LABEL7_DATA6=11'b01011101000,LABEL7_DATA5=11'b01011101100,
LABEL7_DATA4=11'b01011110000,LABEL7_DATA3=11'b01011110100,LABEL7_DATA2=11'b01011111000,LABEL7_DATA1=11'b01011111100,LABEL7_DATA0=11'b01100000000,KDF_DRBG_CTRL=11'b01100001000,KDF_DRBG_SEED_0_STATE_KEY_31_0=11'b01100001100,KDF_DRBG_SEED_0_STATE_KEY_63_32=11'b01100010000,KDF_DRBG_SEED_0_STATE_KEY_95_64=11'b01100010100,KDF_DRBG_SEED_0_STATE_KEY_127_96=11'b01100011000,
KDF_DRBG_SEED_0_STATE_KEY_159_128=11'b01100011100,KDF_DRBG_SEED_0_STATE_KEY_191_160=11'b01100100000,KDF_DRBG_SEED_0_STATE_KEY_223_192=11'b01100100100,KDF_DRBG_SEED_0_STATE_KEY_255_224=11'b01100101000,KDF_DRBG_SEED_0_STATE_VALUE_31_0=11'b01100101100,KDF_DRBG_SEED_0_STATE_VALUE_63_32=11'b01100110000,KDF_DRBG_SEED_0_STATE_VALUE_95_64=11'b01100110100,KDF_DRBG_SEED_0_STATE_VALUE_127_96=11'b01100111000,KDF_DRBG_SEED_0_RESEED_INTERVAL_0=11'b01100111100,KDF_DRBG_SEED_0_RESEED_INTERVAL_1=11'b01101000000,
KDF_DRBG_SEED_1_STATE_KEY_31_0=11'b01101000100,KDF_DRBG_SEED_1_STATE_KEY_63_32=11'b01101001000,KDF_DRBG_SEED_1_STATE_KEY_95_64=11'b01101001100,KDF_DRBG_SEED_1_STATE_KEY_127_96=11'b01101010000,KDF_DRBG_SEED_1_STATE_KEY_159_128=11'b01101010100,KDF_DRBG_SEED_1_STATE_KEY_191_160=11'b01101011000,KDF_DRBG_SEED_1_STATE_KEY_223_192=11'b01101011100,KDF_DRBG_SEED_1_STATE_KEY_255_224=11'b01101100000,KDF_DRBG_SEED_1_STATE_VALUE_31_0=11'b01101100100,KDF_DRBG_SEED_1_STATE_VALUE_63_32=11'b01101101000,
KDF_DRBG_SEED_1_STATE_VALUE_95_64=11'b01101101100,KDF_DRBG_SEED_1_STATE_VALUE_127_96=11'b01101110000,KDF_DRBG_SEED_1_RESEED_INTERVAL_0=11'b01101110100,KDF_DRBG_SEED_1_RESEED_INTERVAL_1=11'b01101111000,INTERRUPT_STATUS=11'b01101111100,INTERRUPT_MASK=11'b01110000000,ENGINE_STICKY_STATUS=11'b01110000100,BIMC_MONITOR=11'b01110001100,BIMC_MONITOR_MASK=11'b01110010000,BIMC_ECC_UNCORRECTABLE_ERROR_CNT=11'b01110010100,
BIMC_ECC_CORRECTABLE_ERROR_CNT=11'b01110011000,BIMC_PARITY_ERROR_CNT=11'b01110011100,BIMC_GLOBAL_CONFIG=11'b01110100000,BIMC_MEMID=11'b01110100100,BIMC_ECCPAR_DEBUG=11'b01110101000,BIMC_CMD2=11'b01110101100,BIMC_CMD1=11'b01110110000,BIMC_CMD0=11'b01110110100,BIMC_RXCMD2=11'b01110111000,BIMC_RXCMD1=11'b01110111100,
BIMC_RXCMD0=11'b01111000000,BIMC_RXRSP2=11'b01111000100,BIMC_RXRSP1=11'b01111001000,BIMC_RXRSP0=11'b01111001100,BIMC_POLLRSP2=11'b01111010000,BIMC_POLLRSP1=11'b01111010100,BIMC_POLLRSP0=11'b01111011000,BIMC_DBGCMD2=11'b01111011100,BIMC_DBGCMD1=11'b01111100000,BIMC_DBGCMD0=11'b01111100100,
IM_AVAILABLE=11'b01111101100,IM_CONSUMED=11'b01111110000,TREADY_OVERRIDE=11'b01111110100,REGS_SA_CTRL=11'b01111111000,SA_SNAPSHOT_IA_CAPABILITY=11'b01111111100,SA_SNAPSHOT_IA_STATUS=11'b10000000000,SA_SNAPSHOT_IA_WDATA_PART0=11'b10000000100,SA_SNAPSHOT_IA_WDATA_PART1=11'b10000001000,SA_SNAPSHOT_IA_CONFIG=11'b10000001100,SA_SNAPSHOT_IA_RDATA_PART0=11'b10000010000,
SA_SNAPSHOT_IA_RDATA_PART1=11'b10000010100,SA_COUNT_IA_CAPABILITY=11'b10000011000,SA_COUNT_IA_STATUS=11'b10000011100,SA_COUNT_IA_WDATA_PART0=11'b10000100000,SA_COUNT_IA_WDATA_PART1=11'b10000100100,SA_COUNT_IA_CONFIG=11'b10000101000,SA_COUNT_IA_RDATA_PART0=11'b10000101100,SA_COUNT_IA_RDATA_PART1=11'b10000110000,IDLE_COMPONENTS=11'b10000110100,CCEIP_ENCRYPT_KOP_FIFO_OVERRIDE=11'b10000111000,
CCEIP_VALIDATE_KOP_FIFO_OVERRIDE=11'b10000111100,CDDIP_DECRYPT_KOP_FIFO_OVERRIDE=11'b10001000000,SA_GLOBAL_CTRL=11'b10001000100,SA_CTRL_IA_CAPABILITY=11'b10001001000,SA_CTRL_IA_STATUS=11'b10001001100,SA_CTRL_IA_WDATA_PART0=11'b10001010000,SA_CTRL_IA_CONFIG=11'b10001010100,SA_CTRL_IA_RDATA_PART0=11'b10001011000,KDF_TEST_KEY_SIZE_CONFIG=11'b10001011100} address_e;
typedef struct packed {
 logic [15:0] blkid ;
 logic [15:0] revid ;
} blkid_revid_t;
localparam blkid_revid_t blkid_revid_t_reset = 32'b11001111000000000000000000000000;
typedef struct packed {
 logic [7:0] revid ;
} revid_t;
localparam revid_t revid_t_reset = 8'b0;
typedef struct packed {
 logic [31:0] spare ;
} spare_t;
localparam spare_t spare_t_reset = 32'b0;
typedef struct packed {
 logic [31:0] tdata_hi ;
 logic [31:0] tdata_lo ;
 logic eob;
 logic [7:0] bytes_vld ;
 logic [7:0] unused1 ;
 logic tid;
 logic [7:0] tuser ;
 logic [5:0] unused0 ;
} cceip0_out_t;
localparam cceip0_out_t cceip0_out_t_reset = 96'b0;
typedef struct packed {
 logic [3:0] op ;
 logic [8:0] addr ;
} cceip0_out_ia_config_t;
localparam cceip0_out_ia_config_t cceip0_out_ia_config_t_reset = 13'b0;
typedef struct packed {
 logic [2:0] code ;
 logic [4:0] datawords ;
 logic [8:0] addr ;
} cceip0_out_ia_status_t;
localparam cceip0_out_ia_status_t cceip0_out_ia_status_t_reset = 17'b010111111111;
typedef struct packed {
 logic [3:0] mem_type ;
 logic ack_error;
 logic sim_tmo;
 logic [3:0] reserved_op ;
 logic compare;
 logic set_init_start;
 logic initialize_inc;
 logic initialize;
 logic reset;
 logic disabled;
 logic enable;
 logic write;
 logic read;
 logic nop;
} cceip0_out_ia_capability_t;
localparam cceip0_out_ia_capability_t cceip0_out_ia_capability_t_reset = 20'b0;
typedef struct packed {
 logic [1:0] mode ;
 logic [9:0] wr_credit_config ;
} cceip0_out_im_config_t;
localparam cceip0_out_im_config_t cceip0_out_im_config_t_reset = 12'b111000000000;
typedef struct packed {
 logic bank_hi;
 logic bank_lo;
 logic overflow;
 logic [8:0] wr_pointer ;
} cceip0_out_im_status_t;
localparam cceip0_out_im_status_t cceip0_out_im_status_t_reset = 12'b0;
typedef struct packed {
 logic bank_hi;
 logic bank_lo;
} cceip0_out_im_consumed_t;
localparam cceip0_out_im_consumed_t cceip0_out_im_consumed_t_reset = 2'b0;
typedef struct packed {
 logic [31:0] tdata_hi ;
 logic [31:0] tdata_lo ;
 logic eob;
 logic [7:0] bytes_vld ;
 logic [7:0] unused1 ;
 logic tid;
 logic [7:0] tuser ;
 logic [5:0] unused0 ;
} cceip1_out_t;
localparam cceip1_out_t cceip1_out_t_reset = 96'b0;
typedef struct packed {
 logic [3:0] op ;
 logic [8:0] addr ;
} cceip1_out_ia_config_t;
localparam cceip1_out_ia_config_t cceip1_out_ia_config_t_reset = 13'b0;
typedef struct packed {
 logic [2:0] code ;
 logic [4:0] datawords ;
 logic [8:0] addr ;
} cceip1_out_ia_status_t;
localparam cceip1_out_ia_status_t cceip1_out_ia_status_t_reset = 17'b010111111111;
typedef struct packed {
 logic [3:0] mem_type ;
 logic ack_error;
 logic sim_tmo;
 logic [3:0] reserved_op ;
 logic compare;
 logic set_init_start;
 logic initialize_inc;
 logic initialize;
 logic reset;
 logic disabled;
 logic enable;
 logic write;
 logic read;
 logic nop;
} cceip1_out_ia_capability_t;
localparam cceip1_out_ia_capability_t cceip1_out_ia_capability_t_reset = 20'b0;
typedef struct packed {
 logic [1:0] mode ;
 logic [9:0] wr_credit_config ;
} cceip1_out_im_config_t;
localparam cceip1_out_im_config_t cceip1_out_im_config_t_reset = 12'b111000000000;
typedef struct packed {
 logic bank_hi;
 logic bank_lo;
 logic overflow;
 logic [8:0] wr_pointer ;
} cceip1_out_im_status_t;
localparam cceip1_out_im_status_t cceip1_out_im_status_t_reset = 12'b0;
typedef struct packed {
 logic bank_hi;
 logic bank_lo;
} cceip1_out_im_consumed_t;
localparam cceip1_out_im_consumed_t cceip1_out_im_consumed_t_reset = 2'b0;
typedef struct packed {
 logic [31:0] tdata_hi ;
 logic [31:0] tdata_lo ;
 logic eob;
 logic [7:0] bytes_vld ;
 logic [7:0] unused1 ;
 logic tid;
 logic [7:0] tuser ;
 logic [5:0] unused0 ;
} cceip2_out_t;
localparam cceip2_out_t cceip2_out_t_reset = 96'b0;
typedef struct packed {
 logic [3:0] op ;
 logic [8:0] addr ;
} cceip2_out_ia_config_t;
localparam cceip2_out_ia_config_t cceip2_out_ia_config_t_reset = 13'b0;
typedef struct packed {
 logic [2:0] code ;
 logic [4:0] datawords ;
 logic [8:0] addr ;
} cceip2_out_ia_status_t;
localparam cceip2_out_ia_status_t cceip2_out_ia_status_t_reset = 17'b010111111111;
typedef struct packed {
 logic [3:0] mem_type ;
 logic ack_error;
 logic sim_tmo;
 logic [3:0] reserved_op ;
 logic compare;
 logic set_init_start;
 logic initialize_inc;
 logic initialize;
 logic reset;
 logic disabled;
 logic enable;
 logic write;
 logic read;
 logic nop;
} cceip2_out_ia_capability_t;
localparam cceip2_out_ia_capability_t cceip2_out_ia_capability_t_reset = 20'b0;
typedef struct packed {
 logic [1:0] mode ;
 logic [9:0] wr_credit_config ;
} cceip2_out_im_config_t;
localparam cceip2_out_im_config_t cceip2_out_im_config_t_reset = 12'b111000000000;
typedef struct packed {
 logic bank_hi;
 logic bank_lo;
 logic overflow;
 logic [8:0] wr_pointer ;
} cceip2_out_im_status_t;
localparam cceip2_out_im_status_t cceip2_out_im_status_t_reset = 12'b0;
typedef struct packed {
 logic bank_hi;
 logic bank_lo;
} cceip2_out_im_consumed_t;
localparam cceip2_out_im_consumed_t cceip2_out_im_consumed_t_reset = 2'b0;
typedef struct packed {
 logic [31:0] tdata_hi ;
 logic [31:0] tdata_lo ;
 logic eob;
 logic [7:0] bytes_vld ;
 logic [7:0] unused1 ;
 logic tid;
 logic [7:0] tuser ;
 logic [5:0] unused0 ;
} cceip3_out_t;
localparam cceip3_out_t cceip3_out_t_reset = 96'b0;
typedef struct packed {
 logic [3:0] op ;
 logic [8:0] addr ;
} cceip3_out_ia_config_t;
localparam cceip3_out_ia_config_t cceip3_out_ia_config_t_reset = 13'b0;
typedef struct packed {
 logic [2:0] code ;
 logic [4:0] datawords ;
 logic [8:0] addr ;
} cceip3_out_ia_status_t;
localparam cceip3_out_ia_status_t cceip3_out_ia_status_t_reset = 17'b010111111111;
typedef struct packed {
 logic [3:0] mem_type ;
 logic ack_error;
 logic sim_tmo;
 logic [3:0] reserved_op ;
 logic compare;
 logic set_init_start;
 logic initialize_inc;
 logic initialize;
 logic reset;
 logic disabled;
 logic enable;
 logic write;
 logic read;
 logic nop;
} cceip3_out_ia_capability_t;
localparam cceip3_out_ia_capability_t cceip3_out_ia_capability_t_reset = 20'b0;
typedef struct packed {
 logic [1:0] mode ;
 logic [9:0] wr_credit_config ;
} cceip3_out_im_config_t;
localparam cceip3_out_im_config_t cceip3_out_im_config_t_reset = 12'b111000000000;
typedef struct packed {
 logic bank_hi;
 logic bank_lo;
 logic overflow;
 logic [8:0] wr_pointer ;
} cceip3_out_im_status_t;
localparam cceip3_out_im_status_t cceip3_out_im_status_t_reset = 12'b0;
typedef struct packed {
 logic bank_hi;
 logic bank_lo;
} cceip3_out_im_consumed_t;
localparam cceip3_out_im_consumed_t cceip3_out_im_consumed_t_reset = 2'b0;
typedef struct packed {
 logic [31:0] tdata_hi ;
 logic [31:0] tdata_lo ;
 logic eob;
 logic [7:0] bytes_vld ;
 logic [7:0] unused1 ;
 logic tid;
 logic [7:0] tuser ;
 logic [5:0] unused0 ;
} cddip0_out_t;
localparam cddip0_out_t cddip0_out_t_reset = 96'b0;
typedef struct packed {
 logic [3:0] op ;
 logic [8:0] addr ;
} cddip0_out_ia_config_t;
localparam cddip0_out_ia_config_t cddip0_out_ia_config_t_reset = 13'b0;
typedef struct packed {
 logic [2:0] code ;
 logic [4:0] datawords ;
 logic [8:0] addr ;
} cddip0_out_ia_status_t;
localparam cddip0_out_ia_status_t cddip0_out_ia_status_t_reset = 17'b010111111111;
typedef struct packed {
 logic [3:0] mem_type ;
 logic ack_error;
 logic sim_tmo;
 logic [3:0] reserved_op ;
 logic compare;
 logic set_init_start;
 logic initialize_inc;
 logic initialize;
 logic reset;
 logic disabled;
 logic enable;
 logic write;
 logic read;
 logic nop;
} cddip0_out_ia_capability_t;
localparam cddip0_out_ia_capability_t cddip0_out_ia_capability_t_reset = 20'b0;
typedef struct packed {
 logic [1:0] mode ;
 logic [9:0] wr_credit_config ;
} cddip0_out_im_config_t;
localparam cddip0_out_im_config_t cddip0_out_im_config_t_reset = 12'b111000000000;
typedef struct packed {
 logic bank_hi;
 logic bank_lo;
 logic overflow;
 logic [8:0] wr_pointer ;
} cddip0_out_im_status_t;
localparam cddip0_out_im_status_t cddip0_out_im_status_t_reset = 12'b0;
typedef struct packed {
 logic bank_hi;
 logic bank_lo;
} cddip0_out_im_consumed_t;
localparam cddip0_out_im_consumed_t cddip0_out_im_consumed_t_reset = 2'b0;
typedef struct packed {
 logic [31:0] tdata_hi ;
 logic [31:0] tdata_lo ;
 logic eob;
 logic [7:0] bytes_vld ;
 logic [7:0] unused1 ;
 logic tid;
 logic [7:0] tuser ;
 logic [5:0] unused0 ;
} cddip1_out_t;
localparam cddip1_out_t cddip1_out_t_reset = 96'b0;
typedef struct packed {
 logic [3:0] op ;
 logic [8:0] addr ;
} cddip1_out_ia_config_t;
localparam cddip1_out_ia_config_t cddip1_out_ia_config_t_reset = 13'b0;
typedef struct packed {
 logic [2:0] code ;
 logic [4:0] datawords ;
 logic [8:0] addr ;
} cddip1_out_ia_status_t;
localparam cddip1_out_ia_status_t cddip1_out_ia_status_t_reset = 17'b010111111111;
typedef struct packed {
 logic [3:0] mem_type ;
 logic ack_error;
 logic sim_tmo;
 logic [3:0] reserved_op ;
 logic compare;
 logic set_init_start;
 logic initialize_inc;
 logic initialize;
 logic reset;
 logic disabled;
 logic enable;
 logic write;
 logic read;
 logic nop;
} cddip1_out_ia_capability_t;
localparam cddip1_out_ia_capability_t cddip1_out_ia_capability_t_reset = 20'b0;
typedef struct packed {
 logic [1:0] mode ;
 logic [9:0] wr_credit_config ;
} cddip1_out_im_config_t;
localparam cddip1_out_im_config_t cddip1_out_im_config_t_reset = 12'b111000000000;
typedef struct packed {
 logic bank_hi;
 logic bank_lo;
 logic overflow;
 logic [8:0] wr_pointer ;
} cddip1_out_im_status_t;
localparam cddip1_out_im_status_t cddip1_out_im_status_t_reset = 12'b0;
typedef struct packed {
 logic bank_hi;
 logic bank_lo;
} cddip1_out_im_consumed_t;
localparam cddip1_out_im_consumed_t cddip1_out_im_consumed_t_reset = 2'b0;
typedef struct packed {
 logic [31:0] tdata_hi ;
 logic [31:0] tdata_lo ;
 logic eob;
 logic [7:0] bytes_vld ;
 logic [7:0] unused1 ;
 logic tid;
 logic [7:0] tuser ;
 logic [5:0] unused0 ;
} cddip2_out_t;
localparam cddip2_out_t cddip2_out_t_reset = 96'b0;
typedef struct packed {
 logic [3:0] op ;
 logic [8:0] addr ;
} cddip2_out_ia_config_t;
localparam cddip2_out_ia_config_t cddip2_out_ia_config_t_reset = 13'b0;
typedef struct packed {
 logic [2:0] code ;
 logic [4:0] datawords ;
 logic [8:0] addr ;
} cddip2_out_ia_status_t;
localparam cddip2_out_ia_status_t cddip2_out_ia_status_t_reset = 17'b010111111111;
typedef struct packed {
 logic [3:0] mem_type ;
 logic ack_error;
 logic sim_tmo;
 logic [3:0] reserved_op ;
 logic compare;
 logic set_init_start;
 logic initialize_inc;
 logic initialize;
 logic reset;
 logic disabled;
 logic enable;
 logic write;
 logic read;
 logic nop;
} cddip2_out_ia_capability_t;
localparam cddip2_out_ia_capability_t cddip2_out_ia_capability_t_reset = 20'b0;
typedef struct packed {
 logic [1:0] mode ;
 logic [9:0] wr_credit_config ;
} cddip2_out_im_config_t;
localparam cddip2_out_im_config_t cddip2_out_im_config_t_reset = 12'b111000000000;
typedef struct packed {
 logic bank_hi;
 logic bank_lo;
 logic overflow;
 logic [8:0] wr_pointer ;
} cddip2_out_im_status_t;
localparam cddip2_out_im_status_t cddip2_out_im_status_t_reset = 12'b0;
typedef struct packed {
 logic bank_hi;
 logic bank_lo;
} cddip2_out_im_consumed_t;
localparam cddip2_out_im_consumed_t cddip2_out_im_consumed_t_reset = 2'b0;
typedef struct packed {
 logic [31:0] tdata_hi ;
 logic [31:0] tdata_lo ;
 logic eob;
 logic [7:0] bytes_vld ;
 logic [7:0] unused1 ;
 logic tid;
 logic [7:0] tuser ;
 logic [5:0] unused0 ;
} cddip3_out_t;
localparam cddip3_out_t cddip3_out_t_reset = 96'b0;
typedef struct packed {
 logic [3:0] op ;
 logic [8:0] addr ;
} cddip3_out_ia_config_t;
localparam cddip3_out_ia_config_t cddip3_out_ia_config_t_reset = 13'b0;
typedef struct packed {
 logic [2:0] code ;
 logic [4:0] datawords ;
 logic [8:0] addr ;
} cddip3_out_ia_status_t;
localparam cddip3_out_ia_status_t cddip3_out_ia_status_t_reset = 17'b010111111111;
typedef struct packed {
 logic [3:0] mem_type ;
 logic ack_error;
 logic sim_tmo;
 logic [3:0] reserved_op ;
 logic compare;
 logic set_init_start;
 logic initialize_inc;
 logic initialize;
 logic reset;
 logic disabled;
 logic enable;
 logic write;
 logic read;
 logic nop;
} cddip3_out_ia_capability_t;
localparam cddip3_out_ia_capability_t cddip3_out_ia_capability_t_reset = 20'b0;
typedef struct packed {
 logic [1:0] mode ;
 logic [9:0] wr_credit_config ;
} cddip3_out_im_config_t;
localparam cddip3_out_im_config_t cddip3_out_im_config_t_reset = 12'b111000000000;
typedef struct packed {
 logic bank_hi;
 logic bank_lo;
 logic overflow;
 logic [8:0] wr_pointer ;
} cddip3_out_im_status_t;
localparam cddip3_out_im_status_t cddip3_out_im_status_t_reset = 12'b0;
typedef struct packed {
 logic bank_hi;
 logic bank_lo;
} cddip3_out_im_consumed_t;
localparam cddip3_out_im_consumed_t cddip3_out_im_consumed_t_reset = 2'b0;
typedef struct packed {
 logic [31:0] key1 ;
 logic [31:0] key0 ;
} ckv_t;
localparam ckv_t ckv_t_reset = 64'b0;
typedef struct packed {
 logic [3:0] op ;
 logic [14:0] addr ;
} ckv_ia_config_t;
localparam ckv_ia_config_t ckv_ia_config_t_reset = 19'b0;
typedef struct packed {
 logic [2:0] code ;
 logic [4:0] datawords ;
 logic [14:0] addr ;
} ckv_ia_status_t;
localparam ckv_ia_status_t ckv_ia_status_t_reset = 23'b11100001000000000000000;
typedef struct packed {
 logic [3:0] mem_type ;
 logic ack_error;
 logic sim_tmo;
 logic [3:0] reserved_op ;
 logic compare;
 logic set_init_start;
 logic initialize_inc;
 logic initialize;
 logic reset;
 logic disabled;
 logic enable;
 logic write;
 logic read;
 logic nop;
} ckv_ia_capability_t;
localparam ckv_ia_capability_t ckv_ia_capability_t_reset = 20'b0;
typedef struct packed {
 logic valid;
 logic [2:0] label_index ;
 logic [1:0] ckv_length ;
 logic [14:0] ckv_pointer ;
} kim_entry0_t;
localparam kim_entry0_t kim_entry0_t_reset = 21'b0;
typedef struct packed {
 logic [3:0] pf_num ;
 logic [11:0] vf_num ;
 logic vf_valid;
} kim_entry1_t;
localparam kim_entry1_t kim_entry1_t_reset = 17'b0;
typedef struct packed {
 logic [3:0] op ;
 logic [13:0] addr ;
} kim_ia_config_t;
localparam kim_ia_config_t kim_ia_config_t_reset = 18'b0;
typedef struct packed {
 logic [2:0] code ;
 logic [4:0] datawords ;
 logic [13:0] addr ;
} kim_ia_status_t;
localparam kim_ia_status_t kim_ia_status_t_reset = 22'b1110000000000000000000;
typedef struct packed {
 logic [3:0] mem_type ;
 logic ack_error;
 logic sim_tmo;
 logic [3:0] reserved_op ;
 logic compare;
 logic set_init_start;
 logic initialize_inc;
 logic initialize;
 logic reset;
 logic disabled;
 logic enable;
 logic write;
 logic read;
 logic nop;
} kim_ia_capability_t;
localparam kim_ia_capability_t kim_ia_capability_t_reset = 20'b0;
typedef struct packed {
 logic label_guid_size;
 logic [5:0] label_size ;
 logic label_delimiter_valid;
 logic [7:0] label_delimiter ;
} label_metadata_t;
localparam label_metadata_t label_metadata_t_reset = 16'b0100000000;
typedef struct packed {
 logic [31:0] label_data ;
} label_data_t;
localparam label_data_t label_data_t_reset = 32'b0;
typedef struct packed {
 logic tlv_miscomp;
 logic gcm_tag_fail;
 logic txc_bp;
 logic ecc_mbe;
 logic drbg_seed_expired;
} int_status_t;
localparam int_status_t int_status_t_reset = 5'b0;
typedef struct packed {
 logic tlv_miscomp;
 logic gcm_tag_fail;
 logic txc_bp;
 logic ecc_mbe;
 logic drbg_seed_expired;
} int_mask_t;
localparam int_mask_t int_mask_t_reset = 5'b0;
typedef struct packed {
 logic engine_7_bp;
 logic engine_6_bp;
 logic engine_5_bp;
 logic engine_4_bp;
 logic engine_3_bp;
 logic engine_2_bp;
 logic engine_1_bp;
 logic engine_0_bp;
} sticky_eng_bp_t;
localparam sticky_eng_bp_t sticky_eng_bp_t_reset = 8'b0;
typedef struct packed {
 logic txc_tready_override;
 logic engine_7_tready_override;
 logic engine_6_tready_override;
 logic engine_5_tready_override;
 logic engine_4_tready_override;
 logic engine_3_tready_override;
 logic engine_2_tready_override;
 logic engine_1_tready_override;
 logic engine_0_tready_override;
} tready_override_t;
localparam tready_override_t tready_override_t_reset = 9'b0;
typedef struct packed {
 logic [31:0] key ;
} kdf_drbg_state_key_t;
localparam kdf_drbg_state_key_t kdf_drbg_state_key_t_reset = 32'b0;
typedef struct packed {
 logic [31:0] value ;
} kdf_drbg_state_value_t;
localparam kdf_drbg_state_value_t kdf_drbg_state_value_t_reset = 32'b0;
typedef struct packed {
 logic [15:0] expire_val ;
} kdf_drbg_reseed_interval_1_t;
localparam kdf_drbg_reseed_interval_1_t kdf_drbg_reseed_interval_1_t_reset = 16'b0;
typedef struct packed {
 logic [31:0] expire_val ;
} kdf_drbg_reseed_interval_0_t;
localparam kdf_drbg_reseed_interval_0_t kdf_drbg_reseed_interval_0_t_reset = 32'b0;
typedef struct packed {
 logic [1:0] valid ;
} kdf_drbg_ctrl_t;
localparam kdf_drbg_ctrl_t kdf_drbg_ctrl_t_reset = 2'b0;
typedef struct packed {
 logic unanswered_read;
 logic rcv_invalid_opcode;
 logic bimc_chain_rcv_error;
 logic reserve;
 logic parity_error;
 logic correctable_ecc_error;
 logic uncorrectable_ecc_error;
} bimc_monitor_t;
localparam bimc_monitor_t bimc_monitor_t_reset = 7'b0;
typedef struct packed {
 logic unanswered_read;
 logic rcv_invalid_opcode;
 logic bimc_chain_rcv_error_enable;
 logic reserve;
 logic parity_error_enable;
 logic correctable_ecc_error_enable;
 logic uncorrectable_ecc_error_enable;
} bimc_monitor_mask_t;
localparam bimc_monitor_mask_t bimc_monitor_mask_t_reset = 7'b0;
typedef struct packed {
 logic [31:0] uncorrectable_ecc ;
} bimc_ecc_uncorrectable_error_cnt_t;
localparam bimc_ecc_uncorrectable_error_cnt_t bimc_ecc_uncorrectable_error_cnt_t_reset = 32'b0;
typedef struct packed {
 logic [31:0] correctable_ecc ;
} bimc_ecc_correctable_error_cnt_t;
localparam bimc_ecc_correctable_error_cnt_t bimc_ecc_correctable_error_cnt_t_reset = 32'b0;
typedef struct packed {
 logic [31:0] parity_errors ;
} bimc_parity_error_cnt_t;
localparam bimc_parity_error_cnt_t bimc_parity_error_cnt_t_reset = 32'b0;
typedef struct packed {
 logic [25:0] poll_ecc_par_timer ;
 logic debug_write_en;
 logic poll_ecc_par_error;
 logic mem_wr_init;
 logic bimc_mem_init_done;
 logic reserve;
 logic soft_reset;
} bimc_global_config_t;
localparam bimc_global_config_t bimc_global_config_t_reset = 32'b01;
typedef struct packed {
 logic [11:0] max_memid ;
} bimc_memid_t;
localparam bimc_memid_t bimc_memid_t_reset = 12'b0;
typedef struct packed {
 logic ack;
 logic [3:0] jabber_off ;
 logic sent;
 logic send;
 logic [1:0] eccpar_disable ;
 logic [1:0] reserve ;
 logic [1:0] eccpar_corrupt ;
 logic [3:0] memtype ;
 logic [11:0] memaddr ;
} bimc_eccpar_debug_t;
localparam bimc_eccpar_debug_t bimc_eccpar_debug_t_reset = 29'b0;
typedef struct packed {
 logic ack;
 logic sent;
 logic send;
 logic [7:0] opcode ;
} bimc_cmd2_t;
localparam bimc_cmd2_t bimc_cmd2_t_reset = 11'b0;
typedef struct packed {
 logic [3:0] memtype ;
 logic [11:0] mem ;
 logic [15:0] addr ;
} bimc_cmd1_t;
localparam bimc_cmd1_t bimc_cmd1_t_reset = 32'b0;
typedef struct packed {
 logic [31:0] data ;
} bimc_cmd0_t;
localparam bimc_cmd0_t bimc_cmd0_t_reset = 32'b0;
typedef struct packed {
 logic ack;
 logic rxflag;
 logic [7:0] opcode ;
} bimc_rxcmd2_t;
localparam bimc_rxcmd2_t bimc_rxcmd2_t_reset = 10'b0;
typedef struct packed {
 logic [3:0] memtype ;
 logic [11:0] mem ;
 logic [15:0] addr ;
} bimc_rxcmd1_t;
localparam bimc_rxcmd1_t bimc_rxcmd1_t_reset = 32'b0;
typedef struct packed {
 logic [31:0] data ;
} bimc_rxcmd0_t;
localparam bimc_rxcmd0_t bimc_rxcmd0_t_reset = 32'b0;
typedef struct packed {
 logic ack;
 logic rxflag;
 logic [7:0] data ;
} bimc_rxrsp2_t;
localparam bimc_rxrsp2_t bimc_rxrsp2_t_reset = 10'b0;
typedef struct packed {
 logic [31:0] data ;
} bimc_rxrsp1_t;
localparam bimc_rxrsp1_t bimc_rxrsp1_t_reset = 32'b0;
typedef struct packed {
 logic [31:0] data ;
} bimc_rxrsp0_t;
localparam bimc_rxrsp0_t bimc_rxrsp0_t_reset = 32'b0;
typedef struct packed {
 logic ack;
 logic rxflag;
 logic [7:0] data ;
} bimc_pollrsp2_t;
localparam bimc_pollrsp2_t bimc_pollrsp2_t_reset = 10'b0;
typedef struct packed {
 logic [31:0] data ;
} bimc_pollrsp1_t;
localparam bimc_pollrsp1_t bimc_pollrsp1_t_reset = 32'b0;
typedef struct packed {
 logic [31:0] data ;
} bimc_pollrsp0_t;
localparam bimc_pollrsp0_t bimc_pollrsp0_t_reset = 32'b0;
typedef struct packed {
 logic ack;
 logic rxflag;
 logic [7:0] opcode ;
} bimc_dbgcmd2_t;
localparam bimc_dbgcmd2_t bimc_dbgcmd2_t_reset = 10'b0;
typedef struct packed {
 logic [3:0] memtype ;
 logic [11:0] mem ;
 logic [15:0] addr ;
} bimc_dbgcmd1_t;
localparam bimc_dbgcmd1_t bimc_dbgcmd1_t_reset = 32'b0;
typedef struct packed {
 logic [31:0] data ;
} bimc_dbgcmd0_t;
localparam bimc_dbgcmd0_t bimc_dbgcmd0_t_reset = 32'b0;
typedef struct packed {
 logic cddip3_bank_hi;
 logic cddip3_bank_lo;
 logic cddip2_bank_hi;
 logic cddip2_bank_lo;
 logic cddip1_bank_hi;
 logic cddip1_bank_lo;
 logic cddip0_bank_hi;
 logic cddip0_bank_lo;
 logic cceip3_bank_hi;
 logic cceip3_bank_lo;
 logic cceip2_bank_hi;
 logic cceip2_bank_lo;
 logic cceip1_bank_hi;
 logic cceip1_bank_lo;
 logic cceip0_bank_hi;
 logic cceip0_bank_lo;
} im_available_t;
localparam im_available_t im_available_t_reset = 16'b0;
typedef struct packed {
 logic cddip3_bank_hi;
 logic cddip3_bank_lo;
 logic cddip2_bank_hi;
 logic cddip2_bank_lo;
 logic cddip1_bank_hi;
 logic cddip1_bank_lo;
 logic cddip0_bank_hi;
 logic cddip0_bank_lo;
 logic cceip3_bank_hi;
 logic cceip3_bank_lo;
 logic cceip2_bank_hi;
 logic cceip2_bank_lo;
 logic cceip1_bank_hi;
 logic cceip1_bank_lo;
 logic cceip0_bank_hi;
 logic cceip0_bank_lo;
} im_consumed_t;
localparam im_consumed_t im_consumed_t_reset = 16'b0;
typedef struct packed {
 logic [18:0] sa_ctrl_spare2 ;
 logic [4:0] sa_event_sel ;
 logic [5:0] sa_ctrl_spare1 ;
 logic sa_snap;
 logic sa_clear_live;
} sa_ctrl_dep_t;
localparam sa_ctrl_dep_t sa_ctrl_dep_t_reset = 32'b0;
typedef struct packed {
 logic [13:0] unused ;
 logic [17:0] upper ;
 logic [31:0] lower ;
} sa_snapshot_t;
localparam sa_snapshot_t sa_snapshot_t_reset = 64'b0;
typedef struct packed {
 logic [3:0] op ;
 logic [4:0] addr ;
} sa_snapshot_ia_config_t;
localparam sa_snapshot_ia_config_t sa_snapshot_ia_config_t_reset = 9'b0;
typedef struct packed {
 logic [2:0] code ;
 logic [4:0] datawords ;
 logic [4:0] addr ;
} sa_snapshot_ia_status_t;
localparam sa_snapshot_ia_status_t sa_snapshot_ia_status_t_reset = 13'b0111111;
typedef struct packed {
 logic [3:0] mem_type ;
 logic ack_error;
 logic sim_tmo;
 logic [3:0] reserved_op ;
 logic compare;
 logic set_init_start;
 logic initialize_inc;
 logic initialize;
 logic reset;
 logic disabled;
 logic enable;
 logic write;
 logic read;
 logic nop;
} sa_snapshot_ia_capability_t;
localparam sa_snapshot_ia_capability_t sa_snapshot_ia_capability_t_reset = 20'b0;
typedef struct packed {
 logic [13:0] unused ;
 logic [17:0] upper ;
 logic [31:0] lower ;
} sa_count_t;
localparam sa_count_t sa_count_t_reset = 64'b0;
typedef struct packed {
 logic [29:0] spare ;
 logic sa_snap;
 logic sa_clear_live;
} sa_global_ctrl_t;
localparam sa_global_ctrl_t sa_global_ctrl_t_reset = 32'b0;
typedef struct packed {
 logic [26:0] spare ;
 logic [4:0] sa_event_sel ;
} sa_ctrl_t;
localparam sa_ctrl_t sa_ctrl_t_reset = 32'b0;
typedef struct packed {
 logic [3:0] op ;
 logic [4:0] addr ;
} sa_ctrl_ia_config_t;
localparam sa_ctrl_ia_config_t sa_ctrl_ia_config_t_reset = 9'b0;
typedef struct packed {
 logic [2:0] code ;
 logic [4:0] datawords ;
 logic [4:0] addr ;
} sa_ctrl_ia_status_t;
localparam sa_ctrl_ia_status_t sa_ctrl_ia_status_t_reset = 13'b011111;
typedef struct packed {
 logic [3:0] mem_type ;
 logic ack_error;
 logic sim_tmo;
 logic [3:0] reserved_op ;
 logic compare;
 logic set_init_start;
 logic initialize_inc;
 logic initialize;
 logic reset;
 logic disabled;
 logic enable;
 logic write;
 logic read;
 logic nop;
} sa_ctrl_ia_capability_t;
localparam sa_ctrl_ia_capability_t sa_ctrl_ia_capability_t_reset = 20'b0;
typedef struct packed {
 logic [19:0] num_key_tlvs_in_flight ;
 logic cddip0_key_tlv_rsm_idle;
 logic cddip1_key_tlv_rsm_idle;
 logic cddip2_key_tlv_rsm_idle;
 logic cddip3_key_tlv_rsm_idle;
 logic cceip0_key_tlv_rsm_idle;
 logic cceip1_key_tlv_rsm_idle;
 logic cceip2_key_tlv_rsm_idle;
 logic cceip3_key_tlv_rsm_idle;
 logic no_key_tlv_in_flight;
 logic tlv_parser_idle;
 logic drng_idle;
 logic kme_slv_empty;
} idle_t;
localparam idle_t idle_t_reset = 32'b0;
typedef struct packed {
 logic gcm_status_data_fifo;
 logic tlv_sb_data_fifo;
 logic kdf_cmd_fifo;
 logic kdfstream_cmd_fifo;
 logic keyfilter_cmd_fifo;
 logic gcm_tag_data_fifo;
 logic gcm_cmd_fifo;
} kop_fifo_override_t;
localparam kop_fifo_override_t kop_fifo_override_t_reset = 7'b0;
typedef struct packed {
 logic [3:0] op ;
 logic [4:0] addr ;
} sa_count_ia_config_t;
localparam sa_count_ia_config_t sa_count_ia_config_t_reset = 9'b0;
typedef struct packed {
 logic [2:0] code ;
 logic [4:0] datawords ;
 logic [4:0] addr ;
} sa_count_ia_status_t;
localparam sa_count_ia_status_t sa_count_ia_status_t_reset = 13'b0111111;
typedef struct packed {
 logic [3:0] mem_type ;
 logic ack_error;
 logic sim_tmo;
 logic [3:0] reserved_op ;
 logic compare;
 logic set_init_start;
 logic initialize_inc;
 logic initialize;
 logic reset;
 logic disabled;
 logic enable;
 logic write;
 logic read;
 logic nop;
} sa_count_ia_capability_t;
localparam sa_count_ia_capability_t sa_count_ia_capability_t_reset = 20'b0;
typedef struct packed {
 logic [31:0] key_size ;
} kdf_test_key_size_t;
localparam kdf_test_key_size_t kdf_test_key_size_t_reset = 32'b0;
endpackage

