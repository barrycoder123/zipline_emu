architecture module of cr_kme_kop_kdf_stream_gen is
  type DUMMY3 is array(integer range <>) of std_logic_vector(0 downto 0) ;
  type DUMMY4 is array(integer range <>) of std_logic_vector(127 downto 0) ;
  type DUMMY5 is array(integer range <>) of std_logic_vector(4 downto 0) ;
  type DUMMY6 is array(integer range <>) of std_logic_vector(5 downto 0) ;
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component cr_kme_kop_kdf_stream_pipe_xcm80
    generic (
      IN_DATA_SIZE_IN_BYTES : integer := 36
    ) ;
    port (
      pipe_valid : out std_logic_vector(0 downto 0) ;
      pipe_data : out std_logic_vector(127 downto 0) ;
      pipe_byte_count : out std_logic_vector(5 downto 0) ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      cmd_valid : in std_logic := 'X' ;
      cmd_data_size : in std_logic_vector(5 downto 0) := (others => 'X') ;
      cmd_data : in std_logic_vector(287 downto 0) := (others => 'X') ;
      pipe_ack : in std_logic_vector(0 downto 0) := (others => 'X') ;
    pipe_ack_num_bytes : in std_logic_vector(4 downto 0) := (others => 'X') ) ;
  end component ;

  component cr_kme_kop_kdf_stream_pipe_xcm79
    generic (
      IN_DATA_SIZE_IN_BYTES : integer := 37
    ) ;
    port (
      pipe_valid : out std_logic_vector(0 downto 0) ;
      pipe_data : out std_logic_vector(127 downto 0) ;
      pipe_byte_count : out std_logic_vector(5 downto 0) ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      cmd_valid : in std_logic := 'X' ;
      cmd_data_size : in std_logic_vector(5 downto 0) := (others => 'X') ;
      cmd_data : in std_logic_vector(295 downto 0) := (others => 'X') ;
      pipe_ack : in std_logic_vector(0 downto 0) := (others => 'X') ;
    pipe_ack_num_bytes : in std_logic_vector(4 downto 0) := (others => 'X') ) ;
  end component ;

  component cr_kme_fifo_xcm53
    generic (
      DATA_SIZE : integer := 34 ;
      FIFO_DEPTH : integer := 2 ;
      OVERRIDE_EN : integer := 0 ;
      STALL_AT : integer := 0
    ) ;
    port (
      fifo_in_stall : out std_logic ;
      fifo_out : out std_logic_vector(33 downto 0) ;
      fifo_out_valid : out std_logic ;
      fifo_overflow : out std_logic ;
      fifo_underflow : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      fifo_in : in std_logic_vector(33 downto 0) := (others => 'X') ;
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
  signal pipe_array_valid : DUMMY3(1 downto 0) ;
  signal pipe_array_data : DUMMY4(1 downto 0) ;
  signal pipe_array_byte_count : DUMMY6(1 downto 0) ;
  signal hash_cmd_in_stall : std_logic_vector(0 downto 0) ;
  signal fifo_out : std_logic_vector(33 downto 0) ;
  signal fifo_out_valid : std_logic_vector(0 downto 0) ;
  signal fifo_out_ack : std_logic_vector(0 downto 0) ;
  signal iter1_kdf_key_size : std_logic_vector(31 downto 0) ;
  signal iter2_kdf_key_size : std_logic_vector(31 downto 0) ;
  signal iter3_kdf_key_size : std_logic_vector(31 downto 0) ;
  signal st_tx_data : std_logic ;
  signal program_pipes : std_logic ;
  signal moving_to_tx_data : std_logic ;
  signal is_small_size : std_logic ;
  signal total_hash_size : std_logic_vector(31 downto 0) ;
  signal DUMMY7 : std_logic ;
  signal DUMMY8 : std_logic ;
  signal DUMMY9 : std_logic ;
  signal DUMMY10 : std_logic ;
  signal DUMMY11 : std_logic_vector(0 to 31) ;
  signal DUMMY12 : std_logic ;
  signal DUMMY13 : std_logic ;
  signal DUMMY14 : std_logic ;
  signal DUMMY15 : std_logic ;
  signal DUMMY16 : std_logic_vector(0 to 4) ;
  signal DUMMY17 : std_logic_vector(0 to 127) ;
  signal DUMMY18 : std_logic ;
  signal DUMMY19 : std_logic_vector(0 to 5) ;
  signal DUMMY20 : std_logic_vector(0 to 287) ;
  signal DUMMY21 : std_logic ;
  signal DUMMY22 : std_logic_vector(0 to 4) ;
  signal DUMMY23 : std_logic ;
  signal DUMMY24 : std_logic_vector(0 to 5) ;
  signal DUMMY25 : std_logic_vector(0 to 295) ;
  signal DUMMY26 : std_logic ;
  signal DUMMY27 : std_logic_vector(0 to 4) ;
  signal _zy_simnet_dio_21 : std_logic ;
  signal _zy_simnet_dio_22 : std_logic ;
  signal DUMMY28 : std_logic_vector(0 to 33) ;
  signal DUMMY29 : std_logic ;
  signal _zy_simnet_cio_25 : std_logic ;
  signal cmd_il_valid : std_logic ;
  signal cmd_il_data_size : std_logic_vector(5 downto 0) ;
  signal cmd_il_data : std_logic_vector(287 downto 0) ;
  signal cmd_dgl_valid : std_logic ;
  signal cmd_dgl_data_size : std_logic_vector(5 downto 0) ;
  signal cmd_dgl_data : std_logic_vector(295 downto 0) ;
  signal pipe_array_ack : DUMMY3(1 downto 0) ;
  signal pipe_array_ack_num_bytes : DUMMY5(1 downto 0) ;
  signal cur_state : stream_fsm ;
  signal nxt_state : stream_fsm ;
  signal iter_num : std_logic_vector(1 downto 0) ;
  signal num_bytes_remaining : std_logic_vector(6 downto 0) ;
  signal num_bytes_to_tx : std_logic_vector(4 downto 0) ;
  signal in_hash_byte_accumulator : std_logic_vector(4 downto 0) ;
  signal hash_cmd_in : std_logic_vector(33 downto 0) ;
  signal hash_cmd_in_valid : std_logic_vector(0 downto 0) ;
  signal i : integer ;

  function get_msb_bytes (DUMMY30 : in std_logic_vector(127 downto 0); num_bytes
   : in std_logic_vector(4 downto 0)) return std_logic_vector(127 downto 0) is
    variable get_msb_bytes_DUMMY0 : std_logic_vector(127 downto 0) ;
  begin
    get_msb_bytes_DUMMY0 := (DUMMY30 and not(shr(std_logic_vector'
    ("11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"
    ),(ext(ext(num_bytes,32) * std_logic_vector'
    ("00000000000000000000000000001000"),32))))) ;
    return get_msb_bytes_DUMMY0;
  end get_msb_bytes;
  signal DUMMY31 : std_logic_vector(0 downto 0) ;
  signal DUMMY32 : std_logic_vector(0 downto 0) ;
  -- quickturn no_hardmacro pipe_array_valid
  -- quickturn no_hardmacro pipe_array_data
  -- quickturn no_hardmacro pipe_array_byte_count

begin
  st_tx_data <= boolean_to_std(cur_state = TX_DATA) ;
  program_pipes <= boolean_to_std(cur_state /= TX_DATA) ;
  moving_to_tx_data <= (boolean_to_std(cur_state /= TX_DATA) and boolean_to_std
  (nxt_state = TX_DATA)) ;
  is_small_size <= boolean_to_std((ext(cmd_il_data_size,7) + ext
  (cmd_dgl_data_size,7)) <= std_logic_vector'("1000000")) ;
  total_hash_size <= (ext(cmd_il_data_size,32) + ext(cmd_dgl_data_size,32)) ;
  iter1_kdf_key_size <= kdf_test_key_size when (kdf_test_mode_en)='1' else
   "00000000000000000000000100000000" ;
  iter2_kdf_key_size <= kdf_test_key_size when (kdf_test_mode_en)='1' else
   "00000000000000000000001000000000" ;
  iter3_kdf_key_size <= kdf_test_key_size when (kdf_test_mode_en)='1' else
   "00000000000000000000001100000000" ;
  _zz_strnp_0 : ixc_assign
    generic map(W => 1)
    port map (
       cmdfifo_hash_valid
      ,fifo_out_valid
    ) ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 1)
    port map (
       cmdfifo_hash_skip
      ,DUMMY31
    ) ;
  DUMMY31 <= ext(fifo_out(33),1) ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 1)
    port map (
       cmdfifo_hash_small_size
      ,DUMMY32
    ) ;
  DUMMY32 <= ext(fifo_out(0),1) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 1)
    port map (
       hash_len_data_out_valid
      ,fifo_out_valid
    ) ;
  _zz_strnp_4 : ixc_assign
    generic map(W => 32)
    port map (
       hash_len_data_out
      ,fifo_out(32 downto 1)
    ) ;
  _zz_strnp_5 : ixc_assign
    generic map(W => 1)
    port map (
       fifo_out_ack
      ,hash_cmdfifo_ack
    ) ;
  _zz_strnp_6 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY7
      ,kdfstream_cmdfifo_ack
    ) ;
  _zz_strnp_7 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY8
      ,cmdfifo_hash_valid
    ) ;
  _zz_strnp_8 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY9
      ,cmdfifo_hash_skip
    ) ;
  _zz_strnp_9 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY10
      ,cmdfifo_hash_small_size
    ) ;
  _zz_strnp_10 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY11
      ,hash_len_data_out
    ) ;
  _zz_strnp_11 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY12
      ,hash_len_data_out_valid
    ) ;
  _zz_strnp_12 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY13
      ,in_hash_valid
    ) ;
  _zz_strnp_13 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY14
      ,in_hash_eof
    ) ;
  _zz_strnp_14 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY15
      ,in_hash_eoc
    ) ;
  _zz_strnp_15 : ixc_assign
    generic map(W => 5)
    port map (
       DUMMY16
      ,in_hash_num_bytes
    ) ;
  _zz_strnp_16 : ixc_assign
    generic map(W => 128)
    port map (
       DUMMY17
      ,in_hash_data
    ) ;
  _zz_strnp_17 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY18
      ,cmd_il_valid
    ) ;
  _zz_strnp_18 : ixc_assign
    generic map(W => 6)
    port map (
       DUMMY19
      ,cmd_il_data_size
    ) ;
  _zz_strnp_19 : ixc_assign
    generic map(W => 288)
    port map (
       DUMMY20
      ,cmd_il_data
    ) ;
  _zz_strnp_20 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY21
      ,pipe_array_ack(0)
    ) ;
  _zz_strnp_21 : ixc_assign
    generic map(W => 5)
    port map (
       DUMMY22
      ,pipe_array_ack_num_bytes(0)
    ) ;
  _zz_strnp_22 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY23
      ,cmd_dgl_valid
    ) ;
  _zz_strnp_23 : ixc_assign
    generic map(W => 6)
    port map (
       DUMMY24
      ,cmd_dgl_data_size
    ) ;
  _zz_strnp_24 : ixc_assign
    generic map(W => 296)
    port map (
       DUMMY25
      ,cmd_dgl_data
    ) ;
  _zz_strnp_25 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY26
      ,pipe_array_ack(1)
    ) ;
  _zz_strnp_26 : ixc_assign
    generic map(W => 5)
    port map (
       DUMMY27
      ,pipe_array_ack_num_bytes(1)
    ) ;
  _zz_strnp_27 : ixc_assign
    generic map(W => 34)
    port map (
       DUMMY28
      ,hash_cmd_in
    ) ;
  _zz_strnp_28 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY29
      ,hash_cmd_in_valid
    ) ;
  _zy_simnet_cio_25 <= '0' ;
  il_var : cr_kme_kop_kdf_stream_pipe_xcm80
    port map (
       pipe_valid => pipe_array_valid(0)
      ,pipe_data => pipe_array_data(0)
      ,pipe_byte_count => pipe_array_byte_count(0)
      ,clk => clk
      ,rst_n => rst_n
      ,cmd_valid => DUMMY18
      ,cmd_data_size => DUMMY19
      ,cmd_data => DUMMY20
      ,pipe_ack => DUMMY21
      ,pipe_ack_num_bytes => DUMMY22
    ) ;
  dgl_var : cr_kme_kop_kdf_stream_pipe_xcm79
    port map (
       pipe_valid => pipe_array_valid(1)
      ,pipe_data => pipe_array_data(1)
      ,pipe_byte_count => pipe_array_byte_count(1)
      ,clk => clk
      ,rst_n => rst_n
      ,cmd_valid => DUMMY23
      ,cmd_data_size => DUMMY24
      ,cmd_data => DUMMY25
      ,pipe_ack => DUMMY26
      ,pipe_ack_num_bytes => DUMMY27
    ) ;
  parser_fifo : cr_kme_fifo_xcm53
    port map (
       fifo_in_stall => hash_cmd_in_stall
      ,fifo_out => fifo_out
      ,fifo_out_valid => fifo_out_valid
      ,fifo_overflow => _zy_simnet_dio_21
      ,fifo_underflow => _zy_simnet_dio_22
      ,clk => clk
      ,rst_n => rst_n
      ,fifo_in => DUMMY28
      ,fifo_in_valid => DUMMY29
      ,fifo_out_ack => fifo_out_ack
      ,fifo_in_stall_override => _zy_simnet_cio_25
    ) ;

  process --:o1087
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      cur_state <= IDLE ;
    elsif (clk'event and clk = '1') then
      cur_state <= nxt_state ;
    end if ;
  end process ;

  process --:o1099
  (*)
  begin
    nxt_state <= cur_state ;

    case cur_state is
      when  "00"  =>
        if ((hash_cmd_in_stall = "0")) then
          if (cmdfifo_kdfstream_valid = '1') then
            nxt_state <= TX_DATA ;
          end if;
        end if;
      when  "01"  =>
        if (in_hash_eof = '1') then
          nxt_state <= ITERATE ;
        end if;
        if (in_hash_eoc = '1') then
          nxt_state <= IDLE ;
        end if;
      when  "10"  =>
        if ((hash_cmd_in_stall = "0")) then
          nxt_state <= TX_DATA ;
        end if;
      when others => null ;
    end case;
  end process ;

  process --:o1130
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      iter_num <= "00" ;
    elsif (clk'event and clk = '1') then
      if (nxt_state = IDLE) then
        iter_num <= "01" ;
      elsif (in_hash_eof = '1') then
        iter_num <= (iter_num + std_logic_vector'("01")) ;
      end if;
    end if ;
  end process ;

  process --:o1150
  (*)
    variable cmd_dgl_data_DUMMY1 : std_logic_vector(295 downto 0) ;
  begin
    cmd_dgl_data_DUMMY1 := cmd_dgl_data;
    cmd_il_valid <= '0' ;
    cmd_il_data_size <= "000000" ;
    cmd_il_data <= it_multiple_concat(std_logic'('0'),288) ;
    cmd_dgl_valid <= '0' ;
    cmd_dgl_data_size <= "000000" ;
    cmd_dgl_data_DUMMY1 := it_multiple_concat(std_logic'('0'),296) ;
    hash_cmd_in(0) <= is_small_size ;
    hash_cmd_in(33) <= it_conv_std_logic(cmdfifo_kdfstream_cmd(261 downto 261))
     ;
    hash_cmd_in(32 downto 1) <= (std_logic_vector'(total_hash_size(28 downto 0)
     & std_logic_vector'("000")) + std_logic_vector'
    ("00000000000000000000001000000000")) ;
    hash_cmd_in_valid <= ext(moving_to_tx_data,1) ;
    kdfstream_cmdfifo_ack <= in_hash_eoc ;
    if ((st_tx_data = '0')) then
      cmd_il_valid <= '1' ;
      cmd_il_data_size <= (std_logic_vector'("000100") + labels(conv_integer
      (cmdfifo_kdfstream_cmd(2+2 downto 2)))(265+5 downto 265)) ;
      cmd_il_data <= std_logic_vector'(std_logic_vector'
      ("000000000000000000000000000000") & iter_num & labels(conv_integer
      (cmdfifo_kdfstream_cmd(2+2 downto 2)))(9+255 downto 9)) ;
      cmd_dgl_valid <= '1' ;
      cmd_dgl_data_size <= ((it_cond_op((labels(conv_integer
      (cmdfifo_kdfstream_cmd(2+2 downto 2)))(8 downto 8))/="0",std_logic_vector'
      ("000001"),std_logic_vector'("000000")) + it_cond_op((labels(conv_integer
      (cmdfifo_kdfstream_cmd(2+2 downto 2)))(271 downto 271)
      )/="0",std_logic_vector'("100000"),std_logic_vector'("010000"))) +
       std_logic_vector'("000100")) ;
      if (labels(conv_integer(cmdfifo_kdfstream_cmd(2+2 downto 2)))(271 downto
       271) /= "0") then

        case cmdfifo_kdfstream_cmd(1 downto 0) is
          when  "01"  =>
            cmd_dgl_data_DUMMY1 := std_logic_vector'(cmdfifo_kdfstream_cmd(5+255
             downto 5) & iter1_kdf_key_size & std_logic_vector'("00000000")) ;
          when  "10"  =>
            cmd_dgl_data_DUMMY1 := std_logic_vector'(cmdfifo_kdfstream_cmd(5+255
             downto 5) & iter2_kdf_key_size & std_logic_vector'("00000000")) ;
          when  "11"  =>
            cmd_dgl_data_DUMMY1 := std_logic_vector'(cmdfifo_kdfstream_cmd(5+255
             downto 5) & iter3_kdf_key_size & std_logic_vector'("00000000")) ;
          when others => null ;
        end case;
      else

        case cmdfifo_kdfstream_cmd(1 downto 0) is
          when  "01"  =>
            cmd_dgl_data_DUMMY1 := std_logic_vector'(cmdfifo_kdfstream_cmd(132
             downto 5) & iter1_kdf_key_size & std_logic_vector'
            ("0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
            )) ;
          when  "10"  =>
            cmd_dgl_data_DUMMY1 := std_logic_vector'(cmdfifo_kdfstream_cmd(132
             downto 5) & iter2_kdf_key_size & std_logic_vector'
            ("0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
            )) ;
          when  "11"  =>
            cmd_dgl_data_DUMMY1 := std_logic_vector'(cmdfifo_kdfstream_cmd(132
             downto 5) & iter3_kdf_key_size & std_logic_vector'
            ("0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
            )) ;
          when others => null ;
        end case;
      end if;
      if (labels(conv_integer(cmdfifo_kdfstream_cmd(2+2 downto 2)))(8 downto 8)
       /= "0") then
        cmd_dgl_data_DUMMY1(287 downto 0) := cmd_dgl_data_DUMMY1(295 downto 8) ;
        cmd_dgl_data_DUMMY1(295 downto 288) := labels(conv_integer
        (cmdfifo_kdfstream_cmd(2+2 downto 2)))(7 downto 0) ;
      end if;
    end if;
    cmd_dgl_data <= transport cmd_dgl_data_DUMMY1;
  end process ;

  process --:o1200
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      num_bytes_remaining <= "0000000" ;
    elsif (clk'event and clk = '1') then
      if (program_pipes = '1') then
        num_bytes_remaining <= total_hash_size(6 downto 0) ;
      elsif (st_tx_data = '1') then
        num_bytes_remaining <= (num_bytes_remaining - ext(in_hash_num_bytes,7))
         ;
      end if;
    end if ;
  end process ;

  process --:o1218
  (*)
    variable in_hash_eof_DUMMY2 : std_logic ;
    variable num_bytes_to_tx_DUMMY3 : std_logic_vector(4 downto 0) ;
  begin
    in_hash_eof_DUMMY2 := in_hash_eof;
    num_bytes_to_tx_DUMMY3 := num_bytes_to_tx;
    in_hash_valid <= '0' ;
    in_hash_eof_DUMMY2 := '0' ;
    in_hash_eoc <= '0' ;
    in_hash_num_bytes <= "00000" ;
    num_bytes_to_tx_DUMMY3 := "00000" ;
    for i in 0 to 1 loop --:o1226
      pipe_array_ack(i) <= "0" ;
      pipe_array_ack_num_bytes(i) <= "00000" ;
    end loop;
    if (st_tx_data = '1') then
      if ((hash_in_stall = '0')) then
        in_hash_valid <= '1' ;
        in_hash_eof_DUMMY2 := boolean_to_std(num_bytes_remaining <=
         std_logic_vector'("0010000")) ;
        in_hash_eoc <= (in_hash_eof_DUMMY2 and boolean_to_std(iter_num =
         cmdfifo_kdfstream_cmd(1 downto 0))) ;
        in_hash_num_bytes <= it_cond_op((in_hash_eof_DUMMY2
        )='1',num_bytes_remaining(4 downto 0),std_logic_vector'("10000")) ;
        if (num_bytes_remaining < std_logic_vector'("0010000")) then
          num_bytes_to_tx_DUMMY3 := num_bytes_remaining(4 downto 0) ;
        else
          num_bytes_to_tx_DUMMY3 := "10000" ;
        end if;
        for i in 0 to 1 loop --:o1247
          if (num_bytes_to_tx_DUMMY3 /= std_logic_vector'("00000")) then
            if (pipe_array_valid(i) /= "0") then
              if (std_logic_vector'(std_logic'('0') & num_bytes_to_tx_DUMMY3) >=
               pipe_array_byte_count(i)) then
                pipe_array_ack(i) <= "1" ;
                pipe_array_ack_num_bytes(i) <= pipe_array_byte_count(i)(4 downto
                 0) ;
                num_bytes_to_tx_DUMMY3 := (num_bytes_to_tx_DUMMY3 -
                 pipe_array_byte_count(i)(4 downto 0)) ;
              else
                pipe_array_ack(i) <= "1" ;
                pipe_array_ack_num_bytes(i) <= num_bytes_to_tx_DUMMY3 ;
                num_bytes_to_tx_DUMMY3 := "00000" ;
              end if;
            end if;
          end if;
        end loop;
      end if;
    end if;
    in_hash_eof <= transport in_hash_eof_DUMMY2;
    num_bytes_to_tx <= num_bytes_to_tx_DUMMY3;
  end process ;

  process --:o1271
  (*)
    variable in_hash_data_DUMMY4 : std_logic_vector(127 downto 0) ;
    variable in_hash_byte_accumulator_DUMMY5 : std_logic_vector(4 downto 0) ;
  begin
    in_hash_data_DUMMY4 := in_hash_data;
    in_hash_byte_accumulator_DUMMY5 := in_hash_byte_accumulator;
    in_hash_data_DUMMY4 :=
     "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
     ;
    in_hash_byte_accumulator_DUMMY5 := "00000" ;
    for i in 0 to 1 loop --:o1276
      if (pipe_array_ack(i) /= "0") then
        in_hash_data_DUMMY4 := (in_hash_data_DUMMY4 or shr(get_msb_bytes
        (pipe_array_data(i),pipe_array_ack_num_bytes(i)),(ext(ext
        (in_hash_byte_accumulator_DUMMY5,32) * std_logic_vector'
        ("00000000000000000000000000001000"),32)))) ;
        in_hash_byte_accumulator_DUMMY5 := (in_hash_byte_accumulator_DUMMY5 +
         pipe_array_ack_num_bytes(i)) ;
      end if;
    end loop;
    in_hash_data <= transport in_hash_data_DUMMY4;
    in_hash_byte_accumulator <= in_hash_byte_accumulator_DUMMY5;
  end process ;
end module;
