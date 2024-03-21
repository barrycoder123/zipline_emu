architecture module of cr_kme_kop_kdf is
  component cr_kme_fifo_xcm54
    generic (
      DATA_SIZE : integer := 128 ;
      FIFO_DEPTH : integer := 4 ;
      OVERRIDE_EN : integer := 0 ;
      STALL_AT : integer := 0
    ) ;
    port (
      fifo_in_stall : out std_logic ;
      fifo_out : out std_logic_vector(127 downto 0) ;
      fifo_out_valid : out std_logic ;
      fifo_overflow : out std_logic ;
      fifo_underflow : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      fifo_in : in std_logic_vector(127 downto 0) := (others => 'X') ;
      fifo_in_valid : in std_logic := 'X' ;
      fifo_out_ack : in std_logic := 'X' ;
    fifo_in_stall_override : in std_logic := 'X' ) ;
  end component ;

  component cr_kme_kop_upsizer_x2_xcm71
    generic (
      IN_DATA_SIZE : integer := 128
    ) ;
    port (
      upsizer_in_stall : out std_logic ;
      upsizer_out_valid : out std_logic ;
      upsizer_out_eof : out std_logic ;
      upsizer_out_data : out std_logic_vector(255 downto 0) ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      in_upsizer_valid : in std_logic := 'X' ;
      in_upsizer_eof : in std_logic := 'X' ;
      in_upsizer_data : in std_logic_vector(127 downto 0) := (others => 'X') ;
    out_upsizer_stall : in std_logic := 'X' ) ;
  end component ;

  component cr_kme_kop_kdf_keyfilter
    generic (
      subtype keyfilter_cmd_t is std_logic_vector(0 downto 0)
    ) ;
    port (
      keyfilter_cmdfifo_ack : out std_logic ;
      keyfilter_upsizer_stall : out std_logic ;
      hash_key_in : out std_logic_vector(255 downto 0) ;
      hash_key_in_valid : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      cmdfifo_keyfilter_valid : in std_logic := 'X' ;
      cmdfifo_keyfilter_cmd : in keyfilter_cmd_t := (others => '0') ;
      upsizer_keyfilter_data : in std_logic_vector(255 downto 0) := (others =>
       'X') ;
      upsizer_keyfilter_valid : in std_logic := 'X' ;
      upsizer_keyfilter_eof : in std_logic := 'X' ;
    hash_key_in_stall : in std_logic := 'X' ) ;
  end component ;

  component cr_kme_fifo_xcm53
    generic (
      DATA_SIZE : integer := 256 ;
      FIFO_DEPTH : integer := 4 ;
      OVERRIDE_EN : integer := 0 ;
      STALL_AT : integer := 0
    ) ;
    port (
      fifo_in_stall : out std_logic ;
      fifo_out : out std_logic_vector(255 downto 0) ;
      fifo_out_valid : out std_logic ;
      fifo_overflow : out std_logic ;
      fifo_underflow : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      fifo_in : in std_logic_vector(255 downto 0) := (others => 'X') ;
      fifo_in_valid : in std_logic := 'X' ;
      fifo_out_ack : in std_logic := 'X' ;
    fifo_in_stall_override : in std_logic := 'X' ) ;
  end component ;

  component cr_kme_hmac_sha256_stub
    port (
      hash_cmdfifo_ack : out std_logic ;
      hash_keyfifo_ack : out std_logic ;
      hash_len_data_out_ack : out std_logic ;
      hash_in_stall : out std_logic ;
      sha_tag_data : out std_logic_vector(127 downto 0) ;
      sha_tag_valid : out std_logic ;
      sha_tag_last : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      scan_en : in std_logic := 'X' ;
      scan_mode : in std_logic := 'X' ;
      scan_rst_n : in std_logic := 'X' ;
      cmdfifo_hash_valid : in std_logic := 'X' ;
      cmdfifo_hash_skip : in std_logic := 'X' ;
      cmdfifo_hash_small_size : in std_logic := 'X' ;
      keyfifo_hash_data : in std_logic_vector(255 downto 0) := (others => 'X') ;
      keyfifo_hash_valid : in std_logic := 'X' ;
      hash_len_data_out : in std_logic_vector(31 downto 0) := (others => 'X') ;
      hash_len_data_out_valid : in std_logic := 'X' ;
      in_hash_valid : in std_logic := 'X' ;
      in_hash_eof : in std_logic := 'X' ;
      in_hash_eoc : in std_logic := 'X' ;
      in_hash_num_bytes : in std_logic_vector(4 downto 0) := (others => 'X') ;
      in_hash_data : in std_logic_vector(127 downto 0) := (others => 'X') ;
    sha_tag_stall : in std_logic := 'X' ) ;
  end component ;

  component cr_kme_kop_kdf_stream_gen
    generic (
      subtype kdfstream_cmd_t is std_logic_vector(262 downto 0) ;
      subtype label_t is std_logic_vector(271 downto 0) ;
      type DUMMY2 is array(integer range <>) of label_t
    ) ;
    port (
      kdfstream_cmdfifo_ack : out std_logic ;
      cmdfifo_hash_valid : out std_logic ;
      cmdfifo_hash_skip : out std_logic ;
      cmdfifo_hash_small_size : out std_logic ;
      hash_len_data_out : out std_logic_vector(31 downto 0) ;
      hash_len_data_out_valid : out std_logic ;
      in_hash_valid : out std_logic ;
      in_hash_eof : out std_logic ;
      in_hash_eoc : out std_logic ;
      in_hash_num_bytes : out std_logic_vector(4 downto 0) ;
      in_hash_data : out std_logic_vector(127 downto 0) ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      cmdfifo_kdfstream_valid : in std_logic := 'X' ;
      cmdfifo_kdfstream_cmd : in kdfstream_cmd_t := (others => '0') ;
      labels : in DUMMY2(7 downto 0) := (others => (others => '0')) ;
      hash_cmdfifo_ack : in std_logic := 'X' ;
      hash_len_data_out_ack : in std_logic := 'X' ;
      hash_in_stall : in std_logic := 'X' ;
      kdf_test_key_size : in std_logic_vector(31 downto 0) := (others => 'X') ;
    kdf_test_mode_en : in std_logic := 'X' ) ;
  end component ;

  component cr_kme_kop_kdf_merger
    generic (
      subtype aux_key_op_e is std_logic_vector(0 downto 0) ;
      constant NOOP : aux_key_op_e := "0" ;
      constant KDF : aux_key_op_e := "1" ;
      subtype kdf_cmd_t is std_logic_vector(3 downto 0)
    ) ;
    port (
      kdf_cmdfifo_ack : out std_logic ;
      sha_tag_stall : out std_logic ;
      merger_keyfifo_ack : out std_logic ;
      kdf_keybuilder_data : out std_logic_vector(63 downto 0) ;
      kdf_keybuilder_valid : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      cmdfifo_kdf_valid : in std_logic := 'X' ;
      cmdfifo_kdf_cmd : in kdf_cmd_t := (others => '0') ;
      sha_tag_data : in std_logic_vector(127 downto 0) := (others => 'X') ;
      sha_tag_valid : in std_logic := 'X' ;
      sha_tag_last : in std_logic := 'X' ;
      keyfifo_merger_data : in std_logic_vector(127 downto 0) := (others => 'X')
       ;
      keyfifo_merger_valid : in std_logic := 'X' ;
    keybuilder_kdf_stall : in std_logic := 'X' ) ;
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
  signal cmdfifo_hash_skip : std_logic ;
  signal cmdfifo_hash_small_size : std_logic ;
  signal cmdfifo_hash_valid : std_logic ;
  signal hash_cmdfifo_ack : std_logic ;
  signal hash_in_stall : std_logic ;
  signal hash_key_in : std_logic_vector(255 downto 0) ;
  signal hash_key_in_stall : std_logic ;
  signal hash_key_in_valid : std_logic ;
  signal hash_keyfifo_ack : std_logic ;
  signal hash_len_data_out : std_logic_vector(31 downto 0) ;
  signal hash_len_data_out_ack : std_logic ;
  signal hash_len_data_out_valid : std_logic ;
  signal in_hash_data : std_logic_vector(127 downto 0) ;
  signal in_hash_eoc : std_logic ;
  signal in_hash_eof : std_logic ;
  signal in_hash_num_bytes : std_logic_vector(4 downto 0) ;
  signal in_hash_valid : std_logic ;
  signal keyfifo_hash_data : std_logic_vector(255 downto 0) ;
  signal keyfifo_hash_valid : std_logic ;
  signal keyfifo_in_stall : std_logic ;
  signal keyfifo_merger_data : std_logic_vector(127 downto 0) ;
  signal keyfifo_merger_valid : std_logic ;
  signal keyfilter_upsizer_stall : std_logic ;
  signal merger_keyfifo_ack : std_logic ;
  signal sha_tag_data : std_logic_vector(127 downto 0) ;
  signal sha_tag_last : std_logic ;
  signal sha_tag_stall : std_logic ;
  signal sha_tag_valid : std_logic ;
  signal upsizer_in_stall : std_logic ;
  signal upsizer_keyfilter_data : std_logic_vector(255 downto 0) ;
  signal upsizer_keyfilter_eof : std_logic ;
  signal upsizer_keyfilter_valid : std_logic ;
  signal _zy_simnet_dio_0 : std_logic ;
  signal _zy_simnet_dio_1 : std_logic ;
  signal _zy_simnet_cio_2 : std_logic ;
  signal _zy_simnet_dio_3 : std_logic ;
  signal _zy_simnet_dio_4 : std_logic ;
  signal _zy_simnet_cio_5 : std_logic ;

begin
  kdf_gcm_stall <= (upsizer_in_stall or keyfifo_in_stall) ;
  _zy_simnet_cio_2 <= '0' ;
  _zy_simnet_cio_5 <= '0' ;
  gcm_key_fifo : cr_kme_fifo_xcm54
    port map (
       fifo_in_stall => keyfifo_in_stall
      ,fifo_out => keyfifo_merger_data
      ,fifo_out_valid => keyfifo_merger_valid
      ,fifo_overflow => _zy_simnet_dio_0
      ,fifo_underflow => _zy_simnet_dio_1
      ,clk => clk
      ,rst_n => rst_n
      ,fifo_in => gcm_kdf_data
      ,fifo_in_valid => gcm_kdf_valid
      ,fifo_out_ack => merger_keyfifo_ack
      ,fifo_in_stall_override => _zy_simnet_cio_2
    ) ;
  key_upsizer : cr_kme_kop_upsizer_x2_xcm71
    port map (
       upsizer_in_stall => upsizer_in_stall
      ,upsizer_out_valid => upsizer_keyfilter_valid
      ,upsizer_out_eof => upsizer_keyfilter_eof
      ,upsizer_out_data => upsizer_keyfilter_data
      ,clk => clk
      ,rst_n => rst_n
      ,in_upsizer_valid => gcm_kdf_valid
      ,in_upsizer_eof => gcm_kdf_eof
      ,in_upsizer_data => gcm_kdf_data
      ,out_upsizer_stall => keyfilter_upsizer_stall
    ) ;
  keyfilter : cr_kme_kop_kdf_keyfilter
    port map (
       keyfilter_cmdfifo_ack => keyfilter_cmdfifo_ack
      ,keyfilter_upsizer_stall => keyfilter_upsizer_stall
      ,hash_key_in => hash_key_in
      ,hash_key_in_valid => hash_key_in_valid
      ,clk => clk
      ,rst_n => rst_n
      ,cmdfifo_keyfilter_valid => cmdfifo_keyfilter_valid
      ,cmdfifo_keyfilter_cmd => cmdfifo_keyfilter_cmd
      ,upsizer_keyfilter_data => upsizer_keyfilter_data
      ,upsizer_keyfilter_valid => upsizer_keyfilter_valid
      ,upsizer_keyfilter_eof => upsizer_keyfilter_eof
      ,hash_key_in_stall => hash_key_in_stall
    ) ;
  hash_key_fifo : cr_kme_fifo_xcm53
    port map (
       fifo_in_stall => hash_key_in_stall
      ,fifo_out => keyfifo_hash_data
      ,fifo_out_valid => keyfifo_hash_valid
      ,fifo_overflow => _zy_simnet_dio_3
      ,fifo_underflow => _zy_simnet_dio_4
      ,clk => clk
      ,rst_n => rst_n
      ,fifo_in => hash_key_in
      ,fifo_in_valid => hash_key_in_valid
      ,fifo_out_ack => hash_keyfifo_ack
      ,fifo_in_stall_override => _zy_simnet_cio_5
    ) ;
  hmac_sha256 : cr_kme_hmac_sha256_stub
    port map (
       hash_cmdfifo_ack => hash_cmdfifo_ack
      ,hash_keyfifo_ack => hash_keyfifo_ack
      ,hash_len_data_out_ack => hash_len_data_out_ack
      ,hash_in_stall => hash_in_stall
      ,sha_tag_data => sha_tag_data
      ,sha_tag_valid => sha_tag_valid
      ,sha_tag_last => sha_tag_last
      ,clk => clk
      ,rst_n => rst_n
      ,scan_en => scan_en
      ,scan_mode => scan_mode
      ,scan_rst_n => scan_rst_n
      ,cmdfifo_hash_valid => cmdfifo_hash_valid
      ,cmdfifo_hash_skip => cmdfifo_hash_skip
      ,cmdfifo_hash_small_size => cmdfifo_hash_small_size
      ,keyfifo_hash_data => keyfifo_hash_data
      ,keyfifo_hash_valid => keyfifo_hash_valid
      ,hash_len_data_out => hash_len_data_out
      ,hash_len_data_out_valid => hash_len_data_out_valid
      ,in_hash_valid => in_hash_valid
      ,in_hash_eof => in_hash_eof
      ,in_hash_eoc => in_hash_eoc
      ,in_hash_num_bytes => in_hash_num_bytes
      ,in_hash_data => in_hash_data
      ,sha_tag_stall => sha_tag_stall
    ) ;
  stream_gen : cr_kme_kop_kdf_stream_gen
    port map (
       kdfstream_cmdfifo_ack => kdfstream_cmdfifo_ack
      ,cmdfifo_hash_valid => cmdfifo_hash_valid
      ,cmdfifo_hash_skip => cmdfifo_hash_skip
      ,cmdfifo_hash_small_size => cmdfifo_hash_small_size
      ,hash_len_data_out => hash_len_data_out
      ,hash_len_data_out_valid => hash_len_data_out_valid
      ,in_hash_valid => in_hash_valid
      ,in_hash_eof => in_hash_eof
      ,in_hash_eoc => in_hash_eoc
      ,in_hash_num_bytes => in_hash_num_bytes
      ,in_hash_data => in_hash_data
      ,clk => clk
      ,rst_n => rst_n
      ,cmdfifo_kdfstream_valid => cmdfifo_kdfstream_valid
      ,cmdfifo_kdfstream_cmd => cmdfifo_kdfstream_cmd
      ,labels => labels
      ,hash_cmdfifo_ack => hash_cmdfifo_ack
      ,hash_len_data_out_ack => hash_len_data_out_ack
      ,hash_in_stall => hash_in_stall
      ,kdf_test_key_size => kdf_test_key_size
      ,kdf_test_mode_en => kdf_test_mode_en
    ) ;
  merger : cr_kme_kop_kdf_merger
    port map (
       kdf_cmdfifo_ack => kdf_cmdfifo_ack
      ,sha_tag_stall => sha_tag_stall
      ,merger_keyfifo_ack => merger_keyfifo_ack
      ,kdf_keybuilder_data => kdf_keybuilder_data
      ,kdf_keybuilder_valid => kdf_keybuilder_valid
      ,clk => clk
      ,rst_n => rst_n
      ,cmdfifo_kdf_valid => cmdfifo_kdf_valid
      ,cmdfifo_kdf_cmd => cmdfifo_kdf_cmd
      ,sha_tag_data => sha_tag_data
      ,sha_tag_valid => sha_tag_valid
      ,sha_tag_last => sha_tag_last
      ,keyfifo_merger_data => keyfifo_merger_data
      ,keyfifo_merger_valid => keyfifo_merger_valid
      ,keybuilder_kdf_stall => keybuilder_kdf_stall
    ) ;
end module;