architecture module of cr_kme_core is
  type $_tlvp_if_bus_t is
  record
    insert : std_logic ;
    ordern : std_logic_vector(12 downto 0) ;
    typen : tlv_types_e ;
    sot : std_logic ;
    eot : std_logic ;
    tlast : std_logic ;
    tid : std_logic_vector(0 downto 0) ;
    tstrb : std_logic_vector(7 downto 0) ;
    tuser : std_logic_vector(7 downto 0) ;
    tdata : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlvp_if_bus_t is $_tlvp_if_bus_t std_logic_vector(105 downto 0) ;
  type DUMMY6 is array(integer range <>) of tlvp_if_bus_t ;
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "kme_is_core"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 kme_is_core  "
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component cr_axi4s2_slv
    generic (
      N_ENTRIES : integer := 168 ;
      N_AFULL_VAL : integer := 1 ;
      N_AEMPTY_VAL : integer := 1 ;
      USE_RAM : integer := 1 ;
      subtype axi4s_dp_rdy_t is std_logic_vector(0 downto 0) ;
      subtype axi4s_dp_bus_t is std_logic_vector(82 downto 0)
    ) ;
    port (
      axi4s_ib_out : out axi4s_dp_rdy_t ;
      axi4s_slv_out : out axi4s_dp_bus_t ;
      axi4s_slv_empty : out std_logic ;
      axi4s_slv_aempty : out std_logic ;
      axi4s_slv_bimc_odat : out std_logic ;
      axi4s_slv_bimc_osync : out std_logic ;
      axi4s_slv_ro_uncorrectable_ecc_error : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      axi4s_ib_in : in axi4s_dp_bus_t := (others => '0') ;
      axi4s_slv_rd : in std_logic := 'X' ;
      axi4s_slv_bimc_idat : in std_logic := 'X' ;
      axi4s_slv_bimc_isync : in std_logic := 'X' ;
    bimc_rst_n : in std_logic := 'X' ) ;
  end component ;

  component cr_kme_drng
    port (
      drng_health_fail : out std_logic ;
      drng_seed_expired : out std_logic ;
      drng_256_out : out std_logic_vector(127 downto 0) ;
      drng_valid : out std_logic ;
      seed0_invalidate : out std_logic ;
      seed1_invalidate : out std_logic ;
      stat_drbg_reseed : out std_logic ;
      drng_idle : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      drng_ack : in std_logic := 'X' ;
      seed0_valid : in std_logic := 'X' ;
      seed0_internal_state_key : in std_logic_vector(255 downto 0) := (others =>
       'X') ;
      seed0_internal_state_value : in std_logic_vector(127 downto 0) := (others
       => 'X') ;
      seed0_reseed_interval : in std_logic_vector(47 downto 0) := (others => 'X'
      ) ;
      seed1_valid : in std_logic := 'X' ;
      seed1_internal_state_key : in std_logic_vector(255 downto 0) := (others =>
       'X') ;
      seed1_internal_state_value : in std_logic_vector(127 downto 0) := (others
       => 'X') ;
    seed1_reseed_interval : in std_logic_vector(47 downto 0) := (others => 'X') 
    ) ;
  end component ;

  component cr_kme_ckv_pipeline
    generic (
      subtype kme_internal_id is std_logic_vector(3 downto 0) ;
      constant KME_WORD0 : kme_internal_id := std_logic_vector'("0000") ;
      constant KME_DEBUG_KEYHDR : kme_internal_id := std_logic_vector'("0001") ;
      constant KME_IVTWEAK : kme_internal_id := std_logic_vector'("0010") ;
      constant KME_GUID : kme_internal_id := std_logic_vector'("0011") ;
      constant KME_KIM : kme_internal_id := std_logic_vector'("0100") ;
      constant KME_DEK_CKV0 : kme_internal_id := std_logic_vector'("0101") ;
      constant KME_DEK_CKV1 : kme_internal_id := std_logic_vector'("0110") ;
      constant KME_DAK_CKV : kme_internal_id := std_logic_vector'("0111") ;
      constant KME_EIV : kme_internal_id := std_logic_vector'("1000") ;
      constant KME_DEK0 : kme_internal_id := std_logic_vector'("1001") ;
      constant KME_DEK1 : kme_internal_id := std_logic_vector'("1010") ;
      constant KME_ETAG : kme_internal_id := std_logic_vector'("1011") ;
      constant KME_AIV : kme_internal_id := std_logic_vector'("1100") ;
      constant KME_DAK : kme_internal_id := std_logic_vector'("1101") ;
      constant KME_ATAG : kme_internal_id := std_logic_vector'("1110") ;
      constant KME_ERROR : kme_internal_id := std_logic_vector'("1111") ;
      subtype kme_internal_t is std_logic_vector(70 downto 0) ;
      subtype axi4s_dp_bus_t is std_logic_vector(82 downto 0) ;
      subtype kim_entry_t is std_logic_vector(37 downto 0)
    ) ;
    port (
      kme_slv_rd : out std_logic ;
      cceip_encrypt_in : out kme_internal_t ;
      cceip_encrypt_in_valid : out std_logic ;
      cceip_validate_in : out kme_internal_t ;
      cceip_validate_in_valid : out std_logic ;
      cddip_decrypt_in : out kme_internal_t ;
      cddip_decrypt_in_valid : out std_logic ;
      ckv_rd : out std_logic ;
      ckv_addr : out std_logic_vector(14 downto 0) ;
      kim_rd : out std_logic ;
      kim_addr : out std_logic_vector(13 downto 0) ;
      drng_ack : out std_logic ;
      stat_req_with_expired_seed : out std_logic ;
      stat_aux_key_type_0 : out std_logic ;
      stat_aux_key_type_1 : out std_logic ;
      stat_aux_key_type_2 : out std_logic ;
      stat_aux_key_type_3 : out std_logic ;
      stat_aux_key_type_4 : out std_logic ;
      stat_aux_key_type_5 : out std_logic ;
      stat_aux_key_type_6 : out std_logic ;
      stat_aux_key_type_7 : out std_logic ;
      stat_aux_key_type_8 : out std_logic ;
      stat_aux_key_type_9 : out std_logic ;
      stat_aux_key_type_10 : out std_logic ;
      stat_aux_key_type_11 : out std_logic ;
      stat_aux_key_type_12 : out std_logic ;
      stat_aux_key_type_13 : out std_logic ;
      stat_aux_cmd_with_vf_pf_fail : out std_logic ;
      tlv_parser_idle : out std_logic ;
      tlv_parser_int_tlv_start_pulse : out std_logic ;
      set_tlv_bip2_error_int : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      disable_debug_cmd_q : in std_logic := 'X' ;
      disable_unencrypted_keys : in std_logic := 'X' ;
      always_validate_kim_ref : in std_logic := 'X' ;
      kme_slv_out : in axi4s_dp_bus_t := (others => '0') ;
      kme_slv_aempty : in std_logic := 'X' ;
      kme_slv_empty : in std_logic := 'X' ;
      cceip_encrypt_in_stall : in std_logic := 'X' ;
      cceip_validate_in_stall : in std_logic := 'X' ;
      cddip_decrypt_in_stall : in std_logic := 'X' ;
      ckv_dout : in std_logic_vector(63 downto 0) := (others => 'X') ;
      ckv_mbe : in std_logic := 'X' ;
      kim_dout : in kim_entry_t := (others => '0') ;
      kim_mbe : in std_logic := 'X' ;
      drng_seed_expired : in std_logic := 'X' ;
      drng_health_fail : in std_logic := 'X' ;
      drng_256_out : in std_logic_vector(127 downto 0) := (others => 'X') ;
    drng_valid : in std_logic := 'X' ) ;
  end component ;

  component cr_kme_ram_fifo
    generic (
      DATA_SIZE : integer := 71 ;
      FIFO_DEPTH : integer := 2048 ;
      SPECIALIZE : integer := 1
    ) ;
    port (
      fifo_in_stall : out std_logic ;
      fifo_out : out std_logic_vector(70 downto 0) ;
      fifo_out_valid : out std_logic ;
      fifo_bimc_osync : out std_logic ;
      fifo_bimc_odat : out std_logic ;
      fifo_mbe : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      fifo_in : in std_logic_vector(70 downto 0) := (others => 'X') ;
      fifo_in_valid : in std_logic := 'X' ;
      fifo_out_ack : in std_logic := 'X' ;
      bimc_rst_n : in std_logic := 'X' ;
      fifo_bimc_isync : in std_logic := 'X' ;
    fifo_bimc_idat : in std_logic := 'X' ) ;
  end component ;

  component cr_kme_kop_xcm69
    generic (
      CCEIP_ENCRYPT_KOP : integer := 1 ;
      subtype tlv_types_e is std_logic_vector(7 downto 0) ;
      constant RQE : tlv_types_e := "00000000" ;
      constant CMD : tlv_types_e := "00000001" ;
      constant KEY : tlv_types_e := "00000010" ;
      constant PHD : tlv_types_e := "00000011" ;
      constant PFD : tlv_types_e := "00000100" ;
      constant DATA_UNK : tlv_types_e := "00000101" ;
      constant FTR : tlv_types_e := "00000110" ;
      constant LZ77 : tlv_types_e := "00000111" ;
      constant STAT : tlv_types_e := "00001000" ;
      constant CQE : tlv_types_e := "00001001" ;
      constant GUID : tlv_types_e := "00001010" ;
      constant FRMD_USER_NULL : tlv_types_e := "00001011" ;
      constant FRMD_USER_PI16 : tlv_types_e := "00001100" ;
      constant FRMD_USER_PI64 : tlv_types_e := "00001101" ;
      constant FRMD_USER_VM : tlv_types_e := "00001110" ;
      constant FRMD_INT_APP : tlv_types_e := "00001111" ;
      constant FRMD_INT_SIP : tlv_types_e := "00010000" ;
      constant FRMD_INT_LIP : tlv_types_e := "00010001" ;
      constant FRMD_INT_VM : tlv_types_e := "00010010" ;
      constant DATA : tlv_types_e := "00010011" ;
      constant CR_IV : tlv_types_e := "00010100" ;
      constant AUX_CMD : tlv_types_e := "00010101" ;
      constant FRMD_INT_VM_SHORT : tlv_types_e := "00010110" ;
      constant AUX_CMD_IV : tlv_types_e := "00010111" ;
      constant AUX_CMD_GUID : tlv_types_e := "00011000" ;
      constant AUX_CMD_GUID_IV : tlv_types_e := "00011001" ;
      constant SCH : tlv_types_e := "00011010" ;
      constant RSV_TLV : tlv_types_e := "11111111" ;
      subtype tlvp_if_bus_t is std_logic_vector(105 downto 0) ;
      subtype label_t is std_logic_vector(271 downto 0) ;
      type DUMMY2 is array(integer range <>) of label_t ;
      subtype kme_internal_id is std_logic_vector(3 downto 0) ;
      constant KME_WORD0 : kme_internal_id := std_logic_vector'("0000") ;
      constant KME_DEBUG_KEYHDR : kme_internal_id := std_logic_vector'("0001") ;
      constant KME_IVTWEAK : kme_internal_id := std_logic_vector'("0010") ;
      constant KME_GUID : kme_internal_id := std_logic_vector'("0011") ;
      constant KME_KIM : kme_internal_id := std_logic_vector'("0100") ;
      constant KME_DEK_CKV0 : kme_internal_id := std_logic_vector'("0101") ;
      constant KME_DEK_CKV1 : kme_internal_id := std_logic_vector'("0110") ;
      constant KME_DAK_CKV : kme_internal_id := std_logic_vector'("0111") ;
      constant KME_EIV : kme_internal_id := std_logic_vector'("1000") ;
      constant KME_DEK0 : kme_internal_id := std_logic_vector'("1001") ;
      constant KME_DEK1 : kme_internal_id := std_logic_vector'("1010") ;
      constant KME_ETAG : kme_internal_id := std_logic_vector'("1011") ;
      constant KME_AIV : kme_internal_id := std_logic_vector'("1100") ;
      constant KME_DAK : kme_internal_id := std_logic_vector'("1101") ;
      constant KME_ATAG : kme_internal_id := std_logic_vector'("1110") ;
      constant KME_ERROR : kme_internal_id := std_logic_vector'("1111") ;
      subtype kme_internal_t is std_logic_vector(70 downto 0)
    ) ;
    port (
      kme_internal_out_ack : out std_logic ;
      key_tlv_ob_wr : out std_logic ;
      key_tlv_ob_tlv : out tlvp_if_bus_t ;
      set_gcm_tag_fail_int : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      scan_en : in std_logic := 'X' ;
      scan_mode : in std_logic := 'X' ;
      scan_rst_n : in std_logic := 'X' ;
      labels : in DUMMY2(7 downto 0) := (others => (others => '0')) ;
      kme_internal_out : in kme_internal_t := (others => '0') ;
      kme_internal_out_valid : in std_logic := 'X' ;
      key_tlv_ob_full : in std_logic := 'X' ;
      key_tlv_ob_afull : in std_logic := 'X' ;
      kop_fifo_override : in work.cr_kme_regfilePKG.kop_fifo_override_t := 
      (others => '0') ;
      kdf_test_key_size : in std_logic_vector(31 downto 0) := (others => 'X') ;
    kdf_test_mode_en : in std_logic := 'X' ) ;
  end component ;

  component cr_kme_kop_xcm68
    generic (
      CCEIP_ENCRYPT_KOP : integer := 0 ;
      subtype tlv_types_e is std_logic_vector(7 downto 0) ;
      constant RQE : tlv_types_e := "00000000" ;
      constant CMD : tlv_types_e := "00000001" ;
      constant KEY : tlv_types_e := "00000010" ;
      constant PHD : tlv_types_e := "00000011" ;
      constant PFD : tlv_types_e := "00000100" ;
      constant DATA_UNK : tlv_types_e := "00000101" ;
      constant FTR : tlv_types_e := "00000110" ;
      constant LZ77 : tlv_types_e := "00000111" ;
      constant STAT : tlv_types_e := "00001000" ;
      constant CQE : tlv_types_e := "00001001" ;
      constant GUID : tlv_types_e := "00001010" ;
      constant FRMD_USER_NULL : tlv_types_e := "00001011" ;
      constant FRMD_USER_PI16 : tlv_types_e := "00001100" ;
      constant FRMD_USER_PI64 : tlv_types_e := "00001101" ;
      constant FRMD_USER_VM : tlv_types_e := "00001110" ;
      constant FRMD_INT_APP : tlv_types_e := "00001111" ;
      constant FRMD_INT_SIP : tlv_types_e := "00010000" ;
      constant FRMD_INT_LIP : tlv_types_e := "00010001" ;
      constant FRMD_INT_VM : tlv_types_e := "00010010" ;
      constant DATA : tlv_types_e := "00010011" ;
      constant CR_IV : tlv_types_e := "00010100" ;
      constant AUX_CMD : tlv_types_e := "00010101" ;
      constant FRMD_INT_VM_SHORT : tlv_types_e := "00010110" ;
      constant AUX_CMD_IV : tlv_types_e := "00010111" ;
      constant AUX_CMD_GUID : tlv_types_e := "00011000" ;
      constant AUX_CMD_GUID_IV : tlv_types_e := "00011001" ;
      constant SCH : tlv_types_e := "00011010" ;
      constant RSV_TLV : tlv_types_e := "11111111" ;
      subtype tlvp_if_bus_t is std_logic_vector(105 downto 0) ;
      subtype label_t is std_logic_vector(271 downto 0) ;
      type DUMMY2 is array(integer range <>) of label_t ;
      subtype kme_internal_id is std_logic_vector(3 downto 0) ;
      constant KME_WORD0 : kme_internal_id := std_logic_vector'("0000") ;
      constant KME_DEBUG_KEYHDR : kme_internal_id := std_logic_vector'("0001") ;
      constant KME_IVTWEAK : kme_internal_id := std_logic_vector'("0010") ;
      constant KME_GUID : kme_internal_id := std_logic_vector'("0011") ;
      constant KME_KIM : kme_internal_id := std_logic_vector'("0100") ;
      constant KME_DEK_CKV0 : kme_internal_id := std_logic_vector'("0101") ;
      constant KME_DEK_CKV1 : kme_internal_id := std_logic_vector'("0110") ;
      constant KME_DAK_CKV : kme_internal_id := std_logic_vector'("0111") ;
      constant KME_EIV : kme_internal_id := std_logic_vector'("1000") ;
      constant KME_DEK0 : kme_internal_id := std_logic_vector'("1001") ;
      constant KME_DEK1 : kme_internal_id := std_logic_vector'("1010") ;
      constant KME_ETAG : kme_internal_id := std_logic_vector'("1011") ;
      constant KME_AIV : kme_internal_id := std_logic_vector'("1100") ;
      constant KME_DAK : kme_internal_id := std_logic_vector'("1101") ;
      constant KME_ATAG : kme_internal_id := std_logic_vector'("1110") ;
      constant KME_ERROR : kme_internal_id := std_logic_vector'("1111") ;
      subtype kme_internal_t is std_logic_vector(70 downto 0)
    ) ;
    port (
      kme_internal_out_ack : out std_logic ;
      key_tlv_ob_wr : out std_logic ;
      key_tlv_ob_tlv : out tlvp_if_bus_t ;
      set_gcm_tag_fail_int : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      scan_en : in std_logic := 'X' ;
      scan_mode : in std_logic := 'X' ;
      scan_rst_n : in std_logic := 'X' ;
      labels : in DUMMY2(7 downto 0) := (others => (others => '0')) ;
      kme_internal_out : in kme_internal_t := (others => '0') ;
      kme_internal_out_valid : in std_logic := 'X' ;
      key_tlv_ob_full : in std_logic := 'X' ;
      key_tlv_ob_afull : in std_logic := 'X' ;
      kop_fifo_override : in work.cr_kme_regfilePKG.kop_fifo_override_t := 
      (others => '0') ;
      kdf_test_key_size : in std_logic_vector(31 downto 0) := (others => 'X') ;
    kdf_test_mode_en : in std_logic := 'X' ) ;
  end component ;

  component cr_kme_key_tlv_compare_split
    generic (
      subtype tlv_types_e is std_logic_vector(7 downto 0) ;
      constant RQE : tlv_types_e := "00000000" ;
      constant CMD : tlv_types_e := "00000001" ;
      constant KEY : tlv_types_e := "00000010" ;
      constant PHD : tlv_types_e := "00000011" ;
      constant PFD : tlv_types_e := "00000100" ;
      constant DATA_UNK : tlv_types_e := "00000101" ;
      constant FTR : tlv_types_e := "00000110" ;
      constant LZ77 : tlv_types_e := "00000111" ;
      constant STAT : tlv_types_e := "00001000" ;
      constant CQE : tlv_types_e := "00001001" ;
      constant GUID : tlv_types_e := "00001010" ;
      constant FRMD_USER_NULL : tlv_types_e := "00001011" ;
      constant FRMD_USER_PI16 : tlv_types_e := "00001100" ;
      constant FRMD_USER_PI64 : tlv_types_e := "00001101" ;
      constant FRMD_USER_VM : tlv_types_e := "00001110" ;
      constant FRMD_INT_APP : tlv_types_e := "00001111" ;
      constant FRMD_INT_SIP : tlv_types_e := "00010000" ;
      constant FRMD_INT_LIP : tlv_types_e := "00010001" ;
      constant FRMD_INT_VM : tlv_types_e := "00010010" ;
      constant DATA : tlv_types_e := "00010011" ;
      constant CR_IV : tlv_types_e := "00010100" ;
      constant AUX_CMD : tlv_types_e := "00010101" ;
      constant FRMD_INT_VM_SHORT : tlv_types_e := "00010110" ;
      constant AUX_CMD_IV : tlv_types_e := "00010111" ;
      constant AUX_CMD_GUID : tlv_types_e := "00011000" ;
      constant AUX_CMD_GUID_IV : tlv_types_e := "00011001" ;
      constant SCH : tlv_types_e := "00011010" ;
      constant RSV_TLV : tlv_types_e := "11111111" ;
      subtype tlvp_if_bus_t is std_logic_vector(105 downto 0) ;
      type DUMMY0 is array(integer range <>) of tlvp_if_bus_t
    ) ;
    port (
      set_key_tlv_miscmp_int : out std_logic ;
      cceip_encrypt_ob_full : out std_logic ;
      cceip_encrypt_ob_afull : out std_logic ;
      cceip_validate_ob_full : out std_logic ;
      cceip_validate_ob_afull : out std_logic ;
      cceip_ob_wr : out std_logic_vector(3 downto 0) ;
      cceip_ob_tlv : out DUMMY0(3 downto 0) ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      suppress_key_tlvs : in std_logic := 'X' ;
      cceip_encrypt_ob_wr : in std_logic := 'X' ;
      cceip_encrypt_ob_tlv : in tlvp_if_bus_t := (others => '0') ;
      cceip_validate_ob_wr : in std_logic := 'X' ;
      cceip_validate_ob_tlv : in tlvp_if_bus_t := (others => '0') ;
      cceip_ob_full : in std_logic_vector(3 downto 0) := (others => 'X') ;
    cceip_ob_afull : in std_logic_vector(3 downto 0) := (others => 'X') ) ;
  end component ;

  component cr_kme_key_tlv_rsm
    generic (
      subtype axi4s_dp_bus_t is std_logic_vector(82 downto 0) ;
      subtype tlv_types_e is std_logic_vector(7 downto 0) ;
      constant RQE : tlv_types_e := "00000000" ;
      constant CMD : tlv_types_e := "00000001" ;
      constant KEY : tlv_types_e := "00000010" ;
      constant PHD : tlv_types_e := "00000011" ;
      constant PFD : tlv_types_e := "00000100" ;
      constant DATA_UNK : tlv_types_e := "00000101" ;
      constant FTR : tlv_types_e := "00000110" ;
      constant LZ77 : tlv_types_e := "00000111" ;
      constant STAT : tlv_types_e := "00001000" ;
      constant CQE : tlv_types_e := "00001001" ;
      constant GUID : tlv_types_e := "00001010" ;
      constant FRMD_USER_NULL : tlv_types_e := "00001011" ;
      constant FRMD_USER_PI16 : tlv_types_e := "00001100" ;
      constant FRMD_USER_PI64 : tlv_types_e := "00001101" ;
      constant FRMD_USER_VM : tlv_types_e := "00001110" ;
      constant FRMD_INT_APP : tlv_types_e := "00001111" ;
      constant FRMD_INT_SIP : tlv_types_e := "00010000" ;
      constant FRMD_INT_LIP : tlv_types_e := "00010001" ;
      constant FRMD_INT_VM : tlv_types_e := "00010010" ;
      constant DATA : tlv_types_e := "00010011" ;
      constant CR_IV : tlv_types_e := "00010100" ;
      constant AUX_CMD : tlv_types_e := "00010101" ;
      constant FRMD_INT_VM_SHORT : tlv_types_e := "00010110" ;
      constant AUX_CMD_IV : tlv_types_e := "00010111" ;
      constant AUX_CMD_GUID : tlv_types_e := "00011000" ;
      constant AUX_CMD_GUID_IV : tlv_types_e := "00011001" ;
      constant SCH : tlv_types_e := "00011010" ;
      constant RSV_TLV : tlv_types_e := "11111111" ;
      subtype tlvp_if_bus_t is std_logic_vector(105 downto 0) ;
      subtype axi4s_dp_rdy_t is std_logic_vector(0 downto 0)
    ) ;
    port (
      usr_ob_full : out std_logic ;
      usr_ob_afull : out std_logic ;
      axi4s_ob_out : out axi4s_dp_bus_t ;
      stat_stall_on_valid_key : out std_logic ;
      key_tlv_rsm_end_pulse : out std_logic ;
      key_tlv_rsm_idle : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      usr_ob_wr : in std_logic := 'X' ;
      usr_ob_tlv : in tlvp_if_bus_t := (others => '0') ;
    axi4s_ob_in : in axi4s_dp_rdy_t := (others => '0') ) ;
  end component ;

  component cr_kme_core_glue
    generic (
      subtype axi4s_dp_rdy_t is std_logic_vector(0 downto 0) ;
      type DUMMY0 is array(integer range <>) of
       work.cr_kme_regfilePKG.sa_snapshot_t ;
      type DUMMY1 is array(integer range <>) of
       work.cr_kme_regfilePKG.sa_count_t ;
      type DUMMY2 is array(integer range <>) of work.cr_kme_regfilePKG.sa_ctrl_t
    ) ;
    port (
      disable_debug_cmd_q : out std_logic ;
      set_gcm_tag_fail_int : out std_logic ;
      set_txc_bp_int : out std_logic ;
      set_rsm_is_backpressuring : out std_logic_vector(7 downto 0) ;
      kme_ib_out : out axi4s_dp_rdy_t ;
      sa_snapshot : out DUMMY0(31 downto 0) ;
      sa_count : out DUMMY1(31 downto 0) ;
      kme_idle : out std_logic ;
      idle_components : out work.cr_kme_regfilePKG.idle_t ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      disable_debug_cmd : in std_logic := 'X' ;
      cceip_encrypt_gcm_tag_fail_int : in std_logic := 'X' ;
      cceip_validate_gcm_tag_fail_int : in std_logic := 'X' ;
      cddip_decrypt_gcm_tag_fail_int : in std_logic := 'X' ;
      cceip_ob_full : in std_logic_vector(3 downto 0) := (others => 'X') ;
      cddip_ob_full : in std_logic_vector(3 downto 0) := (others => 'X') ;
      tready_override : in work.cr_kme_regfilePKG.tready_override_t := (others
       => '0') ;
      core_kme_ib_out : in axi4s_dp_rdy_t := (others => '0') ;
      sa_global_ctrl : in work.cr_kme_regfilePKG.sa_global_ctrl_t := (others =>
       '0') ;
      sa_ctrl : in DUMMY2(31 downto 0) := (others => (others => '0')) ;
      stat_drbg_reseed : in std_logic := 'X' ;
      stat_req_with_expired_seed : in std_logic := 'X' ;
      stat_aux_key_type_0 : in std_logic := 'X' ;
      stat_aux_key_type_1 : in std_logic := 'X' ;
      stat_aux_key_type_2 : in std_logic := 'X' ;
      stat_aux_key_type_3 : in std_logic := 'X' ;
      stat_aux_key_type_4 : in std_logic := 'X' ;
      stat_aux_key_type_5 : in std_logic := 'X' ;
      stat_aux_key_type_6 : in std_logic := 'X' ;
      stat_aux_key_type_7 : in std_logic := 'X' ;
      stat_aux_key_type_8 : in std_logic := 'X' ;
      stat_aux_key_type_9 : in std_logic := 'X' ;
      stat_aux_key_type_10 : in std_logic := 'X' ;
      stat_aux_key_type_11 : in std_logic := 'X' ;
      stat_aux_key_type_12 : in std_logic := 'X' ;
      stat_aux_key_type_13 : in std_logic := 'X' ;
      stat_cceip0_stall_on_valid_key : in std_logic := 'X' ;
      stat_cceip1_stall_on_valid_key : in std_logic := 'X' ;
      stat_cceip2_stall_on_valid_key : in std_logic := 'X' ;
      stat_cceip3_stall_on_valid_key : in std_logic := 'X' ;
      stat_cddip0_stall_on_valid_key : in std_logic := 'X' ;
      stat_cddip1_stall_on_valid_key : in std_logic := 'X' ;
      stat_cddip2_stall_on_valid_key : in std_logic := 'X' ;
      stat_cddip3_stall_on_valid_key : in std_logic := 'X' ;
      stat_aux_cmd_with_vf_pf_fail : in std_logic := 'X' ;
      kme_slv_empty : in std_logic := 'X' ;
      drng_idle : in std_logic := 'X' ;
      tlv_parser_idle : in std_logic := 'X' ;
      tlv_parser_int_tlv_start_pulse : in std_logic := 'X' ;
      cceip_key_tlv_rsm_end_pulse : in std_logic_vector(3 downto 0) := (others
       => 'X') ;
      cddip_key_tlv_rsm_end_pulse : in std_logic_vector(3 downto 0) := (others
       => 'X') ;
      cceip_key_tlv_rsm_idle : in std_logic_vector(3 downto 0) := (others => 'X'
      ) ;
    cddip_key_tlv_rsm_idle : in std_logic_vector(3 downto 0) := (others => 'X') 
    ) ;
  end component ;

  type $_rbus_in_t is
  record
    addr : std_logic_vector(19 downto 0) ;
    wr_strb : std_logic ;
    wr_data : std_logic_vector(31 downto 0) ;
    rd_strb : std_logic ;
  end record ;
  subtype rbus_in_t is $_rbus_in_t std_logic_vector(53 downto 0) ;
  type $_rbus_out_t is
  record
    rd_data : std_logic_vector(31 downto 0) ;
    ack : std_logic ;
    err_ack : std_logic ;
  end record ;
  subtype rbus_out_t is $_rbus_out_t std_logic_vector(33 downto 0) ;
  type $_rbus_ring_t is
  record
    addr : std_logic_vector(19 downto 0) ;
    wr_strb : std_logic ;
    wr_data : std_logic_vector(31 downto 0) ;
    rd_strb : std_logic ;
    rd_data : std_logic_vector(31 downto 0) ;
    ack : std_logic ;
    err_ack : std_logic ;
  end record ;
  subtype rbus_ring_t is $_rbus_ring_t std_logic_vector(87 downto 0) ;
  type $_kme_rbus_ring_t is
  record
    addr : std_logic_vector(15 downto 0) ;
    wr_strb : std_logic ;
    wr_data : std_logic_vector(31 downto 0) ;
    rd_strb : std_logic ;
    rd_data : std_logic_vector(31 downto 0) ;
    ack : std_logic ;
    err_ack : std_logic ;
  end record ;
  subtype kme_rbus_ring_t is $_kme_rbus_ring_t std_logic_vector(83 downto 0) ;
  type $_im_desc_t is
  record
    eob : std_logic ;
    bytes_vld : std_logic_vector(7 downto 0) ;
    im_meta : std_logic_vector(22 downto 0) ;
  end record ;
  subtype im_desc_t is $_im_desc_t std_logic_vector(31 downto 0) ;
  type $_im_data_t is
  record
    data : std_logic_vector(63 downto 0) ;
  end record ;
  subtype im_data_t is $_im_data_t std_logic_vector(63 downto 0) ;
  type $_im_din_t is
  record
    data : im_data_t ;
    desc : im_desc_t ;
  end record ;
  subtype im_din_t is $_im_din_t std_logic_vector(95 downto 0) ;
  type $_im_available_t is
  record
    bank_hi : std_logic ;
    bank_lo : std_logic ;
  end record ;
  subtype im_available_t is $_im_available_t std_logic_vector(1 downto 0) ;
  type $_im_consumed_t is
  record
    bank_hi : std_logic ;
    bank_lo : std_logic ;
  end record ;
  subtype im_consumed_t is $_im_consumed_t std_logic_vector(1 downto 0) ;
  type $_frame_latency_if_bus_t is
  record
    valid : std_logic ;
    seq_num : std_logic_vector(7 downto 0) ;
  end record ;
  subtype frame_latency_if_bus_t is $_frame_latency_if_bus_t std_logic_vector(8
   downto 0) ;
  type $_sched_update_if_bus_t is
  record
    valid : std_logic ;
    rqe_sched_handle : std_logic_vector(15 downto 0) ;
    last : std_logic ;
    tlv_frame_num : std_logic_vector(10 downto 0) ;
    tlv_eng_id : std_logic_vector(3 downto 0) ;
    tlv_seq_num : std_logic_vector(7 downto 0) ;
    bytes_in : std_logic_vector(23 downto 0) ;
    bytes_out : std_logic_vector(23 downto 0) ;
    basis : std_logic_vector(23 downto 0) ;
  end record ;
  subtype sched_update_if_bus_t is $_sched_update_if_bus_t std_logic_vector(112
   downto 0) ;
  type $_lz_symbol_bus_t is
  record
    framing : std_logic_vector(3 downto 0) ;
    data0 : std_logic_vector(7 downto 0) ;
    data1 : std_logic_vector(7 downto 0) ;
    data2 : std_logic_vector(7 downto 0) ;
    data3 : std_logic_vector(7 downto 0) ;
    backref : std_logic ;
    backref_type : std_logic ;
    backref_lane : std_logic_vector(1 downto 0) ;
    offset_msb : std_logic_vector(7 downto 0) ;
    length : std_logic_vector(15 downto 0) ;
  end record ;
  subtype lz_symbol_bus_t is $_lz_symbol_bus_t std_logic_vector(63 downto 0) ;
  type $_tlv_word_0_t is
  record
    tlv_bip2 : std_logic_vector(1 downto 0) ;
    resv0 : std_logic_vector(18 downto 0) ;
    tlv_frame_num : std_logic_vector(10 downto 0) ;
    resv1 : std_logic_vector(3 downto 0) ;
    tlv_eng_id : std_logic_vector(3 downto 0) ;
    tlv_seq_num : std_logic_vector(7 downto 0) ;
    tlv_len : std_logic_vector(7 downto 0) ;
    tlv_type : tlv_types_e ;
  end record ;
  subtype tlv_word_0_t is $_tlv_word_0_t std_logic_vector(63 downto 0) ;
  type $_tlv_rqe_word_0_t is
  record
    tlv_bip2 : std_logic_vector(1 downto 0) ;
    no_data : std_logic ;
    aux_frmd_crc : std_logic ;
    frame_size : rqe_frame_size_e ;
    vf_valid : std_logic ;
    trace : rqe_trace_e ;
    unused : std_logic_vector(10 downto 0) ;
    tlv_frame_num : std_logic_vector(10 downto 0) ;
    resv0 : std_logic_vector(3 downto 0) ;
    tlv_eng_id : std_logic_vector(3 downto 0) ;
    tlv_seq_num : std_logic_vector(7 downto 0) ;
    tlv_len : std_logic_vector(7 downto 0) ;
    tlv_type : tlv_types_e ;
  end record ;
  subtype tlv_rqe_word_0_t is $_tlv_rqe_word_0_t std_logic_vector(63 downto 0) ;
  type $_tlv_data_word_0_t is
  record
    tlv_bip2 : std_logic_vector(1 downto 0) ;
    last_of_command : std_logic ;
    resv0 : std_logic_vector(15 downto 0) ;
    coding : frmd_coding_e ;
    tlv_frame_num : std_logic_vector(10 downto 0) ;
    resv1 : std_logic_vector(3 downto 0) ;
    tlv_eng_id : std_logic_vector(3 downto 0) ;
    tlv_seq_num : std_logic_vector(7 downto 0) ;
    tlv_len : std_logic_vector(7 downto 0) ;
    tlv_type : tlv_types_e ;
  end record ;
  subtype tlv_data_word_0_t is $_tlv_data_word_0_t std_logic_vector(63 downto 0)
   ;
  type $_tlv_rqe_word_1_t is
  record
    pf_number : std_logic_vector(3 downto 0) ;
    vf_number : std_logic_vector(11 downto 0) ;
    scheduler_handle : std_logic_vector(15 downto 0) ;
    src_data_len : std_logic_vector(31 downto 0) ;
  end record ;
  subtype tlv_rqe_word_1_t is $_tlv_rqe_word_1_t std_logic_vector(63 downto 0) ;
  type $_cmd_debug_t is
  record
    tlvp_corrupt : tlvp_corrupt_e ;
    cmd_mode : cmd_mode_e ;
    module_id : std_logic_vector(4 downto 0) ;
    cmd_type : cmd_type_e ;
    tlv_num : std_logic_vector(4 downto 0) ;
    byte_num : std_logic_vector(9 downto 0) ;
    byte_msk : std_logic_vector(7 downto 0) ;
  end record ;
  subtype cmd_debug_t is $_cmd_debug_t std_logic_vector(31 downto 0) ;
  type $_bp_debug_t is
  record
    rsvd : std_logic_vector(0 downto 0) ;
    on_count : std_logic_vector(10 downto 0) ;
    off_count : std_logic_vector(10 downto 0) ;
  end record ;
  subtype bp_debug_t is $_bp_debug_t std_logic_vector(22 downto 0) ;
  type $_tlv_cmd_word_1_t is
  record
    debug : cmd_debug_t ;
    trace : std_logic ;
    dst_guid_present : std_logic ;
    frmd_out_type : std_logic_vector(6 downto 0) ;
    md_op : cmd_md_op_e ;
    md_type : cmd_md_type_e ;
    frmd_in_type : std_logic_vector(6 downto 0) ;
    frmd_in_aux : std_logic_vector(5 downto 0) ;
    frmd_crc_in : cmd_frmd_crc_in_e ;
    src_guid_present : cmd_guid_present_e ;
    compound_cmd_frm_size : cmd_compound_cmd_frm_size_e ;
  end record ;
  subtype tlv_cmd_word_1_t is $_tlv_cmd_word_1_t std_logic_vector(63 downto 0) ;
  type $_tlv_cmd_word_2_t is
  record
    rsvd2 : std_logic ;
    key_type : aux_key_type_e ;
    rsvd1 : std_logic_vector(1 downto 0) ;
    cipher_pad : cmd_cipher_pad_e ;
    iv_op : cmd_iv_op_e ;
    aad_len : std_logic_vector(7 downto 0) ;
    cipher_op : cmd_cipher_op_e ;
    auth_op : cmd_auth_op_e ;
    raw_auth_op : cmd_auth_op_e ;
    rsvd0 : std_logic_vector(7 downto 0) ;
    chu_comp_thrsh : cmd_chu_comp_thrsh_e ;
    xp10_crc_mode : cmd_xp10_crc_mode_e ;
    xp10_user_prefix_size : std_logic_vector(5 downto 0) ;
    xp10_prefix_mode : cmd_xp10_prefix_mode_e ;
    lz77_max_symb_len : cmd_lz77_max_symb_len_e ;
    lz77_min_match_len : cmd_lz77_min_match_len_e ;
    lz77_dly_match_win : cmd_lz77_dly_match_win_e ;
    lz77_win_size : cmd_lz77_win_size_e ;
    comp_mode : cmd_comp_mode_e ;
  end record ;
  subtype tlv_cmd_word_2_t is $_tlv_cmd_word_2_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word1_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word1_t is $_tlv_key_word1_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word2_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word2_t is $_tlv_key_word2_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word3_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word3_t is $_tlv_key_word3_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word4_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word4_t is $_tlv_key_word4_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word5_t is
  record
    ivtweak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word5_t is $_tlv_key_word5_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word6_t is
  record
    ivtweak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word6_t is $_tlv_key_word6_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word7_t is
  record
    dek : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word7_t is $_tlv_key_word7_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word8_t is
  record
    dek : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word8_t is $_tlv_key_word8_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word9_t is
  record
    dek : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word9_t is $_tlv_key_word9_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word10_t is
  record
    dek : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word10_t is $_tlv_key_word10_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word11_t is
  record
    dek : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word11_t is $_tlv_key_word11_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word12_t is
  record
    dek : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word12_t is $_tlv_key_word12_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word13_t is
  record
    dek : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word13_t is $_tlv_key_word13_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word14_t is
  record
    dek : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word14_t is $_tlv_key_word14_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word15_t is
  record
    dak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word15_t is $_tlv_key_word15_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word16_t is
  record
    dak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word16_t is $_tlv_key_word16_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word17_t is
  record
    dak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word17_t is $_tlv_key_word17_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word18_t is
  record
    dak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_key_word18_t is $_tlv_key_word18_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word19_t is
  record
    rsvd : std_logic_vector(55 downto 0) ;
    kme_errors : zipline_error_e ;
  end record ;
  subtype tlv_key_word19_t is $_tlv_key_word19_t std_logic_vector(63 downto 0) ;
  type $_tlv_key_word20_t is
  record
    rsvd : std_logic_vector(31 downto 0) ;
    crc32 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype tlv_key_word20_t is $_tlv_key_word20_t std_logic_vector(63 downto 0) ;
  type $_tlv_phd_word1_t is
  record
    rsvd : std_logic_vector(63 downto 6) ;
    xp10_prefix_sel : std_logic_vector(5 downto 0) ;
  end record ;
  subtype tlv_phd_word1_t is $_tlv_phd_word1_t std_logic_vector(63 downto 0) ;
  type $_tlv_pfd_word0_t is
  record
    tlv_bip2 : std_logic_vector(1 downto 0) ;
    resv0 : std_logic_vector(11 downto 0) ;
    prefix_src : std_logic ;
    xp10_prefix_sel : std_logic_vector(5 downto 0) ;
    tlv_frame_num : std_logic_vector(10 downto 0) ;
    resv1 : std_logic_vector(3 downto 0) ;
    tlv_eng_id : std_logic_vector(3 downto 0) ;
    tlv_seq_num : std_logic_vector(7 downto 0) ;
    tlv_len : std_logic_vector(7 downto 0) ;
    tlv_type : tlv_types_e ;
  end record ;
  subtype tlv_pfd_word0_t is $_tlv_pfd_word0_t std_logic_vector(63 downto 0) ;
  type $_tlv_pfd_word1_t is
  record
    rsvd : std_logic_vector(63 downto 6) ;
    xp10_prefix_sel : std_logic_vector(5 downto 0) ;
  end record ;
  subtype tlv_pfd_word1_t is $_tlv_pfd_word1_t std_logic_vector(63 downto 0) ;
  type $_tlv_guid_word1_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_guid_word1_t is $_tlv_guid_word1_t std_logic_vector(63 downto 0) ;
  type $_tlv_guid_word2_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_guid_word2_t is $_tlv_guid_word2_t std_logic_vector(63 downto 0) ;
  type $_tlv_guid_word3_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_guid_word3_t is $_tlv_guid_word3_t std_logic_vector(63 downto 0) ;
  type $_tlv_guid_word4_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_guid_word4_t is $_tlv_guid_word4_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word0_t is
  record
    tlv_bip2 : std_logic_vector(1 downto 0) ;
    rsvd3 : std_logic_vector(1 downto 0) ;
    gen_frmd_out_type : std_logic_vector(7 downto 0) ;
    rsvd2 : std_logic_vector(1 downto 0) ;
    raw_data_mac_size : frmd_mac_size_e ;
    enc_cmp_data_mac_size : frmd_mac_size_e ;
    coding : frmd_coding_e ;
    rsvd1 : std_logic ;
    tlv_frame_num : std_logic_vector(10 downto 0) ;
    rsvd0 : std_logic_vector(3 downto 0) ;
    tlv_eng_id : std_logic_vector(3 downto 0) ;
    tlv_seq_num : std_logic_vector(7 downto 0) ;
    tlv_len : std_logic_vector(7 downto 0) ;
    tlv_type : tlv_types_e ;
  end record ;
  subtype tlv_ftr_word0_t is $_tlv_ftr_word0_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word1_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_word1_t is $_tlv_ftr_word1_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word2_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_word2_t is $_tlv_ftr_word2_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word3_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_word3_t is $_tlv_ftr_word3_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word4_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_word4_t is $_tlv_ftr_word4_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word5_t is
  record
    raw_data_cksum : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_word5_t is $_tlv_ftr_word5_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word6_t is
  record
    raw_data_cksum_protocol : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_word6_t is $_tlv_ftr_word6_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word7_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_word7_t is $_tlv_ftr_word7_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word8_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_word8_t is $_tlv_ftr_word8_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word9_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_word9_t is $_tlv_ftr_word9_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word10_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_word10_t is $_tlv_ftr_word10_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word11_t is
  record
    enc_cmp_data_cksum : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_word11_t is $_tlv_ftr_word11_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word12_t is
  record
    nvme_raw_cksum_crc16t : std_logic_vector(15 downto 0) ;
    bytes_in : std_logic_vector(23 downto 0) ;
    bytes_out : std_logic_vector(23 downto 0) ;
  end record ;
  subtype tlv_ftr_word12_t is $_tlv_ftr_word12_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_word13_t is
  record
    rsvd1 : std_logic_vector(19 downto 0) ;
    compressed_length : std_logic_vector(23 downto 0) ;
    error_code : zipline_error_e ;
    rsvd0 : std_logic ;
    errored_frame_number : std_logic_vector(10 downto 0) ;
  end record ;
  subtype tlv_ftr_word13_t is $_tlv_ftr_word13_t std_logic_vector(63 downto 0) ;
  type $_tlv_ftr_guid_word0_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_guid_word0_t is $_tlv_ftr_guid_word0_t std_logic_vector(63
   downto 0) ;
  type $_tlv_ftr_guid_word1_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_guid_word1_t is $_tlv_ftr_guid_word1_t std_logic_vector(63
   downto 0) ;
  type $_tlv_ftr_guid_word2_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_guid_word2_t is $_tlv_ftr_guid_word2_t std_logic_vector(63
   downto 0) ;
  type $_tlv_ftr_guid_word3_t is
  record
    guid : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_guid_word3_t is $_tlv_ftr_guid_word3_t std_logic_vector(63
   downto 0) ;
  type $_tlv_ftr_iv_word0_t is
  record
    rsvd : std_logic_vector(31 downto 0) ;
    iv : std_logic_vector(31 downto 0) ;
  end record ;
  subtype tlv_ftr_iv_word0_t is $_tlv_ftr_iv_word0_t std_logic_vector(63 downto
   0) ;
  type $_tlv_ftr_iv_word1_t is
  record
    iv : std_logic_vector(63 downto 0) ;
  end record ;
  subtype tlv_ftr_iv_word1_t is $_tlv_ftr_iv_word1_t std_logic_vector(63 downto
   0) ;
  type $_tlv_stats_word1_t is
  record
    rsvd1 : std_logic_vector(7 downto 0) ;
    bytes_in : std_logic_vector(23 downto 0) ;
    rsvd0 : std_logic_vector(7 downto 0) ;
    bytes_out : std_logic_vector(23 downto 0) ;
  end record ;
  subtype tlv_stats_word1_t is $_tlv_stats_word1_t std_logic_vector(63 downto 0)
   ;
  type $_tlv_stats_word2_t is
  record
    rsvd1 : std_logic_vector(30 downto 0) ;
    frame_error : std_logic ;
    rsvd0 : std_logic_vector(7 downto 0) ;
    latency : std_logic_vector(23 downto 0) ;
  end record ;
  subtype tlv_stats_word2_t is $_tlv_stats_word2_t std_logic_vector(63 downto 0)
   ;
  type $_tlv_cqe_word1_t is
  record
    status_code : std_logic_vector(7 downto 0) ;
    do_not_resend : std_logic ;
    vf_valid : std_logic ;
    rsvd0 : std_logic_vector(1 downto 0) ;
    error_code : std_logic_vector(7 downto 0) ;
    errored_frame_number : std_logic_vector(11 downto 0) ;
    status_code_type : std_logic_vector(2 downto 0) ;
    stat_cts : std_logic_vector(12 downto 0) ;
    pf_number : std_logic_vector(3 downto 0) ;
    vf_number : std_logic_vector(11 downto 0) ;
  end record ;
  subtype tlv_cqe_word1_t is $_tlv_cqe_word1_t std_logic_vector(63 downto 0) ;
  type $_fmd_user_pi16_word1_t is
  record
    rsvd : std_logic_vector(47 downto 0) ;
    nvme_raw_cksum_crc16t : std_logic_vector(15 downto 0) ;
  end record ;
  subtype fmd_user_pi16_word1_t is $_fmd_user_pi16_word1_t std_logic_vector(63
   downto 0) ;
  type $_fmd_user_pi64_word1_t is
  record
    raw_data_cksum : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_user_pi64_word1_t is $_fmd_user_pi64_word1_t std_logic_vector(63
   downto 0) ;
  type $_fmd_user_vm_word1_t is
  record
    ivtweak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_user_vm_word1_t is $_fmd_user_vm_word1_t std_logic_vector(63
   downto 0) ;
  type $_fmd_user_vm_word2_t is
  record
    ivtweak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_user_vm_word2_t is $_fmd_user_vm_word2_t std_logic_vector(63
   downto 0) ;
  type $_fmd_user_vm_word3_t is
  record
    raw_data_cksum : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_user_vm_word3_t is $_fmd_user_vm_word3_t std_logic_vector(63
   downto 0) ;
  type $_fmd_user_vm_word4_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_user_vm_word4_t is $_fmd_user_vm_word4_t std_logic_vector(63
   downto 0) ;
  type $_fmd_user_vm_word5_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_user_vm_word5_t is $_fmd_user_vm_word5_t std_logic_vector(63
   downto 0) ;
  type $_fmd_user_vm_word6_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_user_vm_word6_t is $_fmd_user_vm_word6_t std_logic_vector(63
   downto 0) ;
  type $_fmd_user_vm_word7_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_user_vm_word7_t is $_fmd_user_vm_word7_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_app_word6_t is
  record
    rsvd : std_logic_vector(31 downto 0) ;
    rsvd0 : std_logic_vector(5 downto 0) ;
    coding : frmd_coding_e ;
    compressed_length : std_logic_vector(23 downto 0) ;
  end record ;
  subtype fmd_int_app_word6_t is $_fmd_int_app_word6_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_app_word1_t is
  record
    enc_cmp_data_cksum : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_app_word1_t is $_fmd_int_app_word1_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_app_word2_t is
  record
    enc_cmp_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_app_word2_t is $_fmd_int_app_word2_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_app_word3_t is
  record
    enc_cmp_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_app_word3_t is $_fmd_int_app_word3_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_app_word4_t is
  record
    ivtweak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_app_word4_t is $_fmd_int_app_word4_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_app_word5_t is
  record
    rsvd : std_logic_vector(31 downto 0) ;
    ivtweak : std_logic_vector(31 downto 0) ;
  end record ;
  subtype fmd_int_app_word5_t is $_fmd_int_app_word5_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_sip_word3_t is
  record
    rsvd : std_logic_vector(31 downto 0) ;
    rsvd0 : std_logic_vector(5 downto 0) ;
    coding : frmd_coding_e ;
    compressed_length : std_logic_vector(23 downto 0) ;
  end record ;
  subtype fmd_int_sip_word3_t is $_fmd_int_sip_word3_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_sip_word1_t is
  record
    enc_cmp_data_cksum : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_sip_word1_t is $_fmd_int_sip_word1_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_sip_word2_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_sip_word2_t is $_fmd_int_sip_word2_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_lip_word6_t is
  record
    rsvd : std_logic_vector(31 downto 0) ;
    rsvd0 : std_logic_vector(5 downto 0) ;
    coding : frmd_coding_e ;
    compressed_length : std_logic_vector(23 downto 0) ;
  end record ;
  subtype fmd_int_lip_word6_t is $_fmd_int_lip_word6_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_lip_word1_t is
  record
    enc_cmp_data_cksum : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_lip_word1_t is $_fmd_int_lip_word1_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_lip_word2_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_lip_word2_t is $_fmd_int_lip_word2_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_lip_word3_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_lip_word3_t is $_fmd_int_lip_word3_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_lip_word4_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_lip_word4_t is $_fmd_int_lip_word4_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_lip_word5_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_lip_word5_t is $_fmd_int_lip_word5_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_vm_word12_t is
  record
    rsvd : std_logic_vector(31 downto 0) ;
    rsvd0 : std_logic_vector(5 downto 0) ;
    coding : frmd_coding_e ;
    compressed_length : std_logic_vector(23 downto 0) ;
  end record ;
  subtype fmd_int_vm_word12_t is $_fmd_int_vm_word12_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_vm_word1_t is
  record
    enc_cmp_data_cksum : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_word1_t is $_fmd_int_vm_word1_t std_logic_vector(63 downto
   0) ;
  type $_fmd_int_vm_word2_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_word2_t is $_fmd_int_vm_word2_t std_logic_vector(63 downto
   0) ;
  type $_fmd_int_vm_word3_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_word3_t is $_fmd_int_vm_word3_t std_logic_vector(63 downto
   0) ;
  type $_fmd_int_vm_word4_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_word4_t is $_fmd_int_vm_word4_t std_logic_vector(63 downto
   0) ;
  type $_fmd_int_vm_word5_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_word5_t is $_fmd_int_vm_word5_t std_logic_vector(63 downto
   0) ;
  type $_fmd_int_vm_word6_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_word6_t is $_fmd_int_vm_word6_t std_logic_vector(63 downto
   0) ;
  type $_fmd_int_vm_word7_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_word7_t is $_fmd_int_vm_word7_t std_logic_vector(63 downto
   0) ;
  type $_fmd_int_vm_word8_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_word8_t is $_fmd_int_vm_word8_t std_logic_vector(63 downto
   0) ;
  type $_fmd_int_vm_word9_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_word9_t is $_fmd_int_vm_word9_t std_logic_vector(63 downto
   0) ;
  type $_fmd_int_vm_word10_t is
  record
    ivtweak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_word10_t is $_fmd_int_vm_word10_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_vm_word11_t is
  record
    ivtweak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_word11_t is $_fmd_int_vm_word11_t std_logic_vector(63
   downto 0) ;
  type $_fmd_int_vm_short_word9_t is
  record
    rsvd : std_logic_vector(31 downto 0) ;
    rsvd0 : std_logic_vector(5 downto 0) ;
    coding : frmd_coding_e ;
    compressed_length : std_logic_vector(23 downto 0) ;
  end record ;
  subtype fmd_int_vm_short_word9_t is $_fmd_int_vm_short_word9_t
   std_logic_vector(63 downto 0) ;
  type $_fmd_int_vm_short_word1_t is
  record
    enc_cmp_data_cksum : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_short_word1_t is $_fmd_int_vm_short_word1_t
   std_logic_vector(63 downto 0) ;
  type $_fmd_int_vm_short_word2_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_short_word2_t is $_fmd_int_vm_short_word2_t
   std_logic_vector(63 downto 0) ;
  type $_fmd_int_vm_short_word3_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_short_word3_t is $_fmd_int_vm_short_word3_t
   std_logic_vector(63 downto 0) ;
  type $_fmd_int_vm_short_word4_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_short_word4_t is $_fmd_int_vm_short_word4_t
   std_logic_vector(63 downto 0) ;
  type $_fmd_int_vm_short_word5_t is
  record
    enc_cmp_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_short_word5_t is $_fmd_int_vm_short_word5_t
   std_logic_vector(63 downto 0) ;
  type $_fmd_int_vm_short_word6_t is
  record
    raw_data_mac : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_short_word6_t is $_fmd_int_vm_short_word6_t
   std_logic_vector(63 downto 0) ;
  type $_fmd_int_vm_short_word7_t is
  record
    ivtweak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_short_word7_t is $_fmd_int_vm_short_word7_t
   std_logic_vector(63 downto 0) ;
  type $_fmd_int_vm_short_word8_t is
  record
    ivtweak : std_logic_vector(63 downto 0) ;
  end record ;
  subtype fmd_int_vm_short_word8_t is $_fmd_int_vm_short_word8_t
   std_logic_vector(63 downto 0) ;
  type $_s_sm_seq_id_intf is
  record
    predet_mem_mask : std_logic ;
    predet_mem_id : std_logic_vector(3 downto 0) ;
    comp_mode : cmd_comp_mode_e ;
    lz77_win_size : cmd_lz77_win_size_e ;
    lz77_min_match_len : cmd_lz77_min_match_len_e ;
    xp10_prefix_mode : cmd_xp10_prefix_mode_e ;
    xp10_user_prefix_size : std_logic_vector(5 downto 0) ;
    xp10_crc_mode : cmd_xp10_crc_mode_e ;
    chu_comp_thrsh : cmd_chu_comp_thrsh_e ;
    tid : std_logic_vector(0 downto 0) ;
    tuser : std_logic_vector(7 downto 0) ;
    raw_byte_count : std_logic_vector(23 downto 0) ;
    extra_bit_count : std_logic_vector(17 downto 0) ;
    blk_count : std_logic_vector(10 downto 0) ;
    blk_last : std_logic ;
    pdh_crc_err : std_logic ;
    raw_crc : std_logic_vector(63 downto 0) ;
  end record ;
  subtype s_sm_seq_id_intf is $_s_sm_seq_id_intf std_logic_vector(152 downto 0)
   ;
  type $_s_seq_id_type_intf is
  record
    comp_mode : cmd_comp_mode_e ;
    lz77_win_size : cmd_lz77_win_size_e ;
    xp10_prefix_mode : cmd_xp10_prefix_mode_e ;
  end record ;
  subtype s_seq_id_type_intf is $_s_seq_id_type_intf std_logic_vector(9 downto 0
  ) ;
  type $_counter_50_t is
  record
    count_part1 : std_logic_vector(17 downto 0) ;
    count_part0 : std_logic_vector(31 downto 0) ;
  end record ;
  subtype counter_50_t is $_counter_50_t std_logic_vector(49 downto 0) ;
  type $_cg_stats_t is
  record
    cqe_out : std_logic ;
    cqe_sys_err : std_logic ;
    cqe_err_sel : std_logic ;
    cqe_eng_err : std_logic ;
  end record ;
  subtype cg_stats_t is $_cg_stats_t std_logic_vector(3 downto 0) ;
  type $_osf_stats_t is
  record
    rsvd : std_logic_vector(59 downto 0) ;
    ob_stall : std_logic ;
    ob_sys_bp : std_logic ;
    pdt_fifo_stall : std_logic ;
    dat_fifo_stall : std_logic ;
  end record ;
  subtype osf_stats_t is $_osf_stats_t std_logic_vector(63 downto 0) ;
  type $_isf_stats_t is
  record
    rsvd : std_logic_vector(54 downto 0) ;
    aux_cmd_match3 : std_logic ;
    aux_cmd_match2 : std_logic ;
    aux_cmd_match1 : std_logic ;
    aux_cmd_match0 : std_logic ;
    ob_sys_bp : std_logic ;
    ib_sys_stall : std_logic ;
    ib_stall : std_logic ;
    ib_frame : std_logic ;
    ib_cmd : std_logic ;
  end record ;
  subtype isf_stats_t is $_isf_stats_t std_logic_vector(63 downto 0) ;
  type $_huf_comp_stats_t is
  record
    huff_comp_rsvd : std_logic_vector(9 downto 0) ;
    lz77_stall_stb : std_logic ;
    encrypt_stall_stb : std_logic ;
    byte_7_stb : std_logic ;
    byte_6_stb : std_logic ;
    byte_5_stb : std_logic ;
    byte_4_stb : std_logic ;
    byte_3_stb : std_logic ;
    byte_2_stb : std_logic ;
    byte_1_stb : std_logic ;
    byte_0_stb : std_logic ;
    pass_thru_frm_stb : std_logic ;
    df_frm_stb : std_logic ;
    df_blk_long_ret_stb : std_logic ;
    df_blk_shrt_ret_stb : std_logic ;
    df_blk_long_sim_stb : std_logic ;
    df_blk_shrt_sim_stb : std_logic ;
    df_blk_raw_stb : std_logic ;
    df_blk_enc_stb : std_logic ;
    chu4_cmd_stb : std_logic ;
    chu4_frm_long_pre_stb : std_logic ;
    chu4_frm_shrt_pre_stb : std_logic ;
    chu4_frm_long_ret_stb : std_logic ;
    chu4_frm_shrt_ret_stb : std_logic ;
    chu4_frm_long_sim_stb : std_logic ;
    chu4_frm_shrt_sim_stb : std_logic ;
    chu4_frm_enc_stb : std_logic ;
    chu4_frm_raw_stb : std_logic ;
    chu8_cmd_stb : std_logic ;
    chu8_frm_long_pre_stb : std_logic ;
    chu8_frm_shrt_pre_stb : std_logic ;
    chu8_frm_long_ret_stb : std_logic ;
    chu8_frm_shrt_ret_stb : std_logic ;
    chu8_frm_long_sim_stb : std_logic ;
    chu8_frm_shrt_sim_stb : std_logic ;
    chu8_frm_enc_stb : std_logic ;
    chu8_frm_raw_stb : std_logic ;
    xp10_frm_stb : std_logic ;
    xp10_blk_long_pre_stb : std_logic ;
    xp10_blk_shrt_pre_stb : std_logic ;
    xp10_blk_long_ret_stb : std_logic ;
    xp10_blk_shrt_ret_stb : std_logic ;
    xp10_blk_long_sim_stb : std_logic ;
    xp10_blk_shrt_sim_stb : std_logic ;
    xp10_blk_raw_stb : std_logic ;
    xp10_blk_enc_stb : std_logic ;
    xp9_blk_long_ret_stb : std_logic ;
    xp9_blk_shrt_ret_stb : std_logic ;
    xp9_blk_long_sim_stb : std_logic ;
    xp9_blk_shrt_sim_stb : std_logic ;
    xp9_frm_stb : std_logic ;
    xp9_frm_raw_stb : std_logic ;
    xp9_blk_enc_stb : std_logic ;
    long_map_err_stb : std_logic ;
    shrt_map_err_stb : std_logic ;
  end record ;
  subtype huf_comp_stats_t is $_huf_comp_stats_t std_logic_vector(63 downto 0) ;
  type $_crypto_stats_t is
  record
    unused : std_logic_vector(48 downto 0) ;
    cipher_aes_gcm : std_logic_vector(0 downto 0) ;
    cipher_aes_xts : std_logic_vector(0 downto 0) ;
    cipher_aes_xex : std_logic_vector(0 downto 0) ;
    cipher_nop : std_logic_vector(0 downto 0) ;
    auth_aes_gmac : std_logic_vector(0 downto 0) ;
    auth_sha256 : std_logic_vector(0 downto 0) ;
    auth_sha256_hmac : std_logic_vector(0 downto 0) ;
    auth_nop : std_logic_vector(0 downto 0) ;
    gcm_tag_fail : std_logic_vector(0 downto 0) ;
    gmac_tag_fail : std_logic_vector(0 downto 0) ;
    sha256_tag_fail : std_logic_vector(0 downto 0) ;
    hmac_sha256_tag_fail : std_logic_vector(0 downto 0) ;
    seq_id_mismatch : std_logic_vector(0 downto 0) ;
    eng_id_mismatch : std_logic_vector(0 downto 0) ;
    reserved : std_logic_vector(0 downto 0) ;
  end record ;
  subtype crypto_stats_t is $_crypto_stats_t std_logic_vector(63 downto 0) ;
  type $_aux_key_ctrl_t is
  record
    dak_key_op : aux_key_op_e ;
    dak_key_ref : std_logic_vector(13 downto 0) ;
    kdf_mode : aux_kdf_mode_e ;
    dek_key_op : aux_key_op_e ;
    dek_key_ref : std_logic_vector(13 downto 0) ;
  end record ;
  subtype aux_key_ctrl_t is $_aux_key_ctrl_t std_logic_vector(31 downto 0) ;
  type $_axi4s_su_dp_bus_t is
  record
    tvalid : std_logic ;
    tlast : std_logic ;
    tuser : std_logic_vector(1 downto 0) ;
    tdata : std_logic_vector(7 downto 0) ;
  end record ;
  subtype axi4s_su_dp_bus_t is $_axi4s_su_dp_bus_t std_logic_vector(11 downto 0)
   ;
  type $_generic_int_t is
  record
    tlvp_err : std_logic ;
    uncor_ecc_err : std_logic ;
    bimc_int : std_logic ;
  end record ;
  subtype generic_int_t is $_generic_int_t std_logic_vector(2 downto 0) ;
  type $_ecc_int_t is
  record
    uncor_ecc_err : std_logic ;
  end record ;
  subtype ecc_int_t is $_ecc_int_t std_logic_vector(0 downto 0) ;
  type $_tlvp_int_t is
  record
    tlvp_err : std_logic ;
  end record ;
  subtype tlvp_int_t is $_tlvp_int_t std_logic_vector(0 downto 0) ;
  type $_bimc_int_t is
  record
    bimc_err : std_logic ;
  end record ;
  subtype bimc_int_t is $_bimc_int_t std_logic_vector(0 downto 0) ;
  type $_crypto_int_t is
  record
    seed_expire : std_logic ;
    id_mismatch : std_logic ;
    tlvp_err : std_logic ;
    uncor_ecc_err : std_logic ;
  end record ;
  subtype crypto_int_t is $_crypto_int_t std_logic_vector(3 downto 0) ;
  type $_crypto_ckmic_int_t is
  record
    id_mismatch : std_logic ;
    tlvp_err : std_logic ;
  end record ;
  subtype crypto_ckmic_int_t is $_crypto_ckmic_int_t std_logic_vector(1 downto 0
  ) ;
  type $_osf_int_t is
  record
    tlvp_err : std_logic ;
    uncor_ecc_err : std_logic ;
  end record ;
  subtype osf_int_t is $_osf_int_t std_logic_vector(1 downto 0) ;
  type $_isf_int_t is
  record
    sys_stall : std_logic ;
    ovfl : std_logic ;
    prot_err : std_logic ;
    tlvp_int : std_logic ;
    uncor_ecc_err : std_logic ;
  end record ;
  subtype isf_int_t is $_isf_int_t std_logic_vector(4 downto 0) ;
  type $_prefix_attach_int_t is
  record
    tlvp_err : std_logic ;
    uncor_ecc_err : std_logic ;
  end record ;
  subtype prefix_attach_int_t is $_prefix_attach_int_t std_logic_vector(1 downto
   0) ;
  type $_ftr_error_t is
  record
    error_code : zipline_error_e ;
    errored_frame_number : std_logic_vector(10 downto 0) ;
  end record ;
  subtype ftr_error_t is $_ftr_error_t std_logic_vector(18 downto 0) ;
  type $_kim_ckv_resp_t is
  record
    valid : std_logic_vector(0 downto 0) ;
    label_index : std_logic_vector(2 downto 0) ;
    pf_num : std_logic_vector(0 downto 0) ;
    vf_valid : std_logic_vector(0 downto 0) ;
    vf_num : std_logic_vector(8 downto 0) ;
    ckv_key : std_logic_vector(511 downto 0) ;
  end record ;
  subtype kim_ckv_resp_t is $_kim_ckv_resp_t std_logic_vector(526 downto 0) ;
  type $_kme_internal_t is
  record
    sot : std_logic_vector(0 downto 0) ;
    eoi : std_logic_vector(0 downto 0) ;
    eot : std_logic_vector(0 downto 0) ;
    id : kme_internal_id ;
    tdata : std_logic_vector(63 downto 0) ;
  end record ;
  subtype kme_internal_t is $_kme_internal_t std_logic_vector(70 downto 0) ;
  type $_kme_internal_word_0_t is
  record
    tlv_bip2 : std_logic_vector(1 downto 0) ;
    resv0 : std_logic_vector(12 downto 0) ;
    kdf_dek_iter : std_logic_vector(0 downto 0) ;
    keyless_algos : std_logic_vector(0 downto 0) ;
    needs_dek : std_logic_vector(0 downto 0) ;
    needs_dak : std_logic_vector(0 downto 0) ;
    key_type : aux_key_type_e ;
    tlv_frame_num : std_logic_vector(10 downto 0) ;
    tlv_eng_id : std_logic_vector(3 downto 0) ;
    tlv_seq_num : std_logic_vector(7 downto 0) ;
    tlv_len : std_logic_vector(7 downto 0) ;
    tlv_type : tlv_types_e ;
  end record ;
  subtype kme_internal_word_0_t is $_kme_internal_word_0_t std_logic_vector(63
   downto 0) ;
  type $_kme_internal_word_8_t is
  record
    dek_kim_entry : kim_entry_t ;
    unused : std_logic_vector(5 downto 0) ;
    missing_iv : std_logic_vector(0 downto 0) ;
    missing_guid : std_logic_vector(0 downto 0) ;
    validate_dek : std_logic_vector(0 downto 0) ;
    vf_valid : std_logic_vector(0 downto 0) ;
    pf_num : std_logic_vector(3 downto 0) ;
    vf_num : std_logic_vector(11 downto 0) ;
  end record ;
  subtype kme_internal_word_8_t is $_kme_internal_word_8_t std_logic_vector(63
   downto 0) ;
  type $_kme_internal_word_9_t is
  record
    dak_kim_entry : kim_entry_t ;
    unused : std_logic_vector(7 downto 0) ;
    validate_dak : std_logic_vector(0 downto 0) ;
    vf_valid : std_logic_vector(0 downto 0) ;
    pf_num : std_logic_vector(3 downto 0) ;
    vf_num : std_logic_vector(11 downto 0) ;
  end record ;
  subtype kme_internal_word_9_t is $_kme_internal_word_9_t std_logic_vector(63
   downto 0) ;
  type $_kme_internal_word_42_t is
  record
    corrupt_crc32 : std_logic_vector(0 downto 0) ;
    unused : std_logic_vector(46 downto 0) ;
    error_code : zipline_error_e ;
  end record ;
  subtype kme_internal_word_42_t is $_kme_internal_word_42_t std_logic_vector(55
   downto 0) ;
  type $_gcm_cmd_t is
  record
    key0 : std_logic_vector(255 downto 0) ;
    key1 : std_logic_vector(255 downto 0) ;
    iv : std_logic_vector(95 downto 0) ;
    op : gcm_op_e ;
  end record ;
  subtype gcm_cmd_t is $_gcm_cmd_t std_logic_vector(610 downto 0) ;
  type $_gcm_status_t is
  record
    tag_mismatch : std_logic_vector(0 downto 0) ;
  end record ;
  subtype gcm_status_t is $_gcm_status_t std_logic_vector(0 downto 0) ;
  type $_keyfilter_cmd_t is
  record
    combo_mode : std_logic_vector(0 downto 0) ;
  end record ;
  subtype keyfilter_cmd_t is $_keyfilter_cmd_t std_logic_vector(0 downto 0) ;
  type $_kdf_cmd_t is
  record
    kdf_dek_iter : std_logic_vector(0 downto 0) ;
    combo_mode : std_logic_vector(0 downto 0) ;
    dek_key_op : aux_key_op_e ;
    dak_key_op : aux_key_op_e ;
  end record ;
  subtype kdf_cmd_t is $_kdf_cmd_t std_logic_vector(3 downto 0) ;
  type $_kdfstream_cmd_t is
  record
    combo_mode : std_logic_vector(0 downto 0) ;
    skip : std_logic_vector(0 downto 0) ;
    guid : std_logic_vector(255 downto 0) ;
    label_index : std_logic_vector(2 downto 0) ;
    num_iter : std_logic_vector(1 downto 0) ;
  end record ;
  subtype kdfstream_cmd_t is $_kdfstream_cmd_t std_logic_vector(262 downto 0) ;
  signal DUMMY7 : std_logic ;
  signal DUMMY8 : std_logic_vector(0 to 82) ;
  signal DUMMY9 : std_logic_vector(0 to 82) ;
  signal DUMMY10 : std_logic_vector(0 to 82) ;
  signal DUMMY11 : std_logic_vector(0 to 82) ;
  signal DUMMY12 : std_logic_vector(0 to 82) ;
  signal DUMMY13 : std_logic_vector(0 to 82) ;
  signal DUMMY14 : std_logic_vector(0 to 82) ;
  signal DUMMY15 : std_logic_vector(0 to 82) ;
  signal DUMMY16 : std_logic_vector(0 to 31) ;

begin
  _zz_strnp_18 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY7
      ,kme_ib_out
    ) ;
  _zz_strnp_19 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY8
      ,kme_cceip0_ob_out
    ) ;
  _zz_strnp_20 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY9
      ,kme_cceip1_ob_out
    ) ;
  _zz_strnp_21 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY10
      ,kme_cceip2_ob_out
    ) ;
  _zz_strnp_22 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY11
      ,kme_cceip3_ob_out
    ) ;
  _zz_strnp_23 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY12
      ,kme_cddip0_ob_out
    ) ;
  _zz_strnp_24 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY13
      ,kme_cddip1_ob_out
    ) ;
  _zz_strnp_25 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY14
      ,kme_cddip2_ob_out
    ) ;
  _zz_strnp_26 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY15
      ,kme_cddip3_ob_out
    ) ;
  _zz_strnp_27 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY16
      ,idle_components
    ) ;
  Generate1 : if kme_is_core : (TRUE) generate
    signal cceip_encrypt_gcm_tag_fail_int : std_logic ;
    signal cceip_encrypt_in_stall : std_logic ;
    signal cceip_encrypt_in_valid : std_logic ;
    signal cceip_encrypt_ob_afull : std_logic ;
    signal cceip_encrypt_ob_full : std_logic ;
    signal cceip_encrypt_ob_wr : std_logic ;
    signal cceip_encrypt_out : std_logic_vector(70 downto 0) ;
    signal cceip_encrypt_out_ack : std_logic ;
    signal cceip_encrypt_out_valid : std_logic ;
    signal cceip_key_tlv_rsm_end_pulse : std_logic_vector(3 downto 0) ;
    signal cceip_key_tlv_rsm_idle : std_logic_vector(3 downto 0) ;
    signal cceip_ob_afull : std_logic_vector(3 downto 0) ;
    signal cceip_ob_full : std_logic_vector(3 downto 0) ;
    signal cceip_ob_wr : std_logic_vector(3 downto 0) ;
    signal cceip_validate_gcm_tag_fail_int : std_logic ;
    signal cceip_validate_in_stall : std_logic ;
    signal cceip_validate_in_valid : std_logic ;
    signal cceip_validate_ob_afull : std_logic ;
    signal cceip_validate_ob_full : std_logic ;
    signal cceip_validate_ob_wr : std_logic ;
    signal cceip_validate_out : std_logic_vector(70 downto 0) ;
    signal cceip_validate_out_ack : std_logic ;
    signal cceip_validate_out_valid : std_logic ;
    signal cddip_decrypt_gcm_tag_fail_int : std_logic ;
    signal cddip_decrypt_in_stall : std_logic ;
    signal cddip_decrypt_in_valid : std_logic ;
    signal cddip_key_tlv_rsm_end_pulse : std_logic_vector(3 downto 0) ;
    signal cddip_key_tlv_rsm_idle : std_logic_vector(3 downto 0) ;
    signal cddip_ob_afull : std_logic_vector(3 downto 0) ;
    signal disable_debug_cmd_q : std_logic ;
    signal drng_256_out : std_logic_vector(127 downto 0) ;
    signal drng_ack : std_logic ;
    signal drng_health_fail : std_logic ;
    signal drng_idle : std_logic ;
    signal drng_seed_expired : std_logic ;
    signal drng_valid : std_logic ;
    signal kme_slv_aempty : std_logic ;
    signal kme_slv_empty : std_logic ;
    signal kme_slv_rd : std_logic ;
    signal stat_aux_cmd_with_vf_pf_fail : std_logic ;
    signal stat_aux_key_type_0 : std_logic ;
    signal stat_aux_key_type_1 : std_logic ;
    signal stat_aux_key_type_10 : std_logic ;
    signal stat_aux_key_type_11 : std_logic ;
    signal stat_aux_key_type_12 : std_logic ;
    signal stat_aux_key_type_13 : std_logic ;
    signal stat_aux_key_type_2 : std_logic ;
    signal stat_aux_key_type_3 : std_logic ;
    signal stat_aux_key_type_4 : std_logic ;
    signal stat_aux_key_type_5 : std_logic ;
    signal stat_aux_key_type_6 : std_logic ;
    signal stat_aux_key_type_7 : std_logic ;
    signal stat_aux_key_type_8 : std_logic ;
    signal stat_aux_key_type_9 : std_logic ;
    signal stat_cceip0_stall_on_valid_key : std_logic ;
    signal stat_cceip1_stall_on_valid_key : std_logic ;
    signal stat_cceip2_stall_on_valid_key : std_logic ;
    signal stat_cceip3_stall_on_valid_key : std_logic ;
    signal stat_cddip0_stall_on_valid_key : std_logic ;
    signal stat_cddip1_stall_on_valid_key : std_logic ;
    signal stat_cddip2_stall_on_valid_key : std_logic ;
    signal stat_cddip3_stall_on_valid_key : std_logic ;
    signal stat_drbg_reseed : std_logic ;
    signal stat_req_with_expired_seed : std_logic ;
    signal tlv_parser_idle : std_logic ;
    signal tlv_parser_int_tlv_start_pulse : std_logic ;
    signal cddip_ob_full : std_logic_vector(3 downto 0) ;
    signal DUMMY17 : std_logic ;
    signal DUMMY18 : std_logic_vector(0 to 82) ;
    signal DUMMY19 : std_logic_vector(0 to 70) ;
    signal DUMMY20 : std_logic_vector(0 to 70) ;
    signal DUMMY21 : std_logic_vector(0 to 70) ;
    signal DUMMY22 : std_logic_vector(0 to 82) ;
    signal DUMMY23 : std_logic_vector(0 to 70) ;
    signal DUMMY24 : std_logic_vector(0 to 70) ;
    signal DUMMY25 : std_logic_vector(0 to 105) ;
    signal DUMMY26 : std_logic_vector(0 to 105) ;
    signal _zy_simnet_tvar_20 : DUMMY6(3 downto 0) ;
    -- quickturn array_with_packed_dim _zy_simnet_tvar_20 2 0
    signal DUMMY27 : std_logic_vector(0 to 105) ;
    signal DUMMY28 : std_logic_vector(0 to 105) ;
    signal DUMMY29 : std_logic_vector(0 to 82) ;
    signal DUMMY30 : std_logic_vector(0 to 105) ;
    signal DUMMY31 : std_logic ;
    signal DUMMY32 : std_logic_vector(0 to 31) ;
    signal DUMMY33 : std_logic ;
    signal cceip_encrypt_in : kme_internal_t ;
    signal cceip_encrypt_ob_tlv : tlvp_if_bus_t ;
    signal cceip_ob_tlv : DUMMY6(3 downto 0) ;
    -- quickturn array_with_packed_dim cceip_ob_tlv 2 0
    signal cceip_validate_in : kme_internal_t ;
    signal cceip_validate_ob_tlv : tlvp_if_bus_t ;
    signal cddip_decrypt_in : kme_internal_t ;
    signal core_kme_ib_out : axi4s_dp_rdy_t ;
    signal kme_slv_out : axi4s_dp_bus_t ;
    signal DUMMY34 : std_logic_vector(423 downto 0) ;
    signal DUMMY35 : std_logic_vector(423 downto 0) ;
  begin
    kme_cceip1_ob_out <=
     "00000000000000000000000000000000000000000000000000000000000000000000000000000000000"
     ;
    kme_cceip2_ob_out <=
     "00000000000000000000000000000000000000000000000000000000000000000000000000000000000"
     ;
    kme_cceip3_ob_out <=
     "00000000000000000000000000000000000000000000000000000000000000000000000000000000000"
     ;
    kme_cddip0_ob_out <=
     "00000000000000000000000000000000000000000000000000000000000000000000000000000000000"
     ;
    kme_cddip1_ob_out <=
     "00000000000000000000000000000000000000000000000000000000000000000000000000000000000"
     ;
    kme_cddip2_ob_out <=
     "00000000000000000000000000000000000000000000000000000000000000000000000000000000000"
     ;
    kme_cddip3_ob_out <=
     "00000000000000000000000000000000000000000000000000000000000000000000000000000000000"
     ;
    cddip_decrypt_in_stall <= '0' ;
    stat_cceip1_stall_on_valid_key <= '0' ;
    stat_cceip2_stall_on_valid_key <= '0' ;
    stat_cceip3_stall_on_valid_key <= '0' ;
    stat_cddip0_stall_on_valid_key <= '0' ;
    stat_cddip1_stall_on_valid_key <= '0' ;
    stat_cddip2_stall_on_valid_key <= '0' ;
    stat_cddip3_stall_on_valid_key <= '0' ;
    cceip_key_tlv_rsm_end_pulse(3 downto 1) <= "000" ;
    cddip_key_tlv_rsm_end_pulse <= "0000" ;
    cceip_key_tlv_rsm_idle(3 downto 1) <= "000" ;
    cddip_key_tlv_rsm_idle <= "0000" ;
    cddip_decrypt_gcm_tag_fail_int <= '0' ;
    cddip_ob_full <= "0000" ;
    cddip_decrypt_bimc_osync <= '0' ;
    cddip_decrypt_bimc_odat <= '0' ;
    cddip_decrypt_mbe <= '0' ;
    _zz_strnp_0 : ixc_assign
      generic map(W => 1)
      port map (
         core_kme_ib_out
        ,DUMMY17
      ) ;
    _zz_strnp_1 : ixc_assign
      generic map(W => 83)
      port map (
         kme_slv_out
        ,DUMMY18
      ) ;
    _zz_strnp_2 : ixc_assign
      generic map(W => 71)
      port map (
         cceip_encrypt_in
        ,DUMMY19
      ) ;
    _zz_strnp_3 : ixc_assign
      generic map(W => 71)
      port map (
         cceip_validate_in
        ,DUMMY20
      ) ;
    _zz_strnp_4 : ixc_assign
      generic map(W => 71)
      port map (
         cddip_decrypt_in
        ,DUMMY21
      ) ;
    _zz_strnp_5 : ixc_assign
      generic map(W => 83)
      port map (
         DUMMY22
        ,kme_slv_out
      ) ;
    _zz_strnp_6 : ixc_assign
      generic map(W => 71)
      port map (
         DUMMY23
        ,cceip_encrypt_in
      ) ;
    _zz_strnp_7 : ixc_assign
      generic map(W => 71)
      port map (
         DUMMY24
        ,cceip_validate_in
      ) ;
    _zz_strnp_8 : ixc_assign
      generic map(W => 106)
      port map (
         cceip_encrypt_ob_tlv
        ,DUMMY25
      ) ;
    _zz_strnp_9 : ixc_assign
      generic map(W => 106)
      port map (
         cceip_validate_ob_tlv
        ,DUMMY26
      ) ;
    _zz_strnp_10 : ixc_assign
      generic map(W => 424)
      port map (
         DUMMY34
        ,DUMMY35
      ) ;
    cceip_ob_tlv <= $__unpack__(DUMMY34) ;
    DUMMY35 <= $__pack__(0,_zy_simnet_tvar_20) ;
    _zz_strnp_11 : ixc_assign
      generic map(W => 106)
      port map (
         DUMMY27
        ,cceip_encrypt_ob_tlv
      ) ;
    _zz_strnp_12 : ixc_assign
      generic map(W => 106)
      port map (
         DUMMY28
        ,cceip_validate_ob_tlv
      ) ;
    _zz_strnp_13 : ixc_assign
      generic map(W => 83)
      port map (
         kme_cceip0_ob_out
        ,DUMMY29
      ) ;
    _zz_strnp_14 : ixc_assign
      generic map(W => 106)
      port map (
         DUMMY30
        ,cceip_ob_tlv(0)
      ) ;
    _zz_strnp_15 : ixc_assign
      generic map(W => 1)
      port map (
         kme_ib_out
        ,DUMMY31
      ) ;
    _zz_strnp_16 : ixc_assign
      generic map(W => 32)
      port map (
         idle_components
        ,DUMMY32
      ) ;
    _zz_strnp_17 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY33
        ,core_kme_ib_out
      ) ;
    txc_axi_intf : cr_axi4s2_slv
      port map (
         axi4s_ib_out => DUMMY17
        ,axi4s_slv_out => DUMMY18
        ,axi4s_slv_empty => kme_slv_empty
        ,axi4s_slv_aempty => kme_slv_aempty
        ,axi4s_slv_bimc_odat => axi_bimc_odat
        ,axi4s_slv_bimc_osync => axi_bimc_osync
        ,axi4s_slv_ro_uncorrectable_ecc_error => axi_mbe
        ,clk => clk
        ,rst_n => rst_n
        ,axi4s_ib_in => kme_ib_in
        ,axi4s_slv_rd => kme_slv_rd
        ,axi4s_slv_bimc_idat => axi_bimc_idat
        ,axi4s_slv_bimc_isync => axi_bimc_isync
        ,bimc_rst_n => bimc_rst_n
      ) ;
    drng : cr_kme_drng
      port map (
         drng_health_fail => drng_health_fail
        ,drng_seed_expired => drng_seed_expired
        ,drng_256_out => drng_256_out
        ,drng_valid => drng_valid
        ,seed0_invalidate => seed0_invalidate
        ,seed1_invalidate => seed1_invalidate
        ,stat_drbg_reseed => stat_drbg_reseed
        ,drng_idle => drng_idle
        ,clk => clk
        ,rst_n => rst_n
        ,drng_ack => drng_ack
        ,seed0_valid => seed0_valid
        ,seed0_internal_state_key => seed0_internal_state_key
        ,seed0_internal_state_value => seed0_internal_state_value
        ,seed0_reseed_interval => seed0_reseed_interval
        ,seed1_valid => seed1_valid
        ,seed1_internal_state_key => seed1_internal_state_key
        ,seed1_internal_state_value => seed1_internal_state_value
        ,seed1_reseed_interval => seed1_reseed_interval
      ) ;
    ckv_pipeline : cr_kme_ckv_pipeline
      port map (
         kme_slv_rd => kme_slv_rd
        ,cceip_encrypt_in => DUMMY19
        ,cceip_encrypt_in_valid => cceip_encrypt_in_valid
        ,cceip_validate_in => DUMMY20
        ,cceip_validate_in_valid => cceip_validate_in_valid
        ,cddip_decrypt_in => DUMMY21
        ,cddip_decrypt_in_valid => cddip_decrypt_in_valid
        ,ckv_rd => ckv_rd
        ,ckv_addr => ckv_addr
        ,kim_rd => kim_rd
        ,kim_addr => kim_addr
        ,drng_ack => drng_ack
        ,stat_req_with_expired_seed => stat_req_with_expired_seed
        ,stat_aux_key_type_0 => stat_aux_key_type_0
        ,stat_aux_key_type_1 => stat_aux_key_type_1
        ,stat_aux_key_type_2 => stat_aux_key_type_2
        ,stat_aux_key_type_3 => stat_aux_key_type_3
        ,stat_aux_key_type_4 => stat_aux_key_type_4
        ,stat_aux_key_type_5 => stat_aux_key_type_5
        ,stat_aux_key_type_6 => stat_aux_key_type_6
        ,stat_aux_key_type_7 => stat_aux_key_type_7
        ,stat_aux_key_type_8 => stat_aux_key_type_8
        ,stat_aux_key_type_9 => stat_aux_key_type_9
        ,stat_aux_key_type_10 => stat_aux_key_type_10
        ,stat_aux_key_type_11 => stat_aux_key_type_11
        ,stat_aux_key_type_12 => stat_aux_key_type_12
        ,stat_aux_key_type_13 => stat_aux_key_type_13
        ,stat_aux_cmd_with_vf_pf_fail => stat_aux_cmd_with_vf_pf_fail
        ,tlv_parser_idle => tlv_parser_idle
        ,tlv_parser_int_tlv_start_pulse => tlv_parser_int_tlv_start_pulse
        ,set_tlv_bip2_error_int => set_tlv_bip2_error_int
        ,clk => clk
        ,rst_n => rst_n
        ,disable_debug_cmd_q => disable_debug_cmd_q
        ,disable_unencrypted_keys => disable_unencrypted_keys
        ,always_validate_kim_ref => always_validate_kim_ref
        ,kme_slv_out => DUMMY22
        ,kme_slv_aempty => kme_slv_aempty
        ,kme_slv_empty => kme_slv_empty
        ,cceip_encrypt_in_stall => cceip_encrypt_in_stall
        ,cceip_validate_in_stall => cceip_validate_in_stall
        ,cddip_decrypt_in_stall => cddip_decrypt_in_stall
        ,ckv_dout => ckv_dout
        ,ckv_mbe => ckv_mbe
        ,kim_dout => kim_dout
        ,kim_mbe => kim_mbe
        ,drng_seed_expired => drng_seed_expired
        ,drng_health_fail => drng_health_fail
        ,drng_256_out => drng_256_out
        ,drng_valid => drng_valid
      ) ;
    cceip_encrypt_kop_fifo : cr_kme_ram_fifo
      port map (
         fifo_in_stall => cceip_encrypt_in_stall
        ,fifo_out => cceip_encrypt_out
        ,fifo_out_valid => cceip_encrypt_out_valid
        ,fifo_bimc_osync => cceip_encrypt_bimc_osync
        ,fifo_bimc_odat => cceip_encrypt_bimc_odat
        ,fifo_mbe => cceip_encrypt_mbe
        ,clk => clk
        ,rst_n => rst_n
        ,fifo_in => DUMMY23
        ,fifo_in_valid => cceip_encrypt_in_valid
        ,fifo_out_ack => cceip_encrypt_out_ack
        ,bimc_rst_n => bimc_rst_n
        ,fifo_bimc_isync => cceip_encrypt_bimc_isync
        ,fifo_bimc_idat => cceip_encrypt_bimc_idat
      ) ;
    cceip_validate_kop_fifo : cr_kme_ram_fifo
      port map (
         fifo_in_stall => cceip_validate_in_stall
        ,fifo_out => cceip_validate_out
        ,fifo_out_valid => cceip_validate_out_valid
        ,fifo_bimc_osync => cceip_validate_bimc_osync
        ,fifo_bimc_odat => cceip_validate_bimc_odat
        ,fifo_mbe => cceip_validate_mbe
        ,clk => clk
        ,rst_n => rst_n
        ,fifo_in => DUMMY24
        ,fifo_in_valid => cceip_validate_in_valid
        ,fifo_out_ack => cceip_validate_out_ack
        ,bimc_rst_n => bimc_rst_n
        ,fifo_bimc_isync => cceip_validate_bimc_isync
        ,fifo_bimc_idat => cceip_validate_bimc_idat
      ) ;
    cceip_encrypt_kop : cr_kme_kop_xcm69
      port map (
         kme_internal_out_ack => cceip_encrypt_out_ack
        ,key_tlv_ob_wr => cceip_encrypt_ob_wr
        ,key_tlv_ob_tlv => DUMMY25
        ,set_gcm_tag_fail_int => cceip_encrypt_gcm_tag_fail_int
        ,clk => clk
        ,rst_n => rst_n
        ,scan_en => scan_en
        ,scan_mode => scan_mode
        ,scan_rst_n => scan_rst_n
        ,labels => labels
        ,kme_internal_out => cceip_encrypt_out
        ,kme_internal_out_valid => cceip_encrypt_out_valid
        ,key_tlv_ob_full => cceip_encrypt_ob_full
        ,key_tlv_ob_afull => cceip_encrypt_ob_afull
        ,kop_fifo_override => cceip_encrypt_kop_fifo_override
        ,kdf_test_key_size => kdf_test_key_size
        ,kdf_test_mode_en => kdf_test_mode_en
      ) ;
    cceip_validate_kop : cr_kme_kop_xcm68
      port map (
         kme_internal_out_ack => cceip_validate_out_ack
        ,key_tlv_ob_wr => cceip_validate_ob_wr
        ,key_tlv_ob_tlv => DUMMY26
        ,set_gcm_tag_fail_int => cceip_validate_gcm_tag_fail_int
        ,clk => clk
        ,rst_n => rst_n
        ,scan_en => scan_en
        ,scan_mode => scan_mode
        ,scan_rst_n => scan_rst_n
        ,labels => labels
        ,kme_internal_out => cceip_validate_out
        ,kme_internal_out_valid => cceip_validate_out_valid
        ,key_tlv_ob_full => cceip_validate_ob_full
        ,key_tlv_ob_afull => cceip_validate_ob_afull
        ,kop_fifo_override => cceip_validate_kop_fifo_override
        ,kdf_test_key_size => kdf_test_key_size
        ,kdf_test_mode_en => kdf_test_mode_en
      ) ;
    cceip_key_tlv_compare_split : cr_kme_key_tlv_compare_split
      port map (
         set_key_tlv_miscmp_int => set_key_tlv_miscmp_int
        ,cceip_encrypt_ob_full => cceip_encrypt_ob_full
        ,cceip_encrypt_ob_afull => cceip_encrypt_ob_afull
        ,cceip_validate_ob_full => cceip_validate_ob_full
        ,cceip_validate_ob_afull => cceip_validate_ob_afull
        ,cceip_ob_wr => cceip_ob_wr
        ,cceip_ob_tlv => _zy_simnet_tvar_20
        ,clk => clk
        ,rst_n => rst_n
        ,suppress_key_tlvs => suppress_key_tlvs
        ,cceip_encrypt_ob_wr => cceip_encrypt_ob_wr
        ,cceip_encrypt_ob_tlv => DUMMY27
        ,cceip_validate_ob_wr => cceip_validate_ob_wr
        ,cceip_validate_ob_tlv => DUMMY28
        ,cceip_ob_full => cceip_ob_full
        ,cceip_ob_afull => cceip_ob_afull
      ) ;
    cceip0_key_tlv_rsm : cr_kme_key_tlv_rsm
      port map (
         usr_ob_full => cceip_ob_full(0)
        ,usr_ob_afull => cceip_ob_afull(0)
        ,axi4s_ob_out => DUMMY29
        ,stat_stall_on_valid_key => stat_cceip0_stall_on_valid_key
        ,key_tlv_rsm_end_pulse => cceip_key_tlv_rsm_end_pulse(0)
        ,key_tlv_rsm_idle => cceip_key_tlv_rsm_idle(0)
        ,clk => clk
        ,rst_n => rst_n
        ,usr_ob_wr => cceip_ob_wr(0)
        ,usr_ob_tlv => DUMMY30
        ,axi4s_ob_in => kme_cceip0_ob_in
      ) ;
    core_glue : cr_kme_core_glue
      port map (
         disable_debug_cmd_q => disable_debug_cmd_q
        ,set_gcm_tag_fail_int => set_gcm_tag_fail_int
        ,set_txc_bp_int => set_txc_bp_int
        ,set_rsm_is_backpressuring => set_rsm_is_backpressuring
        ,kme_ib_out => DUMMY31
        ,sa_snapshot => sa_snapshot
        ,sa_count => sa_count
        ,kme_idle => kme_idle
        ,idle_components => DUMMY32
        ,clk => clk
        ,rst_n => rst_n
        ,disable_debug_cmd => disable_debug_cmd
        ,cceip_encrypt_gcm_tag_fail_int => cceip_encrypt_gcm_tag_fail_int
        ,cceip_validate_gcm_tag_fail_int => cceip_validate_gcm_tag_fail_int
        ,cddip_decrypt_gcm_tag_fail_int => cddip_decrypt_gcm_tag_fail_int
        ,cceip_ob_full => cceip_ob_full
        ,cddip_ob_full => cddip_ob_full
        ,tready_override => tready_override
        ,core_kme_ib_out => DUMMY33
        ,sa_global_ctrl => sa_global_ctrl
        ,sa_ctrl => sa_ctrl
        ,stat_drbg_reseed => stat_drbg_reseed
        ,stat_req_with_expired_seed => stat_req_with_expired_seed
        ,stat_aux_key_type_0 => stat_aux_key_type_0
        ,stat_aux_key_type_1 => stat_aux_key_type_1
        ,stat_aux_key_type_2 => stat_aux_key_type_2
        ,stat_aux_key_type_3 => stat_aux_key_type_3
        ,stat_aux_key_type_4 => stat_aux_key_type_4
        ,stat_aux_key_type_5 => stat_aux_key_type_5
        ,stat_aux_key_type_6 => stat_aux_key_type_6
        ,stat_aux_key_type_7 => stat_aux_key_type_7
        ,stat_aux_key_type_8 => stat_aux_key_type_8
        ,stat_aux_key_type_9 => stat_aux_key_type_9
        ,stat_aux_key_type_10 => stat_aux_key_type_10
        ,stat_aux_key_type_11 => stat_aux_key_type_11
        ,stat_aux_key_type_12 => stat_aux_key_type_12
        ,stat_aux_key_type_13 => stat_aux_key_type_13
        ,stat_cceip0_stall_on_valid_key => stat_cceip0_stall_on_valid_key
        ,stat_cceip1_stall_on_valid_key => stat_cceip1_stall_on_valid_key
        ,stat_cceip2_stall_on_valid_key => stat_cceip2_stall_on_valid_key
        ,stat_cceip3_stall_on_valid_key => stat_cceip3_stall_on_valid_key
        ,stat_cddip0_stall_on_valid_key => stat_cddip0_stall_on_valid_key
        ,stat_cddip1_stall_on_valid_key => stat_cddip1_stall_on_valid_key
        ,stat_cddip2_stall_on_valid_key => stat_cddip2_stall_on_valid_key
        ,stat_cddip3_stall_on_valid_key => stat_cddip3_stall_on_valid_key
        ,stat_aux_cmd_with_vf_pf_fail => stat_aux_cmd_with_vf_pf_fail
        ,kme_slv_empty => kme_slv_empty
        ,drng_idle => drng_idle
        ,tlv_parser_idle => tlv_parser_idle
        ,tlv_parser_int_tlv_start_pulse => tlv_parser_int_tlv_start_pulse
        ,cceip_key_tlv_rsm_end_pulse => cceip_key_tlv_rsm_end_pulse
        ,cddip_key_tlv_rsm_end_pulse => cddip_key_tlv_rsm_end_pulse
        ,cceip_key_tlv_rsm_idle => cceip_key_tlv_rsm_idle
        ,cddip_key_tlv_rsm_idle => cddip_key_tlv_rsm_idle
      ) ;
  end generate ;
end module;
