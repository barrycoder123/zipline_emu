architecture module of cr_kme_kop_xcm68 is
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component cr_kme_kop_tlv_inspector_xcm70
    generic (
      CCEIP_ENCRYPT_KOP : integer := 1 ;
      subtype gcm_op_e is std_logic_vector(2 downto 0) ;
      constant PT_CKV : gcm_op_e := std_logic_vector'("000") ;
      constant PT_KEY_BLOB : gcm_op_e := std_logic_vector'("001") ;
      constant DECRYPT_DEK256 : gcm_op_e := std_logic_vector'("010") ;
      constant DECRYPT_DEK512 : gcm_op_e := std_logic_vector'("011") ;
      constant DECRYPT_DAK : gcm_op_e := std_logic_vector'("100") ;
      constant DECRYPT_DEK256_COMB : gcm_op_e := std_logic_vector'("101") ;
      constant DECRYPT_DEK512_COMB : gcm_op_e := std_logic_vector'("110") ;
      constant DECRYPT_DAK_COMB : gcm_op_e := std_logic_vector'("111") ;
      subtype gcm_cmd_t is std_logic_vector(610 downto 0) ;
      subtype keyfilter_cmd_t is std_logic_vector(0 downto 0) ;
      subtype kdfstream_cmd_t is std_logic_vector(262 downto 0) ;
      subtype aux_key_op_e is std_logic_vector(0 downto 0) ;
      constant NOOP : aux_key_op_e := "0" ;
      constant KDF : aux_key_op_e := "1" ;
      subtype kdf_cmd_t is std_logic_vector(3 downto 0) ;
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
      gcm_cmd_in : out gcm_cmd_t ;
      gcm_cmd_in_valid : out std_logic ;
      gcm_tag_data_in : out std_logic_vector(95 downto 0) ;
      gcm_tag_data_in_valid : out std_logic ;
      inspector_upsizer_valid : out std_logic ;
      inspector_upsizer_eof : out std_logic ;
      inspector_upsizer_data : out std_logic_vector(63 downto 0) ;
      keyfilter_cmd_in : out keyfilter_cmd_t ;
      keyfilter_cmd_in_valid : out std_logic ;
      kdfstream_cmd_in : out kdfstream_cmd_t ;
      kdfstream_cmd_in_valid : out std_logic ;
      kdf_cmd_in : out kdf_cmd_t ;
      kdf_cmd_in_valid : out std_logic ;
      tlv_sb_data_in : out std_logic_vector(63 downto 0) ;
      tlv_sb_data_in_valid : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      labels : in DUMMY2(7 downto 0) := (others => (others => '0')) ;
      kme_internal_out : in kme_internal_t := (others => '0') ;
      kme_internal_out_valid : in std_logic := 'X' ;
      gcm_cmd_in_stall : in std_logic := 'X' ;
      gcm_tag_data_in_stall : in std_logic := 'X' ;
      upsizer_inspector_stall : in std_logic := 'X' ;
      keyfilter_cmd_in_stall : in std_logic := 'X' ;
      kdfstream_cmd_in_stall : in std_logic := 'X' ;
      kdf_cmd_in_stall : in std_logic := 'X' ;
    tlv_sb_data_in_stall : in std_logic := 'X' ) ;
  end component ;

  component cr_kme_kop_upsizer_x2_xcm72
    generic (
      IN_DATA_SIZE : integer := 64
    ) ;
    port (
      upsizer_in_stall : out std_logic ;
      upsizer_out_valid : out std_logic ;
      upsizer_out_eof : out std_logic ;
      upsizer_out_data : out std_logic_vector(127 downto 0) ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      in_upsizer_valid : in std_logic := 'X' ;
      in_upsizer_eof : in std_logic := 'X' ;
      in_upsizer_data : in std_logic_vector(63 downto 0) := (others => 'X') ;
    out_upsizer_stall : in std_logic := 'X' ) ;
  end component ;

  component cr_kme_kop_gcm
    generic (
      subtype gcm_status_t is std_logic_vector(0 downto 0) ;
      subtype gcm_op_e is std_logic_vector(2 downto 0) ;
      constant PT_CKV : gcm_op_e := std_logic_vector'("000") ;
      constant PT_KEY_BLOB : gcm_op_e := std_logic_vector'("001") ;
      constant DECRYPT_DEK256 : gcm_op_e := std_logic_vector'("010") ;
      constant DECRYPT_DEK512 : gcm_op_e := std_logic_vector'("011") ;
      constant DECRYPT_DAK : gcm_op_e := std_logic_vector'("100") ;
      constant DECRYPT_DEK256_COMB : gcm_op_e := std_logic_vector'("101") ;
      constant DECRYPT_DEK512_COMB : gcm_op_e := std_logic_vector'("110") ;
      constant DECRYPT_DAK_COMB : gcm_op_e := std_logic_vector'("111") ;
      subtype gcm_cmd_t is std_logic_vector(610 downto 0)
    ) ;
    port (
      set_gcm_tag_fail_int : out std_logic ;
      gcm_cmdfifo_ack : out std_logic ;
      gcm_upsizer_stall : out std_logic ;
      gcm_tag_data_out_ack : out std_logic ;
      gcm_kdf_valid : out std_logic ;
      gcm_kdf_eof : out std_logic ;
      gcm_kdf_data : out std_logic_vector(127 downto 0) ;
      gcm_status_data_in_valid : out std_logic ;
      gcm_status_data_in : out gcm_status_t ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      cmdfifo_gcm_valid : in std_logic := 'X' ;
      cmdfifo_gcm_cmd : in gcm_cmd_t := (others => '0') ;
      upsizer_gcm_valid : in std_logic := 'X' ;
      upsizer_gcm_eof : in std_logic := 'X' ;
      upsizer_gcm_data : in std_logic_vector(127 downto 0) := (others => 'X') ;
      gcm_tag_data_out : in std_logic_vector(95 downto 0) := (others => 'X') ;
      gcm_tag_data_out_valid : in std_logic := 'X' ;
      kdf_gcm_stall : in std_logic := 'X' ;
    gcm_status_data_in_stall : in std_logic := 'X' ) ;
  end component ;

  component cr_kme_kop_kdf
    generic (
      subtype label_t is std_logic_vector(271 downto 0) ;
      type DUMMY2 is array(integer range <>) of label_t ;
      subtype keyfilter_cmd_t is std_logic_vector(0 downto 0) ;
      subtype aux_key_op_e is std_logic_vector(0 downto 0) ;
      constant NOOP : aux_key_op_e := "0" ;
      constant KDF : aux_key_op_e := "1" ;
      subtype kdf_cmd_t is std_logic_vector(3 downto 0) ;
      subtype kdfstream_cmd_t is std_logic_vector(262 downto 0)
    ) ;
    port (
      keyfilter_cmdfifo_ack : out std_logic ;
      kdf_cmdfifo_ack : out std_logic ;
      kdfstream_cmdfifo_ack : out std_logic ;
      kdf_gcm_stall : out std_logic ;
      kdf_keybuilder_data : out std_logic_vector(63 downto 0) ;
      kdf_keybuilder_valid : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      scan_en : in std_logic := 'X' ;
      scan_mode : in std_logic := 'X' ;
      scan_rst_n : in std_logic := 'X' ;
      labels : in DUMMY2(7 downto 0) := (others => (others => '0')) ;
      cmdfifo_keyfilter_valid : in std_logic := 'X' ;
      cmdfifo_keyfilter_cmd : in keyfilter_cmd_t := (others => '0') ;
      cmdfifo_kdf_valid : in std_logic := 'X' ;
      cmdfifo_kdf_cmd : in kdf_cmd_t := (others => '0') ;
      cmdfifo_kdfstream_valid : in std_logic := 'X' ;
      cmdfifo_kdfstream_cmd : in kdfstream_cmd_t := (others => '0') ;
      gcm_kdf_valid : in std_logic := 'X' ;
      gcm_kdf_eof : in std_logic := 'X' ;
      gcm_kdf_data : in std_logic_vector(127 downto 0) := (others => 'X') ;
      keybuilder_kdf_stall : in std_logic := 'X' ;
      kdf_test_key_size : in std_logic_vector(31 downto 0) := (others => 'X') ;
    kdf_test_mode_en : in std_logic := 'X' ) ;
  end component ;

  component cr_kme_kop_keybuilder
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
      subtype gcm_status_t is std_logic_vector(0 downto 0)
    ) ;
    port (
      tlv_sb_data_out_ack : out std_logic ;
      keybuilder_kdf_stall : out std_logic ;
      gcm_status_data_out_ack : out std_logic ;
      key_tlv_ob_wr : out std_logic ;
      key_tlv_ob_tlv : out tlvp_if_bus_t ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      tlv_sb_data_out : in std_logic_vector(63 downto 0) := (others => 'X') ;
      tlv_sb_data_out_valid : in std_logic := 'X' ;
      kdf_keybuilder_data : in std_logic_vector(63 downto 0) := (others => 'X')
       ;
      kdf_keybuilder_valid : in std_logic := 'X' ;
      gcm_status_data_out_valid : in std_logic := 'X' ;
      gcm_status_data_out : in gcm_status_t := (others => '0') ;
      key_tlv_ob_full : in std_logic := 'X' ;
    key_tlv_ob_afull : in std_logic := 'X' ) ;
  end component ;

  component cr_kme_fifo_xcm50
    generic (
      DATA_SIZE : integer := 611 ;
      FIFO_DEPTH : integer := 4 ;
      OVERRIDE_EN : integer := 1 ;
      STALL_AT : integer := 0
    ) ;
    port (
      fifo_in_stall : out std_logic ;
      fifo_out : out std_logic_vector(610 downto 0) ;
      fifo_out_valid : out std_logic ;
      fifo_overflow : out std_logic ;
      fifo_underflow : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      fifo_in : in std_logic_vector(610 downto 0) := (others => 'X') ;
      fifo_in_valid : in std_logic := 'X' ;
      fifo_out_ack : in std_logic := 'X' ;
    fifo_in_stall_override : in std_logic := 'X' ) ;
  end component ;

  component cr_kme_fifo_xcm49
    generic (
      DATA_SIZE : integer := 1 ;
      FIFO_DEPTH : integer := 4 ;
      OVERRIDE_EN : integer := 1 ;
      STALL_AT : integer := 0
    ) ;
    port (
      fifo_in_stall : out std_logic ;
      fifo_out : out std_logic_vector(0 downto 0) ;
      fifo_out_valid : out std_logic ;
      fifo_overflow : out std_logic ;
      fifo_underflow : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      fifo_in : in std_logic_vector(0 downto 0) := (others => 'X') ;
      fifo_in_valid : in std_logic := 'X' ;
      fifo_out_ack : in std_logic := 'X' ;
    fifo_in_stall_override : in std_logic := 'X' ) ;
  end component ;

  component cr_kme_fifo_xcm48
    generic (
      DATA_SIZE : integer := 4 ;
      FIFO_DEPTH : integer := 4 ;
      OVERRIDE_EN : integer := 1 ;
      STALL_AT : integer := 0
    ) ;
    port (
      fifo_in_stall : out std_logic ;
      fifo_out : out std_logic_vector(3 downto 0) ;
      fifo_out_valid : out std_logic ;
      fifo_overflow : out std_logic ;
      fifo_underflow : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      fifo_in : in std_logic_vector(3 downto 0) := (others => 'X') ;
      fifo_in_valid : in std_logic := 'X' ;
      fifo_out_ack : in std_logic := 'X' ;
    fifo_in_stall_override : in std_logic := 'X' ) ;
  end component ;

  component cr_kme_fifo_xcm47
    generic (
      DATA_SIZE : integer := 263 ;
      FIFO_DEPTH : integer := 4 ;
      OVERRIDE_EN : integer := 1 ;
      STALL_AT : integer := 0
    ) ;
    port (
      fifo_in_stall : out std_logic ;
      fifo_out : out std_logic_vector(262 downto 0) ;
      fifo_out_valid : out std_logic ;
      fifo_overflow : out std_logic ;
      fifo_underflow : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      fifo_in : in std_logic_vector(262 downto 0) := (others => 'X') ;
      fifo_in_valid : in std_logic := 'X' ;
      fifo_out_ack : in std_logic := 'X' ;
    fifo_in_stall_override : in std_logic := 'X' ) ;
  end component ;

  component cr_kme_fifo_xcm46
    generic (
      DATA_SIZE : integer := 64 ;
      FIFO_DEPTH : integer := 16 ;
      OVERRIDE_EN : integer := 1 ;
      STALL_AT : integer := 0
    ) ;
    port (
      fifo_in_stall : out std_logic ;
      fifo_out : out std_logic_vector(63 downto 0) ;
      fifo_out_valid : out std_logic ;
      fifo_overflow : out std_logic ;
      fifo_underflow : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      fifo_in : in std_logic_vector(63 downto 0) := (others => 'X') ;
      fifo_in_valid : in std_logic := 'X' ;
      fifo_out_ack : in std_logic := 'X' ;
    fifo_in_stall_override : in std_logic := 'X' ) ;
  end component ;

  component cr_kme_fifo_xcm45
    generic (
      DATA_SIZE : integer := 96 ;
      FIFO_DEPTH : integer := 4 ;
      OVERRIDE_EN : integer := 1 ;
      STALL_AT : integer := 0
    ) ;
    port (
      fifo_in_stall : out std_logic ;
      fifo_out : out std_logic_vector(95 downto 0) ;
      fifo_out_valid : out std_logic ;
      fifo_overflow : out std_logic ;
      fifo_underflow : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      fifo_in : in std_logic_vector(95 downto 0) := (others => 'X') ;
      fifo_in_valid : in std_logic := 'X' ;
      fifo_out_ack : in std_logic := 'X' ;
    fifo_in_stall_override : in std_logic := 'X' ) ;
  end component ;

  type $_axi4s_dp_bus_t is
  record
    tvalid : std_logic ;
    tlast : std_logic ;
    tid : std_logic_vector(0 downto 0) ;
    tstrb : std_logic_vector(7 downto 0) ;
    tuser : std_logic_vector(7 downto 0) ;
    tdata : std_logic_vector(63 downto 0) ;
  end record ;
  subtype axi4s_dp_bus_t is $_axi4s_dp_bus_t std_logic_vector(82 downto 0) ;
  type $_axi4s_dp_rdy_t is
  record
    tready : std_logic ;
  end record ;
  subtype axi4s_dp_rdy_t is $_axi4s_dp_rdy_t std_logic_vector(0 downto 0) ;
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
  type $_kim_entry_t is
  record
    valid : std_logic_vector(0 downto 0) ;
    label_index : std_logic_vector(2 downto 0) ;
    ckv_length : std_logic_vector(1 downto 0) ;
    ckv_pointer : std_logic_vector(14 downto 0) ;
    pf_num : std_logic_vector(3 downto 0) ;
    vf_num : std_logic_vector(11 downto 0) ;
    vf_valid : std_logic_vector(0 downto 0) ;
  end record ;
  subtype kim_entry_t is $_kim_entry_t std_logic_vector(37 downto 0) ;
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
  signal cmdfifo_gcm_cmd : std_logic_vector(610 downto 0) ;
  signal cmdfifo_gcm_valid : std_logic ;
  signal cmdfifo_kdf_cmd : std_logic_vector(3 downto 0) ;
  signal cmdfifo_kdf_valid : std_logic ;
  signal cmdfifo_kdfstream_cmd : std_logic_vector(262 downto 0) ;
  signal cmdfifo_kdfstream_valid : std_logic ;
  signal cmdfifo_keyfilter_cmd : std_logic_vector(0 downto 0) ;
  signal cmdfifo_keyfilter_valid : std_logic ;
  signal gcm_cmd_in_stall : std_logic ;
  signal gcm_cmd_in_valid : std_logic ;
  signal gcm_cmdfifo_ack : std_logic ;
  signal gcm_kdf_data : std_logic_vector(127 downto 0) ;
  signal gcm_kdf_eof : std_logic ;
  signal gcm_kdf_valid : std_logic ;
  signal gcm_status_data_in_stall : std_logic ;
  signal gcm_status_data_in_valid : std_logic ;
  signal gcm_status_data_out : std_logic_vector(0 downto 0) ;
  signal gcm_status_data_out_ack : std_logic ;
  signal gcm_status_data_out_valid : std_logic ;
  signal gcm_tag_data_in : std_logic_vector(95 downto 0) ;
  signal gcm_tag_data_in_stall : std_logic ;
  signal gcm_tag_data_in_valid : std_logic ;
  signal gcm_tag_data_out : std_logic_vector(95 downto 0) ;
  signal gcm_tag_data_out_ack : std_logic ;
  signal gcm_tag_data_out_valid : std_logic ;
  signal gcm_upsizer_stall : std_logic ;
  signal inspector_upsizer_data : std_logic_vector(63 downto 0) ;
  signal inspector_upsizer_eof : std_logic ;
  signal inspector_upsizer_valid : std_logic ;
  signal kdf_cmd_in_stall : std_logic ;
  signal kdf_cmd_in_valid : std_logic ;
  signal kdf_cmdfifo_ack : std_logic ;
  signal kdf_gcm_stall : std_logic ;
  signal kdf_keybuilder_data : std_logic_vector(63 downto 0) ;
  signal kdf_keybuilder_valid : std_logic ;
  signal kdfstream_cmd_in_stall : std_logic ;
  signal kdfstream_cmd_in_valid : std_logic ;
  signal kdfstream_cmdfifo_ack : std_logic ;
  signal keybuilder_kdf_stall : std_logic ;
  signal keyfilter_cmd_in_stall : std_logic ;
  signal keyfilter_cmd_in_valid : std_logic ;
  signal keyfilter_cmdfifo_ack : std_logic ;
  signal tlv_sb_data_in : std_logic_vector(63 downto 0) ;
  signal tlv_sb_data_in_stall : std_logic ;
  signal tlv_sb_data_in_valid : std_logic ;
  signal tlv_sb_data_out : std_logic_vector(63 downto 0) ;
  signal tlv_sb_data_out_ack : std_logic ;
  signal tlv_sb_data_out_valid : std_logic ;
  signal upsizer_gcm_data : std_logic_vector(127 downto 0) ;
  signal upsizer_gcm_eof : std_logic ;
  signal upsizer_gcm_valid : std_logic ;
  signal upsizer_inspector_stall : std_logic ;
  signal DUMMY3 : std_logic_vector(0 to 105) ;
  signal DUMMY4 : std_logic_vector(0 to 610) ;
  signal DUMMY5 : std_logic ;
  signal DUMMY6 : std_logic_vector(0 to 262) ;
  signal DUMMY7 : std_logic_vector(0 to 3) ;
  signal DUMMY8 : std_logic ;
  signal DUMMY9 : std_logic_vector(0 to 105) ;
  signal _zy_simnet_dio_7 : std_logic ;
  signal _zy_simnet_dio_8 : std_logic ;
  signal DUMMY10 : std_logic_vector(0 to 610) ;
  signal _zy_simnet_dio_10 : std_logic ;
  signal _zy_simnet_dio_11 : std_logic ;
  signal DUMMY11 : std_logic ;
  signal _zy_simnet_dio_13 : std_logic ;
  signal _zy_simnet_dio_14 : std_logic ;
  signal DUMMY12 : std_logic_vector(0 to 3) ;
  signal _zy_simnet_dio_16 : std_logic ;
  signal _zy_simnet_dio_17 : std_logic ;
  signal DUMMY13 : std_logic_vector(0 to 262) ;
  signal _zy_simnet_dio_19 : std_logic ;
  signal _zy_simnet_dio_20 : std_logic ;
  signal _zy_simnet_dio_21 : std_logic ;
  signal _zy_simnet_dio_22 : std_logic ;
  signal _zy_simnet_dio_23 : std_logic ;
  signal _zy_simnet_dio_24 : std_logic ;
  signal DUMMY14 : std_logic ;
  signal gcm_cmd_in : gcm_cmd_t ;
  signal gcm_status_data_in : gcm_status_t ;
  signal kdf_cmd_in : kdf_cmd_t ;
  signal kdfstream_cmd_in : kdfstream_cmd_t ;
  signal keyfilter_cmd_in : keyfilter_cmd_t ;

begin
  _zz_strnp_0 : ixc_assign
    generic map(W => 106)
    port map (
       DUMMY3
      ,key_tlv_ob_tlv
    ) ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 611)
    port map (
       gcm_cmd_in
      ,DUMMY4
    ) ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 1)
    port map (
       keyfilter_cmd_in
      ,DUMMY5
    ) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 263)
    port map (
       kdfstream_cmd_in
      ,DUMMY6
    ) ;
  _zz_strnp_4 : ixc_assign
    generic map(W => 4)
    port map (
       kdf_cmd_in
      ,DUMMY7
    ) ;
  _zz_strnp_5 : ixc_assign
    generic map(W => 1)
    port map (
       gcm_status_data_in
      ,DUMMY8
    ) ;
  _zz_strnp_6 : ixc_assign
    generic map(W => 106)
    port map (
       key_tlv_ob_tlv
      ,DUMMY9
    ) ;
  _zz_strnp_7 : ixc_assign
    generic map(W => 611)
    port map (
       DUMMY10
      ,gcm_cmd_in
    ) ;
  _zz_strnp_8 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY11
      ,keyfilter_cmd_in
    ) ;
  _zz_strnp_9 : ixc_assign
    generic map(W => 4)
    port map (
       DUMMY12
      ,kdf_cmd_in
    ) ;
  _zz_strnp_10 : ixc_assign
    generic map(W => 263)
    port map (
       DUMMY13
      ,kdfstream_cmd_in
    ) ;
  _zz_strnp_11 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY14
      ,gcm_status_data_in
    ) ;
  tlv_inspector : cr_kme_kop_tlv_inspector_xcm70
    port map (
       kme_internal_out_ack => kme_internal_out_ack
      ,gcm_cmd_in => DUMMY4
      ,gcm_cmd_in_valid => gcm_cmd_in_valid
      ,gcm_tag_data_in => gcm_tag_data_in
      ,gcm_tag_data_in_valid => gcm_tag_data_in_valid
      ,inspector_upsizer_valid => inspector_upsizer_valid
      ,inspector_upsizer_eof => inspector_upsizer_eof
      ,inspector_upsizer_data => inspector_upsizer_data
      ,keyfilter_cmd_in => DUMMY5
      ,keyfilter_cmd_in_valid => keyfilter_cmd_in_valid
      ,kdfstream_cmd_in => DUMMY6
      ,kdfstream_cmd_in_valid => kdfstream_cmd_in_valid
      ,kdf_cmd_in => DUMMY7
      ,kdf_cmd_in_valid => kdf_cmd_in_valid
      ,tlv_sb_data_in => tlv_sb_data_in
      ,tlv_sb_data_in_valid => tlv_sb_data_in_valid
      ,clk => clk
      ,rst_n => rst_n
      ,labels => labels
      ,kme_internal_out => kme_internal_out
      ,kme_internal_out_valid => kme_internal_out_valid
      ,gcm_cmd_in_stall => gcm_cmd_in_stall
      ,gcm_tag_data_in_stall => gcm_tag_data_in_stall
      ,upsizer_inspector_stall => upsizer_inspector_stall
      ,keyfilter_cmd_in_stall => keyfilter_cmd_in_stall
      ,kdfstream_cmd_in_stall => kdfstream_cmd_in_stall
      ,kdf_cmd_in_stall => kdf_cmd_in_stall
      ,tlv_sb_data_in_stall => tlv_sb_data_in_stall
    ) ;
  upsizer : cr_kme_kop_upsizer_x2_xcm72
    port map (
       upsizer_in_stall => upsizer_inspector_stall
      ,upsizer_out_valid => upsizer_gcm_valid
      ,upsizer_out_eof => upsizer_gcm_eof
      ,upsizer_out_data => upsizer_gcm_data
      ,clk => clk
      ,rst_n => rst_n
      ,in_upsizer_valid => inspector_upsizer_valid
      ,in_upsizer_eof => inspector_upsizer_eof
      ,in_upsizer_data => inspector_upsizer_data
      ,out_upsizer_stall => gcm_upsizer_stall
    ) ;
  gcm : cr_kme_kop_gcm
    port map (
       set_gcm_tag_fail_int => set_gcm_tag_fail_int
      ,gcm_cmdfifo_ack => gcm_cmdfifo_ack
      ,gcm_upsizer_stall => gcm_upsizer_stall
      ,gcm_tag_data_out_ack => gcm_tag_data_out_ack
      ,gcm_kdf_valid => gcm_kdf_valid
      ,gcm_kdf_eof => gcm_kdf_eof
      ,gcm_kdf_data => gcm_kdf_data
      ,gcm_status_data_in_valid => gcm_status_data_in_valid
      ,gcm_status_data_in => DUMMY8
      ,clk => clk
      ,rst_n => rst_n
      ,cmdfifo_gcm_valid => cmdfifo_gcm_valid
      ,cmdfifo_gcm_cmd => cmdfifo_gcm_cmd
      ,upsizer_gcm_valid => upsizer_gcm_valid
      ,upsizer_gcm_eof => upsizer_gcm_eof
      ,upsizer_gcm_data => upsizer_gcm_data
      ,gcm_tag_data_out => gcm_tag_data_out
      ,gcm_tag_data_out_valid => gcm_tag_data_out_valid
      ,kdf_gcm_stall => kdf_gcm_stall
      ,gcm_status_data_in_stall => gcm_status_data_in_stall
    ) ;
  DUMMY15 : cr_kme_kop_kdf
    port map (
       keyfilter_cmdfifo_ack => keyfilter_cmdfifo_ack
      ,kdf_cmdfifo_ack => kdf_cmdfifo_ack
      ,kdfstream_cmdfifo_ack => kdfstream_cmdfifo_ack
      ,kdf_gcm_stall => kdf_gcm_stall
      ,kdf_keybuilder_data => kdf_keybuilder_data
      ,kdf_keybuilder_valid => kdf_keybuilder_valid
      ,clk => clk
      ,rst_n => rst_n
      ,scan_en => scan_en
      ,scan_mode => scan_mode
      ,scan_rst_n => scan_rst_n
      ,labels => labels
      ,cmdfifo_keyfilter_valid => cmdfifo_keyfilter_valid
      ,cmdfifo_keyfilter_cmd => cmdfifo_keyfilter_cmd
      ,cmdfifo_kdf_valid => cmdfifo_kdf_valid
      ,cmdfifo_kdf_cmd => cmdfifo_kdf_cmd
      ,cmdfifo_kdfstream_valid => cmdfifo_kdfstream_valid
      ,cmdfifo_kdfstream_cmd => cmdfifo_kdfstream_cmd
      ,gcm_kdf_valid => gcm_kdf_valid
      ,gcm_kdf_eof => gcm_kdf_eof
      ,gcm_kdf_data => gcm_kdf_data
      ,keybuilder_kdf_stall => keybuilder_kdf_stall
      ,kdf_test_key_size => kdf_test_key_size
      ,kdf_test_mode_en => kdf_test_mode_en
    ) ;
  key_builder : cr_kme_kop_keybuilder
    port map (
       tlv_sb_data_out_ack => tlv_sb_data_out_ack
      ,keybuilder_kdf_stall => keybuilder_kdf_stall
      ,gcm_status_data_out_ack => gcm_status_data_out_ack
      ,key_tlv_ob_wr => key_tlv_ob_wr
      ,key_tlv_ob_tlv => DUMMY9
      ,clk => clk
      ,rst_n => rst_n
      ,tlv_sb_data_out => tlv_sb_data_out
      ,tlv_sb_data_out_valid => tlv_sb_data_out_valid
      ,kdf_keybuilder_data => kdf_keybuilder_data
      ,kdf_keybuilder_valid => kdf_keybuilder_valid
      ,gcm_status_data_out_valid => gcm_status_data_out_valid
      ,gcm_status_data_out => gcm_status_data_out
      ,key_tlv_ob_full => key_tlv_ob_full
      ,key_tlv_ob_afull => key_tlv_ob_afull
    ) ;
  gcm_cmd_fifo : cr_kme_fifo_xcm50
    port map (
       fifo_in_stall => gcm_cmd_in_stall
      ,fifo_out => cmdfifo_gcm_cmd
      ,fifo_out_valid => cmdfifo_gcm_valid
      ,fifo_overflow => _zy_simnet_dio_7
      ,fifo_underflow => _zy_simnet_dio_8
      ,clk => clk
      ,rst_n => rst_n
      ,fifo_in => DUMMY10
      ,fifo_in_valid => gcm_cmd_in_valid
      ,fifo_out_ack => gcm_cmdfifo_ack
      ,fifo_in_stall_override => kop_fifo_override(0)
    ) ;
  keyfilter_cmd_fifo : cr_kme_fifo_xcm49
    port map (
       fifo_in_stall => keyfilter_cmd_in_stall
      ,fifo_out => cmdfifo_keyfilter_cmd
      ,fifo_out_valid => cmdfifo_keyfilter_valid
      ,fifo_overflow => _zy_simnet_dio_10
      ,fifo_underflow => _zy_simnet_dio_11
      ,clk => clk
      ,rst_n => rst_n
      ,fifo_in => DUMMY11
      ,fifo_in_valid => keyfilter_cmd_in_valid
      ,fifo_out_ack => keyfilter_cmdfifo_ack
      ,fifo_in_stall_override => kop_fifo_override(2)
    ) ;
  kdf_cmd_fifo : cr_kme_fifo_xcm48
    port map (
       fifo_in_stall => kdf_cmd_in_stall
      ,fifo_out => cmdfifo_kdf_cmd
      ,fifo_out_valid => cmdfifo_kdf_valid
      ,fifo_overflow => _zy_simnet_dio_13
      ,fifo_underflow => _zy_simnet_dio_14
      ,clk => clk
      ,rst_n => rst_n
      ,fifo_in => DUMMY12
      ,fifo_in_valid => kdf_cmd_in_valid
      ,fifo_out_ack => kdf_cmdfifo_ack
      ,fifo_in_stall_override => kop_fifo_override(4)
    ) ;
  kdfstream_cmd_fifo : cr_kme_fifo_xcm47
    port map (
       fifo_in_stall => kdfstream_cmd_in_stall
      ,fifo_out => cmdfifo_kdfstream_cmd
      ,fifo_out_valid => cmdfifo_kdfstream_valid
      ,fifo_overflow => _zy_simnet_dio_16
      ,fifo_underflow => _zy_simnet_dio_17
      ,clk => clk
      ,rst_n => rst_n
      ,fifo_in => DUMMY13
      ,fifo_in_valid => kdfstream_cmd_in_valid
      ,fifo_out_ack => kdfstream_cmdfifo_ack
      ,fifo_in_stall_override => kop_fifo_override(3)
    ) ;
  tlv_sb_data_fifo : cr_kme_fifo_xcm46
    port map (
       fifo_in_stall => tlv_sb_data_in_stall
      ,fifo_out => tlv_sb_data_out
      ,fifo_out_valid => tlv_sb_data_out_valid
      ,fifo_overflow => _zy_simnet_dio_19
      ,fifo_underflow => _zy_simnet_dio_20
      ,clk => clk
      ,rst_n => rst_n
      ,fifo_in => tlv_sb_data_in
      ,fifo_in_valid => tlv_sb_data_in_valid
      ,fifo_out_ack => tlv_sb_data_out_ack
      ,fifo_in_stall_override => kop_fifo_override(5)
    ) ;
  gcm_tag_data_fifo : cr_kme_fifo_xcm45
    port map (
       fifo_in_stall => gcm_tag_data_in_stall
      ,fifo_out => gcm_tag_data_out
      ,fifo_out_valid => gcm_tag_data_out_valid
      ,fifo_overflow => _zy_simnet_dio_21
      ,fifo_underflow => _zy_simnet_dio_22
      ,clk => clk
      ,rst_n => rst_n
      ,fifo_in => gcm_tag_data_in
      ,fifo_in_valid => gcm_tag_data_in_valid
      ,fifo_out_ack => gcm_tag_data_out_ack
      ,fifo_in_stall_override => kop_fifo_override(1)
    ) ;
  gcm_status_data_fifo : cr_kme_fifo_xcm49
    port map (
       fifo_in_stall => gcm_status_data_in_stall
      ,fifo_out => gcm_status_data_out
      ,fifo_out_valid => gcm_status_data_out_valid
      ,fifo_overflow => _zy_simnet_dio_23
      ,fifo_underflow => _zy_simnet_dio_24
      ,clk => clk
      ,rst_n => rst_n
      ,fifo_in => DUMMY14
      ,fifo_in_valid => gcm_status_data_in_valid
      ,fifo_out_ack => gcm_status_data_out_ack
      ,fifo_in_stall_override => kop_fifo_override(6)
    ) ;
end module;
