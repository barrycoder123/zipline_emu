architecture module of cr_kme_core_glue is
  type DUMMY3 is array(integer range <>) of std_logic_vector(63 downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[0]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[1]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[2]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[3]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[4]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[5]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[6]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[7]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[8]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[9]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[10]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[11]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[12]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[13]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[14]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[15]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[16]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[17]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[18]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[19]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[20]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[21]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[22]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[23]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[24]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[25]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[26]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[27]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[28]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[29]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[30]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "num[31]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 num 0 31 "
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component cr_sa_counter
    generic (
      type DUMMY0 is array(integer range <>) of std_logic_vector(63 downto 0)
    ) ;
    port (
      sa_count : out std_logic_vector(49 downto 0) ;
      sa_snapshot : out std_logic_vector(49 downto 0) ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      sa_event_sel : in std_logic_vector(9 downto 0) := (others => 'X') ;
      sa_events : in DUMMY0(15 downto 0) := (others => (others => 'X')) ;
      sa_clear : in std_logic := 'X' ;
    sa_snap : in std_logic := 'X' ) ;
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
  type $_label_t is
  record
    guid_size : std_logic_vector(0 downto 0) ;
    label_size : std_logic_vector(5 downto 0) ;
    DUMMY5 : std_logic_vector(255 downto 0) ;
    delimiter_valid : std_logic_vector(0 downto 0) ;
    delimiter : std_logic_vector(7 downto 0) ;
  end record ;
  subtype label_t is $_label_t std_logic_vector(271 downto 0) ;
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
  signal DUMMY6 : std_logic ;
  signal DUMMY7 : std_logic ;
  signal DUMMY8 : std_logic ;
  signal DUMMY9 : std_logic ;
  signal DUMMY10 : std_logic_vector(0 to 31) ;
  signal k : integer ;
  signal sa_events : DUMMY3(15 downto 0) ;
  signal num_key_tlv_in_flight : std_logic_vector(31 downto 0) ;
  signal sa_snap : std_logic ;
  signal sa_clear : std_logic ;
  signal regs_sa_snap_r : std_logic ;
  signal regs_sa_clear_live_r : std_logic ;
  signal DUMMY11 : std_logic_vector(7 downto 0) ;
  signal DUMMY12 : std_logic_vector(0 downto 0) ;
  signal DUMMY13 : std_logic_vector(0 downto 0) ;
  signal DUMMY14 : std_logic_vector(0 downto 0) ;
  signal DUMMY15 : std_logic_vector(0 downto 0) ;
  signal DUMMY16 : std_logic_vector(0 downto 0) ;
  signal DUMMY17 : std_logic_vector(0 downto 0) ;
  signal DUMMY18 : std_logic_vector(0 downto 0) ;
  signal DUMMY19 : std_logic_vector(0 downto 0) ;
  signal DUMMY20 : std_logic_vector(0 downto 0) ;
  signal DUMMY21 : std_logic_vector(0 downto 0) ;
  signal DUMMY22 : std_logic_vector(0 downto 0) ;
  signal DUMMY23 : std_logic_vector(0 downto 0) ;
  signal DUMMY24 : std_logic_vector(0 downto 0) ;
  signal DUMMY25 : std_logic_vector(0 downto 0) ;
  signal DUMMY26 : std_logic_vector(0 downto 0) ;
  signal DUMMY27 : std_logic_vector(0 downto 0) ;
  signal DUMMY28 : std_logic_vector(0 downto 0) ;
  signal DUMMY29 : std_logic_vector(0 downto 0) ;
  signal DUMMY30 : std_logic_vector(0 downto 0) ;

begin
  set_gcm_tag_fail_int <= ((cceip_encrypt_gcm_tag_fail_int or
   cceip_validate_gcm_tag_fail_int) or cddip_decrypt_gcm_tag_fail_int) ;
  _zz_strnp_160 : ixc_assign
    generic map(W => 8)
    port map (
       set_rsm_is_backpressuring
      ,DUMMY11
    ) ;
  DUMMY11 <= std_logic_vector'(cddip_ob_full(3 downto 0) & cceip_ob_full(3
   downto 0)) ;
  kme_ib_out(0) <= '0' when (tready_override(8))='1' else core_kme_ib_out(0) ;
  _zz_strnp_161 : ixc_assign
    generic map(W => 20)
    port map (
       idle_components(12+19 downto 12)
      ,num_key_tlv_in_flight(19 downto 0)
    ) ;
  _zz_strnp_162 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY12
      ,DUMMY13
    ) ;
  idle_components(11) <= it_conv_std_logic(DUMMY12) ;
  DUMMY13 <= ext(cddip_key_tlv_rsm_idle(0),1) ;
  _zz_strnp_163 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY14
      ,DUMMY15
    ) ;
  idle_components(10) <= it_conv_std_logic(DUMMY14) ;
  DUMMY15 <= ext(cddip_key_tlv_rsm_idle(1),1) ;
  _zz_strnp_164 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY16
      ,DUMMY17
    ) ;
  idle_components(9) <= it_conv_std_logic(DUMMY16) ;
  DUMMY17 <= ext(cddip_key_tlv_rsm_idle(2),1) ;
  _zz_strnp_165 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY18
      ,DUMMY19
    ) ;
  idle_components(8) <= it_conv_std_logic(DUMMY18) ;
  DUMMY19 <= ext(cddip_key_tlv_rsm_idle(3),1) ;
  _zz_strnp_166 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY20
      ,DUMMY21
    ) ;
  idle_components(7) <= it_conv_std_logic(DUMMY20) ;
  DUMMY21 <= ext(cceip_key_tlv_rsm_idle(0),1) ;
  _zz_strnp_167 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY22
      ,DUMMY23
    ) ;
  idle_components(6) <= it_conv_std_logic(DUMMY22) ;
  DUMMY23 <= ext(cceip_key_tlv_rsm_idle(1),1) ;
  _zz_strnp_168 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY24
      ,DUMMY25
    ) ;
  idle_components(5) <= it_conv_std_logic(DUMMY24) ;
  DUMMY25 <= ext(cceip_key_tlv_rsm_idle(2),1) ;
  _zz_strnp_169 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY26
      ,DUMMY27
    ) ;
  idle_components(4) <= it_conv_std_logic(DUMMY26) ;
  DUMMY27 <= ext(cceip_key_tlv_rsm_idle(3),1) ;
  idle_components(3) <= boolean_to_std(num_key_tlv_in_flight = std_logic_vector'
  ("00000000000000000000000000000000")) ;
  _zz_strnp_170 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY28
      ,tlv_parser_idle
    ) ;
  idle_components(2) <= it_conv_std_logic(DUMMY28) ;
  _zz_strnp_171 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY29
      ,drng_idle
    ) ;
  idle_components(1) <= it_conv_std_logic(DUMMY29) ;
  _zz_strnp_172 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY30
      ,kme_slv_empty
    ) ;
  idle_components(0) <= it_conv_std_logic(DUMMY30) ;
  _zz_strnp_173 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY6
      ,disable_debug_cmd_q
    ) ;
  _zz_strnp_174 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY7
      ,set_txc_bp_int
    ) ;
  _zz_strnp_175 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY8
      ,kme_ib_out
    ) ;
  _zz_strnp_176 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY9
      ,kme_idle
    ) ;
  _zz_strnp_177 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY10
      ,idle_components
    ) ;

  process --:o1021
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      set_txc_bp_int <= '0' ;
      disable_debug_cmd_q <= '0' ;
    elsif (clk'event and clk = '1') then
      set_txc_bp_int <= not(kme_ib_out(0)) ;
      disable_debug_cmd_q <= disable_debug_cmd ;
    end if ;
  end process ;

  process --:o1035
  (*)
  begin
    for k in 0 to 15 loop --:o1038
      sa_events(k) <=
       "0000000000000000000000000000000000000000000000000000000000000000" ;
    end loop;
    sa_events(0)(0) <= stat_drbg_reseed ;
    sa_events(0)(1) <= stat_req_with_expired_seed ;
    sa_events(0)(2) <= stat_aux_key_type_0 ;
    sa_events(0)(3) <= stat_aux_key_type_1 ;
    sa_events(0)(4) <= stat_aux_key_type_2 ;
    sa_events(0)(5) <= stat_aux_key_type_3 ;
    sa_events(0)(6) <= stat_aux_key_type_4 ;
    sa_events(0)(7) <= stat_aux_key_type_5 ;
    sa_events(0)(8) <= stat_aux_key_type_6 ;
    sa_events(0)(9) <= stat_aux_key_type_7 ;
    sa_events(0)(10) <= stat_aux_key_type_8 ;
    sa_events(0)(11) <= stat_aux_key_type_9 ;
    sa_events(0)(12) <= stat_aux_key_type_10 ;
    sa_events(0)(13) <= stat_aux_key_type_11 ;
    sa_events(0)(14) <= stat_aux_key_type_12 ;
    sa_events(0)(15) <= stat_aux_key_type_13 ;
    sa_events(0)(16) <= stat_cceip0_stall_on_valid_key ;
    sa_events(0)(17) <= stat_cceip1_stall_on_valid_key ;
    sa_events(0)(18) <= stat_cceip2_stall_on_valid_key ;
    sa_events(0)(19) <= stat_cceip3_stall_on_valid_key ;
    sa_events(0)(20) <= stat_cddip0_stall_on_valid_key ;
    sa_events(0)(21) <= stat_cddip1_stall_on_valid_key ;
    sa_events(0)(22) <= stat_cddip2_stall_on_valid_key ;
    sa_events(0)(23) <= stat_cddip3_stall_on_valid_key ;
    sa_events(0)(24) <= stat_aux_cmd_with_vf_pf_fail ;
  end process ;

  process --:o1068
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      sa_snap <= '0' ;
      sa_clear <= '0' ;
      regs_sa_snap_r <= '0' ;
      regs_sa_clear_live_r <= '0' ;
    elsif (clk'event and clk = '1') then
      regs_sa_snap_r <= sa_global_ctrl(1) ;
      regs_sa_clear_live_r <= sa_global_ctrl(0) ;
      sa_snap <= (sa_global_ctrl(1) and not(regs_sa_snap_r)) ;
      sa_clear <= (sa_global_ctrl(0) and not(regs_sa_clear_live_r)) ;
    end if ;
  end process ;

  process --:o1086
  (*)
  begin
    for k in 0 to 31 loop --:o1089
      sa_count(k)(50+13 downto 50) <= "00000000000000" ;
      sa_snapshot(k)(50+13 downto 50) <= "00000000000000" ;
    end loop;
  end process ;

  process --:o1095
  (clk,rst_n)
    variable DUMMY31 : std_logic_vector(0 to 1) ;
  begin
    if (rst_n = '0') then
      num_key_tlv_in_flight <= "00000000000000000000000000000000" ;
    elsif (clk'event and clk = '1') then
      DUMMY31 := std_logic_vector'(tlv_parser_int_tlv_start_pulse & (or_reduce
      (cceip_key_tlv_rsm_end_pulse) or or_reduce(cddip_key_tlv_rsm_end_pulse)));

      case DUMMY31  is
        when  "00"  =>
          num_key_tlv_in_flight <= num_key_tlv_in_flight ;
        when  "01"  =>
          num_key_tlv_in_flight <= (num_key_tlv_in_flight - std_logic_vector'
          ("00000000000000000000000000000001")) ;
        when  "10"  =>
          num_key_tlv_in_flight <= (num_key_tlv_in_flight + std_logic_vector'
          ("00000000000000000000000000000001")) ;
        when  "11"  =>
          num_key_tlv_in_flight <= num_key_tlv_in_flight ;
        when others => null ;
      end case;
    end if ;
  end process ;

  process --:o1116
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      kme_idle <= '0' ;
    elsif (clk'event and clk = '1') then
      kme_idle <= (((((kme_slv_empty and drng_idle) and tlv_parser_idle) and
       boolean_to_std(num_key_tlv_in_flight = std_logic_vector'
      ("00000000000000000000000000000000"))) and and_reduce
      (cceip_key_tlv_rsm_idle)) and and_reduce(cddip_key_tlv_rsm_idle)) ;
    end if ;
  end process ;
  Generate1 : if num_0_ : (TRUE) generate
    constant i : integer := 0 ;
    signal _zy_simnet_tvar_5 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_6 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_7 : std_logic_vector(0 to 9) ;
    signal DUMMY32 : std_logic ;
    signal DUMMY33 : std_logic ;
    signal DUMMY34 : std_logic_vector(49 downto 0) ;
    signal DUMMY35 : std_logic_vector(1 to 50) ;
    signal DUMMY36 : std_logic_vector(49 downto 0) ;
    signal DUMMY37 : std_logic_vector(1 to 50) ;
    signal DUMMY38 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_0 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY34
        ,_zy_simnet_tvar_5
      ) ;
    sa_count(0)(32+17 downto 32) <= DUMMY35(1 to 18);
    sa_count(0)(31 downto 0) <= DUMMY35(19 to 50);
    DUMMY35 <= ext(DUMMY34,50) ;
    _zz_strnp_1 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY36
        ,_zy_simnet_tvar_6
      ) ;
    sa_snapshot(0)(32+17 downto 32) <= DUMMY37(1 to 18);
    sa_snapshot(0)(31 downto 0) <= DUMMY37(19 to 50);
    DUMMY37 <= ext(DUMMY36,50) ;
    _zz_strnp_2 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_7
        ,DUMMY38
      ) ;
    DUMMY38 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(0)(4
     downto 0)) ;
    _zz_strnp_3 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY32
        ,sa_clear
      ) ;
    _zz_strnp_4 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY33
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_5
        ,sa_snapshot => _zy_simnet_tvar_6
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_7
        ,sa_events => sa_events
        ,sa_clear => DUMMY32
        ,sa_snap => DUMMY33
      ) ;
  end generate ;
  Generate2 : if num_1_ : (TRUE) generate
    constant i : integer := 1 ;
    signal _zy_simnet_tvar_10 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_11 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_12 : std_logic_vector(0 to 9) ;
    signal DUMMY39 : std_logic ;
    signal DUMMY40 : std_logic ;
    signal DUMMY41 : std_logic_vector(49 downto 0) ;
    signal DUMMY42 : std_logic_vector(1 to 50) ;
    signal DUMMY43 : std_logic_vector(49 downto 0) ;
    signal DUMMY44 : std_logic_vector(1 to 50) ;
    signal DUMMY45 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_5 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY41
        ,_zy_simnet_tvar_10
      ) ;
    sa_count(1)(32+17 downto 32) <= DUMMY42(1 to 18);
    sa_count(1)(31 downto 0) <= DUMMY42(19 to 50);
    DUMMY42 <= ext(DUMMY41,50) ;
    _zz_strnp_6 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY43
        ,_zy_simnet_tvar_11
      ) ;
    sa_snapshot(1)(32+17 downto 32) <= DUMMY44(1 to 18);
    sa_snapshot(1)(31 downto 0) <= DUMMY44(19 to 50);
    DUMMY44 <= ext(DUMMY43,50) ;
    _zz_strnp_7 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_12
        ,DUMMY45
      ) ;
    DUMMY45 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(1)(4
     downto 0)) ;
    _zz_strnp_8 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY39
        ,sa_clear
      ) ;
    _zz_strnp_9 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY40
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_10
        ,sa_snapshot => _zy_simnet_tvar_11
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_12
        ,sa_events => sa_events
        ,sa_clear => DUMMY39
        ,sa_snap => DUMMY40
      ) ;
  end generate ;
  Generate3 : if num_2_ : (TRUE) generate
    constant i : integer := 2 ;
    signal _zy_simnet_tvar_15 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_16 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_17 : std_logic_vector(0 to 9) ;
    signal DUMMY46 : std_logic ;
    signal DUMMY47 : std_logic ;
    signal DUMMY48 : std_logic_vector(49 downto 0) ;
    signal DUMMY49 : std_logic_vector(1 to 50) ;
    signal DUMMY50 : std_logic_vector(49 downto 0) ;
    signal DUMMY51 : std_logic_vector(1 to 50) ;
    signal DUMMY52 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_10 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY48
        ,_zy_simnet_tvar_15
      ) ;
    sa_count(2)(32+17 downto 32) <= DUMMY49(1 to 18);
    sa_count(2)(31 downto 0) <= DUMMY49(19 to 50);
    DUMMY49 <= ext(DUMMY48,50) ;
    _zz_strnp_11 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY50
        ,_zy_simnet_tvar_16
      ) ;
    sa_snapshot(2)(32+17 downto 32) <= DUMMY51(1 to 18);
    sa_snapshot(2)(31 downto 0) <= DUMMY51(19 to 50);
    DUMMY51 <= ext(DUMMY50,50) ;
    _zz_strnp_12 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_17
        ,DUMMY52
      ) ;
    DUMMY52 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(2)(4
     downto 0)) ;
    _zz_strnp_13 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY46
        ,sa_clear
      ) ;
    _zz_strnp_14 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY47
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_15
        ,sa_snapshot => _zy_simnet_tvar_16
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_17
        ,sa_events => sa_events
        ,sa_clear => DUMMY46
        ,sa_snap => DUMMY47
      ) ;
  end generate ;
  Generate4 : if num_3_ : (TRUE) generate
    constant i : integer := 3 ;
    signal _zy_simnet_tvar_20 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_21 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_22 : std_logic_vector(0 to 9) ;
    signal DUMMY53 : std_logic ;
    signal DUMMY54 : std_logic ;
    signal DUMMY55 : std_logic_vector(49 downto 0) ;
    signal DUMMY56 : std_logic_vector(1 to 50) ;
    signal DUMMY57 : std_logic_vector(49 downto 0) ;
    signal DUMMY58 : std_logic_vector(1 to 50) ;
    signal DUMMY59 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_15 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY55
        ,_zy_simnet_tvar_20
      ) ;
    sa_count(3)(32+17 downto 32) <= DUMMY56(1 to 18);
    sa_count(3)(31 downto 0) <= DUMMY56(19 to 50);
    DUMMY56 <= ext(DUMMY55,50) ;
    _zz_strnp_16 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY57
        ,_zy_simnet_tvar_21
      ) ;
    sa_snapshot(3)(32+17 downto 32) <= DUMMY58(1 to 18);
    sa_snapshot(3)(31 downto 0) <= DUMMY58(19 to 50);
    DUMMY58 <= ext(DUMMY57,50) ;
    _zz_strnp_17 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_22
        ,DUMMY59
      ) ;
    DUMMY59 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(3)(4
     downto 0)) ;
    _zz_strnp_18 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY53
        ,sa_clear
      ) ;
    _zz_strnp_19 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY54
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_20
        ,sa_snapshot => _zy_simnet_tvar_21
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_22
        ,sa_events => sa_events
        ,sa_clear => DUMMY53
        ,sa_snap => DUMMY54
      ) ;
  end generate ;
  Generate5 : if num_4_ : (TRUE) generate
    constant i : integer := 4 ;
    signal _zy_simnet_tvar_25 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_26 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_27 : std_logic_vector(0 to 9) ;
    signal DUMMY60 : std_logic ;
    signal DUMMY61 : std_logic ;
    signal DUMMY62 : std_logic_vector(49 downto 0) ;
    signal DUMMY63 : std_logic_vector(1 to 50) ;
    signal DUMMY64 : std_logic_vector(49 downto 0) ;
    signal DUMMY65 : std_logic_vector(1 to 50) ;
    signal DUMMY66 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_20 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY62
        ,_zy_simnet_tvar_25
      ) ;
    sa_count(4)(32+17 downto 32) <= DUMMY63(1 to 18);
    sa_count(4)(31 downto 0) <= DUMMY63(19 to 50);
    DUMMY63 <= ext(DUMMY62,50) ;
    _zz_strnp_21 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY64
        ,_zy_simnet_tvar_26
      ) ;
    sa_snapshot(4)(32+17 downto 32) <= DUMMY65(1 to 18);
    sa_snapshot(4)(31 downto 0) <= DUMMY65(19 to 50);
    DUMMY65 <= ext(DUMMY64,50) ;
    _zz_strnp_22 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_27
        ,DUMMY66
      ) ;
    DUMMY66 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(4)(4
     downto 0)) ;
    _zz_strnp_23 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY60
        ,sa_clear
      ) ;
    _zz_strnp_24 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY61
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_25
        ,sa_snapshot => _zy_simnet_tvar_26
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_27
        ,sa_events => sa_events
        ,sa_clear => DUMMY60
        ,sa_snap => DUMMY61
      ) ;
  end generate ;
  Generate6 : if num_5_ : (TRUE) generate
    constant i : integer := 5 ;
    signal _zy_simnet_tvar_30 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_31 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_32 : std_logic_vector(0 to 9) ;
    signal DUMMY67 : std_logic ;
    signal DUMMY68 : std_logic ;
    signal DUMMY69 : std_logic_vector(49 downto 0) ;
    signal DUMMY70 : std_logic_vector(1 to 50) ;
    signal DUMMY71 : std_logic_vector(49 downto 0) ;
    signal DUMMY72 : std_logic_vector(1 to 50) ;
    signal DUMMY73 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_25 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY69
        ,_zy_simnet_tvar_30
      ) ;
    sa_count(5)(32+17 downto 32) <= DUMMY70(1 to 18);
    sa_count(5)(31 downto 0) <= DUMMY70(19 to 50);
    DUMMY70 <= ext(DUMMY69,50) ;
    _zz_strnp_26 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY71
        ,_zy_simnet_tvar_31
      ) ;
    sa_snapshot(5)(32+17 downto 32) <= DUMMY72(1 to 18);
    sa_snapshot(5)(31 downto 0) <= DUMMY72(19 to 50);
    DUMMY72 <= ext(DUMMY71,50) ;
    _zz_strnp_27 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_32
        ,DUMMY73
      ) ;
    DUMMY73 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(5)(4
     downto 0)) ;
    _zz_strnp_28 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY67
        ,sa_clear
      ) ;
    _zz_strnp_29 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY68
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_30
        ,sa_snapshot => _zy_simnet_tvar_31
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_32
        ,sa_events => sa_events
        ,sa_clear => DUMMY67
        ,sa_snap => DUMMY68
      ) ;
  end generate ;
  Generate7 : if num_6_ : (TRUE) generate
    constant i : integer := 6 ;
    signal _zy_simnet_tvar_35 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_36 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_37 : std_logic_vector(0 to 9) ;
    signal DUMMY74 : std_logic ;
    signal DUMMY75 : std_logic ;
    signal DUMMY76 : std_logic_vector(49 downto 0) ;
    signal DUMMY77 : std_logic_vector(1 to 50) ;
    signal DUMMY78 : std_logic_vector(49 downto 0) ;
    signal DUMMY79 : std_logic_vector(1 to 50) ;
    signal DUMMY80 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_30 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY76
        ,_zy_simnet_tvar_35
      ) ;
    sa_count(6)(32+17 downto 32) <= DUMMY77(1 to 18);
    sa_count(6)(31 downto 0) <= DUMMY77(19 to 50);
    DUMMY77 <= ext(DUMMY76,50) ;
    _zz_strnp_31 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY78
        ,_zy_simnet_tvar_36
      ) ;
    sa_snapshot(6)(32+17 downto 32) <= DUMMY79(1 to 18);
    sa_snapshot(6)(31 downto 0) <= DUMMY79(19 to 50);
    DUMMY79 <= ext(DUMMY78,50) ;
    _zz_strnp_32 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_37
        ,DUMMY80
      ) ;
    DUMMY80 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(6)(4
     downto 0)) ;
    _zz_strnp_33 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY74
        ,sa_clear
      ) ;
    _zz_strnp_34 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY75
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_35
        ,sa_snapshot => _zy_simnet_tvar_36
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_37
        ,sa_events => sa_events
        ,sa_clear => DUMMY74
        ,sa_snap => DUMMY75
      ) ;
  end generate ;
  Generate8 : if num_7_ : (TRUE) generate
    constant i : integer := 7 ;
    signal _zy_simnet_tvar_40 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_41 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_42 : std_logic_vector(0 to 9) ;
    signal DUMMY81 : std_logic ;
    signal DUMMY82 : std_logic ;
    signal DUMMY83 : std_logic_vector(49 downto 0) ;
    signal DUMMY84 : std_logic_vector(1 to 50) ;
    signal DUMMY85 : std_logic_vector(49 downto 0) ;
    signal DUMMY86 : std_logic_vector(1 to 50) ;
    signal DUMMY87 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_35 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY83
        ,_zy_simnet_tvar_40
      ) ;
    sa_count(7)(32+17 downto 32) <= DUMMY84(1 to 18);
    sa_count(7)(31 downto 0) <= DUMMY84(19 to 50);
    DUMMY84 <= ext(DUMMY83,50) ;
    _zz_strnp_36 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY85
        ,_zy_simnet_tvar_41
      ) ;
    sa_snapshot(7)(32+17 downto 32) <= DUMMY86(1 to 18);
    sa_snapshot(7)(31 downto 0) <= DUMMY86(19 to 50);
    DUMMY86 <= ext(DUMMY85,50) ;
    _zz_strnp_37 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_42
        ,DUMMY87
      ) ;
    DUMMY87 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(7)(4
     downto 0)) ;
    _zz_strnp_38 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY81
        ,sa_clear
      ) ;
    _zz_strnp_39 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY82
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_40
        ,sa_snapshot => _zy_simnet_tvar_41
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_42
        ,sa_events => sa_events
        ,sa_clear => DUMMY81
        ,sa_snap => DUMMY82
      ) ;
  end generate ;
  Generate9 : if num_8_ : (TRUE) generate
    constant i : integer := 8 ;
    signal _zy_simnet_tvar_45 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_46 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_47 : std_logic_vector(0 to 9) ;
    signal DUMMY88 : std_logic ;
    signal DUMMY89 : std_logic ;
    signal DUMMY90 : std_logic_vector(49 downto 0) ;
    signal DUMMY91 : std_logic_vector(1 to 50) ;
    signal DUMMY92 : std_logic_vector(49 downto 0) ;
    signal DUMMY93 : std_logic_vector(1 to 50) ;
    signal DUMMY94 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_40 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY90
        ,_zy_simnet_tvar_45
      ) ;
    sa_count(8)(32+17 downto 32) <= DUMMY91(1 to 18);
    sa_count(8)(31 downto 0) <= DUMMY91(19 to 50);
    DUMMY91 <= ext(DUMMY90,50) ;
    _zz_strnp_41 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY92
        ,_zy_simnet_tvar_46
      ) ;
    sa_snapshot(8)(32+17 downto 32) <= DUMMY93(1 to 18);
    sa_snapshot(8)(31 downto 0) <= DUMMY93(19 to 50);
    DUMMY93 <= ext(DUMMY92,50) ;
    _zz_strnp_42 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_47
        ,DUMMY94
      ) ;
    DUMMY94 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(8)(4
     downto 0)) ;
    _zz_strnp_43 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY88
        ,sa_clear
      ) ;
    _zz_strnp_44 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY89
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_45
        ,sa_snapshot => _zy_simnet_tvar_46
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_47
        ,sa_events => sa_events
        ,sa_clear => DUMMY88
        ,sa_snap => DUMMY89
      ) ;
  end generate ;
  Generate10 : if num_9_ : (TRUE) generate
    constant i : integer := 9 ;
    signal _zy_simnet_tvar_50 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_51 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_52 : std_logic_vector(0 to 9) ;
    signal DUMMY95 : std_logic ;
    signal DUMMY96 : std_logic ;
    signal DUMMY97 : std_logic_vector(49 downto 0) ;
    signal DUMMY98 : std_logic_vector(1 to 50) ;
    signal DUMMY99 : std_logic_vector(49 downto 0) ;
    signal DUMMY100 : std_logic_vector(1 to 50) ;
    signal DUMMY101 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_45 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY97
        ,_zy_simnet_tvar_50
      ) ;
    sa_count(9)(32+17 downto 32) <= DUMMY98(1 to 18);
    sa_count(9)(31 downto 0) <= DUMMY98(19 to 50);
    DUMMY98 <= ext(DUMMY97,50) ;
    _zz_strnp_46 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY99
        ,_zy_simnet_tvar_51
      ) ;
    sa_snapshot(9)(32+17 downto 32) <= DUMMY100(1 to 18);
    sa_snapshot(9)(31 downto 0) <= DUMMY100(19 to 50);
    DUMMY100 <= ext(DUMMY99,50) ;
    _zz_strnp_47 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_52
        ,DUMMY101
      ) ;
    DUMMY101 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(9)(4
     downto 0)) ;
    _zz_strnp_48 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY95
        ,sa_clear
      ) ;
    _zz_strnp_49 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY96
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_50
        ,sa_snapshot => _zy_simnet_tvar_51
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_52
        ,sa_events => sa_events
        ,sa_clear => DUMMY95
        ,sa_snap => DUMMY96
      ) ;
  end generate ;
  Generate11 : if num_10_ : (TRUE) generate
    constant i : integer := 10 ;
    signal _zy_simnet_tvar_55 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_56 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_57 : std_logic_vector(0 to 9) ;
    signal DUMMY102 : std_logic ;
    signal DUMMY103 : std_logic ;
    signal DUMMY104 : std_logic_vector(49 downto 0) ;
    signal DUMMY105 : std_logic_vector(1 to 50) ;
    signal DUMMY106 : std_logic_vector(49 downto 0) ;
    signal DUMMY107 : std_logic_vector(1 to 50) ;
    signal DUMMY108 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_50 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY104
        ,_zy_simnet_tvar_55
      ) ;
    sa_count(10)(32+17 downto 32) <= DUMMY105(1 to 18);
    sa_count(10)(31 downto 0) <= DUMMY105(19 to 50);
    DUMMY105 <= ext(DUMMY104,50) ;
    _zz_strnp_51 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY106
        ,_zy_simnet_tvar_56
      ) ;
    sa_snapshot(10)(32+17 downto 32) <= DUMMY107(1 to 18);
    sa_snapshot(10)(31 downto 0) <= DUMMY107(19 to 50);
    DUMMY107 <= ext(DUMMY106,50) ;
    _zz_strnp_52 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_57
        ,DUMMY108
      ) ;
    DUMMY108 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(10)(4
     downto 0)) ;
    _zz_strnp_53 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY102
        ,sa_clear
      ) ;
    _zz_strnp_54 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY103
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_55
        ,sa_snapshot => _zy_simnet_tvar_56
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_57
        ,sa_events => sa_events
        ,sa_clear => DUMMY102
        ,sa_snap => DUMMY103
      ) ;
  end generate ;
  Generate12 : if num_11_ : (TRUE) generate
    constant i : integer := 11 ;
    signal _zy_simnet_tvar_60 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_61 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_62 : std_logic_vector(0 to 9) ;
    signal DUMMY109 : std_logic ;
    signal DUMMY110 : std_logic ;
    signal DUMMY111 : std_logic_vector(49 downto 0) ;
    signal DUMMY112 : std_logic_vector(1 to 50) ;
    signal DUMMY113 : std_logic_vector(49 downto 0) ;
    signal DUMMY114 : std_logic_vector(1 to 50) ;
    signal DUMMY115 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_55 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY111
        ,_zy_simnet_tvar_60
      ) ;
    sa_count(11)(32+17 downto 32) <= DUMMY112(1 to 18);
    sa_count(11)(31 downto 0) <= DUMMY112(19 to 50);
    DUMMY112 <= ext(DUMMY111,50) ;
    _zz_strnp_56 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY113
        ,_zy_simnet_tvar_61
      ) ;
    sa_snapshot(11)(32+17 downto 32) <= DUMMY114(1 to 18);
    sa_snapshot(11)(31 downto 0) <= DUMMY114(19 to 50);
    DUMMY114 <= ext(DUMMY113,50) ;
    _zz_strnp_57 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_62
        ,DUMMY115
      ) ;
    DUMMY115 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(11)(4
     downto 0)) ;
    _zz_strnp_58 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY109
        ,sa_clear
      ) ;
    _zz_strnp_59 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY110
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_60
        ,sa_snapshot => _zy_simnet_tvar_61
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_62
        ,sa_events => sa_events
        ,sa_clear => DUMMY109
        ,sa_snap => DUMMY110
      ) ;
  end generate ;
  Generate13 : if num_12_ : (TRUE) generate
    constant i : integer := 12 ;
    signal _zy_simnet_tvar_65 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_66 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_67 : std_logic_vector(0 to 9) ;
    signal DUMMY116 : std_logic ;
    signal DUMMY117 : std_logic ;
    signal DUMMY118 : std_logic_vector(49 downto 0) ;
    signal DUMMY119 : std_logic_vector(1 to 50) ;
    signal DUMMY120 : std_logic_vector(49 downto 0) ;
    signal DUMMY121 : std_logic_vector(1 to 50) ;
    signal DUMMY122 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_60 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY118
        ,_zy_simnet_tvar_65
      ) ;
    sa_count(12)(32+17 downto 32) <= DUMMY119(1 to 18);
    sa_count(12)(31 downto 0) <= DUMMY119(19 to 50);
    DUMMY119 <= ext(DUMMY118,50) ;
    _zz_strnp_61 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY120
        ,_zy_simnet_tvar_66
      ) ;
    sa_snapshot(12)(32+17 downto 32) <= DUMMY121(1 to 18);
    sa_snapshot(12)(31 downto 0) <= DUMMY121(19 to 50);
    DUMMY121 <= ext(DUMMY120,50) ;
    _zz_strnp_62 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_67
        ,DUMMY122
      ) ;
    DUMMY122 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(12)(4
     downto 0)) ;
    _zz_strnp_63 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY116
        ,sa_clear
      ) ;
    _zz_strnp_64 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY117
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_65
        ,sa_snapshot => _zy_simnet_tvar_66
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_67
        ,sa_events => sa_events
        ,sa_clear => DUMMY116
        ,sa_snap => DUMMY117
      ) ;
  end generate ;
  Generate14 : if num_13_ : (TRUE) generate
    constant i : integer := 13 ;
    signal _zy_simnet_tvar_70 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_71 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_72 : std_logic_vector(0 to 9) ;
    signal DUMMY123 : std_logic ;
    signal DUMMY124 : std_logic ;
    signal DUMMY125 : std_logic_vector(49 downto 0) ;
    signal DUMMY126 : std_logic_vector(1 to 50) ;
    signal DUMMY127 : std_logic_vector(49 downto 0) ;
    signal DUMMY128 : std_logic_vector(1 to 50) ;
    signal DUMMY129 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_65 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY125
        ,_zy_simnet_tvar_70
      ) ;
    sa_count(13)(32+17 downto 32) <= DUMMY126(1 to 18);
    sa_count(13)(31 downto 0) <= DUMMY126(19 to 50);
    DUMMY126 <= ext(DUMMY125,50) ;
    _zz_strnp_66 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY127
        ,_zy_simnet_tvar_71
      ) ;
    sa_snapshot(13)(32+17 downto 32) <= DUMMY128(1 to 18);
    sa_snapshot(13)(31 downto 0) <= DUMMY128(19 to 50);
    DUMMY128 <= ext(DUMMY127,50) ;
    _zz_strnp_67 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_72
        ,DUMMY129
      ) ;
    DUMMY129 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(13)(4
     downto 0)) ;
    _zz_strnp_68 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY123
        ,sa_clear
      ) ;
    _zz_strnp_69 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY124
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_70
        ,sa_snapshot => _zy_simnet_tvar_71
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_72
        ,sa_events => sa_events
        ,sa_clear => DUMMY123
        ,sa_snap => DUMMY124
      ) ;
  end generate ;
  Generate15 : if num_14_ : (TRUE) generate
    constant i : integer := 14 ;
    signal _zy_simnet_tvar_75 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_76 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_77 : std_logic_vector(0 to 9) ;
    signal DUMMY130 : std_logic ;
    signal DUMMY131 : std_logic ;
    signal DUMMY132 : std_logic_vector(49 downto 0) ;
    signal DUMMY133 : std_logic_vector(1 to 50) ;
    signal DUMMY134 : std_logic_vector(49 downto 0) ;
    signal DUMMY135 : std_logic_vector(1 to 50) ;
    signal DUMMY136 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_70 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY132
        ,_zy_simnet_tvar_75
      ) ;
    sa_count(14)(32+17 downto 32) <= DUMMY133(1 to 18);
    sa_count(14)(31 downto 0) <= DUMMY133(19 to 50);
    DUMMY133 <= ext(DUMMY132,50) ;
    _zz_strnp_71 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY134
        ,_zy_simnet_tvar_76
      ) ;
    sa_snapshot(14)(32+17 downto 32) <= DUMMY135(1 to 18);
    sa_snapshot(14)(31 downto 0) <= DUMMY135(19 to 50);
    DUMMY135 <= ext(DUMMY134,50) ;
    _zz_strnp_72 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_77
        ,DUMMY136
      ) ;
    DUMMY136 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(14)(4
     downto 0)) ;
    _zz_strnp_73 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY130
        ,sa_clear
      ) ;
    _zz_strnp_74 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY131
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_75
        ,sa_snapshot => _zy_simnet_tvar_76
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_77
        ,sa_events => sa_events
        ,sa_clear => DUMMY130
        ,sa_snap => DUMMY131
      ) ;
  end generate ;
  Generate16 : if num_15_ : (TRUE) generate
    constant i : integer := 15 ;
    signal _zy_simnet_tvar_80 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_81 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_82 : std_logic_vector(0 to 9) ;
    signal DUMMY137 : std_logic ;
    signal DUMMY138 : std_logic ;
    signal DUMMY139 : std_logic_vector(49 downto 0) ;
    signal DUMMY140 : std_logic_vector(1 to 50) ;
    signal DUMMY141 : std_logic_vector(49 downto 0) ;
    signal DUMMY142 : std_logic_vector(1 to 50) ;
    signal DUMMY143 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_75 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY139
        ,_zy_simnet_tvar_80
      ) ;
    sa_count(15)(32+17 downto 32) <= DUMMY140(1 to 18);
    sa_count(15)(31 downto 0) <= DUMMY140(19 to 50);
    DUMMY140 <= ext(DUMMY139,50) ;
    _zz_strnp_76 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY141
        ,_zy_simnet_tvar_81
      ) ;
    sa_snapshot(15)(32+17 downto 32) <= DUMMY142(1 to 18);
    sa_snapshot(15)(31 downto 0) <= DUMMY142(19 to 50);
    DUMMY142 <= ext(DUMMY141,50) ;
    _zz_strnp_77 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_82
        ,DUMMY143
      ) ;
    DUMMY143 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(15)(4
     downto 0)) ;
    _zz_strnp_78 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY137
        ,sa_clear
      ) ;
    _zz_strnp_79 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY138
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_80
        ,sa_snapshot => _zy_simnet_tvar_81
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_82
        ,sa_events => sa_events
        ,sa_clear => DUMMY137
        ,sa_snap => DUMMY138
      ) ;
  end generate ;
  Generate17 : if num_16_ : (TRUE) generate
    constant i : integer := 16 ;
    signal _zy_simnet_tvar_85 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_86 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_87 : std_logic_vector(0 to 9) ;
    signal DUMMY144 : std_logic ;
    signal DUMMY145 : std_logic ;
    signal DUMMY146 : std_logic_vector(49 downto 0) ;
    signal DUMMY147 : std_logic_vector(1 to 50) ;
    signal DUMMY148 : std_logic_vector(49 downto 0) ;
    signal DUMMY149 : std_logic_vector(1 to 50) ;
    signal DUMMY150 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_80 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY146
        ,_zy_simnet_tvar_85
      ) ;
    sa_count(16)(32+17 downto 32) <= DUMMY147(1 to 18);
    sa_count(16)(31 downto 0) <= DUMMY147(19 to 50);
    DUMMY147 <= ext(DUMMY146,50) ;
    _zz_strnp_81 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY148
        ,_zy_simnet_tvar_86
      ) ;
    sa_snapshot(16)(32+17 downto 32) <= DUMMY149(1 to 18);
    sa_snapshot(16)(31 downto 0) <= DUMMY149(19 to 50);
    DUMMY149 <= ext(DUMMY148,50) ;
    _zz_strnp_82 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_87
        ,DUMMY150
      ) ;
    DUMMY150 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(16)(4
     downto 0)) ;
    _zz_strnp_83 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY144
        ,sa_clear
      ) ;
    _zz_strnp_84 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY145
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_85
        ,sa_snapshot => _zy_simnet_tvar_86
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_87
        ,sa_events => sa_events
        ,sa_clear => DUMMY144
        ,sa_snap => DUMMY145
      ) ;
  end generate ;
  Generate18 : if num_17_ : (TRUE) generate
    constant i : integer := 17 ;
    signal _zy_simnet_tvar_90 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_91 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_92 : std_logic_vector(0 to 9) ;
    signal DUMMY151 : std_logic ;
    signal DUMMY152 : std_logic ;
    signal DUMMY153 : std_logic_vector(49 downto 0) ;
    signal DUMMY154 : std_logic_vector(1 to 50) ;
    signal DUMMY155 : std_logic_vector(49 downto 0) ;
    signal DUMMY156 : std_logic_vector(1 to 50) ;
    signal DUMMY157 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_85 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY153
        ,_zy_simnet_tvar_90
      ) ;
    sa_count(17)(32+17 downto 32) <= DUMMY154(1 to 18);
    sa_count(17)(31 downto 0) <= DUMMY154(19 to 50);
    DUMMY154 <= ext(DUMMY153,50) ;
    _zz_strnp_86 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY155
        ,_zy_simnet_tvar_91
      ) ;
    sa_snapshot(17)(32+17 downto 32) <= DUMMY156(1 to 18);
    sa_snapshot(17)(31 downto 0) <= DUMMY156(19 to 50);
    DUMMY156 <= ext(DUMMY155,50) ;
    _zz_strnp_87 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_92
        ,DUMMY157
      ) ;
    DUMMY157 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(17)(4
     downto 0)) ;
    _zz_strnp_88 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY151
        ,sa_clear
      ) ;
    _zz_strnp_89 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY152
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_90
        ,sa_snapshot => _zy_simnet_tvar_91
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_92
        ,sa_events => sa_events
        ,sa_clear => DUMMY151
        ,sa_snap => DUMMY152
      ) ;
  end generate ;
  Generate19 : if num_18_ : (TRUE) generate
    constant i : integer := 18 ;
    signal _zy_simnet_tvar_95 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_96 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_97 : std_logic_vector(0 to 9) ;
    signal DUMMY158 : std_logic ;
    signal DUMMY159 : std_logic ;
    signal DUMMY160 : std_logic_vector(49 downto 0) ;
    signal DUMMY161 : std_logic_vector(1 to 50) ;
    signal DUMMY162 : std_logic_vector(49 downto 0) ;
    signal DUMMY163 : std_logic_vector(1 to 50) ;
    signal DUMMY164 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_90 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY160
        ,_zy_simnet_tvar_95
      ) ;
    sa_count(18)(32+17 downto 32) <= DUMMY161(1 to 18);
    sa_count(18)(31 downto 0) <= DUMMY161(19 to 50);
    DUMMY161 <= ext(DUMMY160,50) ;
    _zz_strnp_91 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY162
        ,_zy_simnet_tvar_96
      ) ;
    sa_snapshot(18)(32+17 downto 32) <= DUMMY163(1 to 18);
    sa_snapshot(18)(31 downto 0) <= DUMMY163(19 to 50);
    DUMMY163 <= ext(DUMMY162,50) ;
    _zz_strnp_92 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_97
        ,DUMMY164
      ) ;
    DUMMY164 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(18)(4
     downto 0)) ;
    _zz_strnp_93 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY158
        ,sa_clear
      ) ;
    _zz_strnp_94 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY159
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_95
        ,sa_snapshot => _zy_simnet_tvar_96
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_97
        ,sa_events => sa_events
        ,sa_clear => DUMMY158
        ,sa_snap => DUMMY159
      ) ;
  end generate ;
  Generate20 : if num_19_ : (TRUE) generate
    constant i : integer := 19 ;
    signal _zy_simnet_tvar_100 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_101 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_102 : std_logic_vector(0 to 9) ;
    signal DUMMY165 : std_logic ;
    signal DUMMY166 : std_logic ;
    signal DUMMY167 : std_logic_vector(49 downto 0) ;
    signal DUMMY168 : std_logic_vector(1 to 50) ;
    signal DUMMY169 : std_logic_vector(49 downto 0) ;
    signal DUMMY170 : std_logic_vector(1 to 50) ;
    signal DUMMY171 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_95 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY167
        ,_zy_simnet_tvar_100
      ) ;
    sa_count(19)(32+17 downto 32) <= DUMMY168(1 to 18);
    sa_count(19)(31 downto 0) <= DUMMY168(19 to 50);
    DUMMY168 <= ext(DUMMY167,50) ;
    _zz_strnp_96 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY169
        ,_zy_simnet_tvar_101
      ) ;
    sa_snapshot(19)(32+17 downto 32) <= DUMMY170(1 to 18);
    sa_snapshot(19)(31 downto 0) <= DUMMY170(19 to 50);
    DUMMY170 <= ext(DUMMY169,50) ;
    _zz_strnp_97 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_102
        ,DUMMY171
      ) ;
    DUMMY171 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(19)(4
     downto 0)) ;
    _zz_strnp_98 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY165
        ,sa_clear
      ) ;
    _zz_strnp_99 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY166
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_100
        ,sa_snapshot => _zy_simnet_tvar_101
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_102
        ,sa_events => sa_events
        ,sa_clear => DUMMY165
        ,sa_snap => DUMMY166
      ) ;
  end generate ;
  Generate21 : if num_20_ : (TRUE) generate
    constant i : integer := 20 ;
    signal _zy_simnet_tvar_105 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_106 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_107 : std_logic_vector(0 to 9) ;
    signal DUMMY172 : std_logic ;
    signal DUMMY173 : std_logic ;
    signal DUMMY174 : std_logic_vector(49 downto 0) ;
    signal DUMMY175 : std_logic_vector(1 to 50) ;
    signal DUMMY176 : std_logic_vector(49 downto 0) ;
    signal DUMMY177 : std_logic_vector(1 to 50) ;
    signal DUMMY178 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_100 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY174
        ,_zy_simnet_tvar_105
      ) ;
    sa_count(20)(32+17 downto 32) <= DUMMY175(1 to 18);
    sa_count(20)(31 downto 0) <= DUMMY175(19 to 50);
    DUMMY175 <= ext(DUMMY174,50) ;
    _zz_strnp_101 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY176
        ,_zy_simnet_tvar_106
      ) ;
    sa_snapshot(20)(32+17 downto 32) <= DUMMY177(1 to 18);
    sa_snapshot(20)(31 downto 0) <= DUMMY177(19 to 50);
    DUMMY177 <= ext(DUMMY176,50) ;
    _zz_strnp_102 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_107
        ,DUMMY178
      ) ;
    DUMMY178 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(20)(4
     downto 0)) ;
    _zz_strnp_103 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY172
        ,sa_clear
      ) ;
    _zz_strnp_104 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY173
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_105
        ,sa_snapshot => _zy_simnet_tvar_106
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_107
        ,sa_events => sa_events
        ,sa_clear => DUMMY172
        ,sa_snap => DUMMY173
      ) ;
  end generate ;
  Generate22 : if num_21_ : (TRUE) generate
    constant i : integer := 21 ;
    signal _zy_simnet_tvar_110 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_111 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_112 : std_logic_vector(0 to 9) ;
    signal DUMMY179 : std_logic ;
    signal DUMMY180 : std_logic ;
    signal DUMMY181 : std_logic_vector(49 downto 0) ;
    signal DUMMY182 : std_logic_vector(1 to 50) ;
    signal DUMMY183 : std_logic_vector(49 downto 0) ;
    signal DUMMY184 : std_logic_vector(1 to 50) ;
    signal DUMMY185 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_105 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY181
        ,_zy_simnet_tvar_110
      ) ;
    sa_count(21)(32+17 downto 32) <= DUMMY182(1 to 18);
    sa_count(21)(31 downto 0) <= DUMMY182(19 to 50);
    DUMMY182 <= ext(DUMMY181,50) ;
    _zz_strnp_106 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY183
        ,_zy_simnet_tvar_111
      ) ;
    sa_snapshot(21)(32+17 downto 32) <= DUMMY184(1 to 18);
    sa_snapshot(21)(31 downto 0) <= DUMMY184(19 to 50);
    DUMMY184 <= ext(DUMMY183,50) ;
    _zz_strnp_107 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_112
        ,DUMMY185
      ) ;
    DUMMY185 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(21)(4
     downto 0)) ;
    _zz_strnp_108 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY179
        ,sa_clear
      ) ;
    _zz_strnp_109 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY180
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_110
        ,sa_snapshot => _zy_simnet_tvar_111
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_112
        ,sa_events => sa_events
        ,sa_clear => DUMMY179
        ,sa_snap => DUMMY180
      ) ;
  end generate ;
  Generate23 : if num_22_ : (TRUE) generate
    constant i : integer := 22 ;
    signal _zy_simnet_tvar_115 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_116 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_117 : std_logic_vector(0 to 9) ;
    signal DUMMY186 : std_logic ;
    signal DUMMY187 : std_logic ;
    signal DUMMY188 : std_logic_vector(49 downto 0) ;
    signal DUMMY189 : std_logic_vector(1 to 50) ;
    signal DUMMY190 : std_logic_vector(49 downto 0) ;
    signal DUMMY191 : std_logic_vector(1 to 50) ;
    signal DUMMY192 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_110 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY188
        ,_zy_simnet_tvar_115
      ) ;
    sa_count(22)(32+17 downto 32) <= DUMMY189(1 to 18);
    sa_count(22)(31 downto 0) <= DUMMY189(19 to 50);
    DUMMY189 <= ext(DUMMY188,50) ;
    _zz_strnp_111 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY190
        ,_zy_simnet_tvar_116
      ) ;
    sa_snapshot(22)(32+17 downto 32) <= DUMMY191(1 to 18);
    sa_snapshot(22)(31 downto 0) <= DUMMY191(19 to 50);
    DUMMY191 <= ext(DUMMY190,50) ;
    _zz_strnp_112 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_117
        ,DUMMY192
      ) ;
    DUMMY192 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(22)(4
     downto 0)) ;
    _zz_strnp_113 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY186
        ,sa_clear
      ) ;
    _zz_strnp_114 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY187
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_115
        ,sa_snapshot => _zy_simnet_tvar_116
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_117
        ,sa_events => sa_events
        ,sa_clear => DUMMY186
        ,sa_snap => DUMMY187
      ) ;
  end generate ;
  Generate24 : if num_23_ : (TRUE) generate
    constant i : integer := 23 ;
    signal _zy_simnet_tvar_120 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_121 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_122 : std_logic_vector(0 to 9) ;
    signal DUMMY193 : std_logic ;
    signal DUMMY194 : std_logic ;
    signal DUMMY195 : std_logic_vector(49 downto 0) ;
    signal DUMMY196 : std_logic_vector(1 to 50) ;
    signal DUMMY197 : std_logic_vector(49 downto 0) ;
    signal DUMMY198 : std_logic_vector(1 to 50) ;
    signal DUMMY199 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_115 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY195
        ,_zy_simnet_tvar_120
      ) ;
    sa_count(23)(32+17 downto 32) <= DUMMY196(1 to 18);
    sa_count(23)(31 downto 0) <= DUMMY196(19 to 50);
    DUMMY196 <= ext(DUMMY195,50) ;
    _zz_strnp_116 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY197
        ,_zy_simnet_tvar_121
      ) ;
    sa_snapshot(23)(32+17 downto 32) <= DUMMY198(1 to 18);
    sa_snapshot(23)(31 downto 0) <= DUMMY198(19 to 50);
    DUMMY198 <= ext(DUMMY197,50) ;
    _zz_strnp_117 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_122
        ,DUMMY199
      ) ;
    DUMMY199 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(23)(4
     downto 0)) ;
    _zz_strnp_118 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY193
        ,sa_clear
      ) ;
    _zz_strnp_119 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY194
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_120
        ,sa_snapshot => _zy_simnet_tvar_121
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_122
        ,sa_events => sa_events
        ,sa_clear => DUMMY193
        ,sa_snap => DUMMY194
      ) ;
  end generate ;
  Generate25 : if num_24_ : (TRUE) generate
    constant i : integer := 24 ;
    signal _zy_simnet_tvar_125 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_126 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_127 : std_logic_vector(0 to 9) ;
    signal DUMMY200 : std_logic ;
    signal DUMMY201 : std_logic ;
    signal DUMMY202 : std_logic_vector(49 downto 0) ;
    signal DUMMY203 : std_logic_vector(1 to 50) ;
    signal DUMMY204 : std_logic_vector(49 downto 0) ;
    signal DUMMY205 : std_logic_vector(1 to 50) ;
    signal DUMMY206 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_120 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY202
        ,_zy_simnet_tvar_125
      ) ;
    sa_count(24)(32+17 downto 32) <= DUMMY203(1 to 18);
    sa_count(24)(31 downto 0) <= DUMMY203(19 to 50);
    DUMMY203 <= ext(DUMMY202,50) ;
    _zz_strnp_121 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY204
        ,_zy_simnet_tvar_126
      ) ;
    sa_snapshot(24)(32+17 downto 32) <= DUMMY205(1 to 18);
    sa_snapshot(24)(31 downto 0) <= DUMMY205(19 to 50);
    DUMMY205 <= ext(DUMMY204,50) ;
    _zz_strnp_122 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_127
        ,DUMMY206
      ) ;
    DUMMY206 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(24)(4
     downto 0)) ;
    _zz_strnp_123 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY200
        ,sa_clear
      ) ;
    _zz_strnp_124 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY201
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_125
        ,sa_snapshot => _zy_simnet_tvar_126
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_127
        ,sa_events => sa_events
        ,sa_clear => DUMMY200
        ,sa_snap => DUMMY201
      ) ;
  end generate ;
  Generate26 : if num_25_ : (TRUE) generate
    constant i : integer := 25 ;
    signal _zy_simnet_tvar_130 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_131 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_132 : std_logic_vector(0 to 9) ;
    signal DUMMY207 : std_logic ;
    signal DUMMY208 : std_logic ;
    signal DUMMY209 : std_logic_vector(49 downto 0) ;
    signal DUMMY210 : std_logic_vector(1 to 50) ;
    signal DUMMY211 : std_logic_vector(49 downto 0) ;
    signal DUMMY212 : std_logic_vector(1 to 50) ;
    signal DUMMY213 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_125 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY209
        ,_zy_simnet_tvar_130
      ) ;
    sa_count(25)(32+17 downto 32) <= DUMMY210(1 to 18);
    sa_count(25)(31 downto 0) <= DUMMY210(19 to 50);
    DUMMY210 <= ext(DUMMY209,50) ;
    _zz_strnp_126 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY211
        ,_zy_simnet_tvar_131
      ) ;
    sa_snapshot(25)(32+17 downto 32) <= DUMMY212(1 to 18);
    sa_snapshot(25)(31 downto 0) <= DUMMY212(19 to 50);
    DUMMY212 <= ext(DUMMY211,50) ;
    _zz_strnp_127 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_132
        ,DUMMY213
      ) ;
    DUMMY213 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(25)(4
     downto 0)) ;
    _zz_strnp_128 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY207
        ,sa_clear
      ) ;
    _zz_strnp_129 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY208
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_130
        ,sa_snapshot => _zy_simnet_tvar_131
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_132
        ,sa_events => sa_events
        ,sa_clear => DUMMY207
        ,sa_snap => DUMMY208
      ) ;
  end generate ;
  Generate27 : if num_26_ : (TRUE) generate
    constant i : integer := 26 ;
    signal _zy_simnet_tvar_135 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_136 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_137 : std_logic_vector(0 to 9) ;
    signal DUMMY214 : std_logic ;
    signal DUMMY215 : std_logic ;
    signal DUMMY216 : std_logic_vector(49 downto 0) ;
    signal DUMMY217 : std_logic_vector(1 to 50) ;
    signal DUMMY218 : std_logic_vector(49 downto 0) ;
    signal DUMMY219 : std_logic_vector(1 to 50) ;
    signal DUMMY220 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_130 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY216
        ,_zy_simnet_tvar_135
      ) ;
    sa_count(26)(32+17 downto 32) <= DUMMY217(1 to 18);
    sa_count(26)(31 downto 0) <= DUMMY217(19 to 50);
    DUMMY217 <= ext(DUMMY216,50) ;
    _zz_strnp_131 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY218
        ,_zy_simnet_tvar_136
      ) ;
    sa_snapshot(26)(32+17 downto 32) <= DUMMY219(1 to 18);
    sa_snapshot(26)(31 downto 0) <= DUMMY219(19 to 50);
    DUMMY219 <= ext(DUMMY218,50) ;
    _zz_strnp_132 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_137
        ,DUMMY220
      ) ;
    DUMMY220 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(26)(4
     downto 0)) ;
    _zz_strnp_133 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY214
        ,sa_clear
      ) ;
    _zz_strnp_134 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY215
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_135
        ,sa_snapshot => _zy_simnet_tvar_136
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_137
        ,sa_events => sa_events
        ,sa_clear => DUMMY214
        ,sa_snap => DUMMY215
      ) ;
  end generate ;
  Generate28 : if num_27_ : (TRUE) generate
    constant i : integer := 27 ;
    signal _zy_simnet_tvar_140 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_141 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_142 : std_logic_vector(0 to 9) ;
    signal DUMMY221 : std_logic ;
    signal DUMMY222 : std_logic ;
    signal DUMMY223 : std_logic_vector(49 downto 0) ;
    signal DUMMY224 : std_logic_vector(1 to 50) ;
    signal DUMMY225 : std_logic_vector(49 downto 0) ;
    signal DUMMY226 : std_logic_vector(1 to 50) ;
    signal DUMMY227 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_135 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY223
        ,_zy_simnet_tvar_140
      ) ;
    sa_count(27)(32+17 downto 32) <= DUMMY224(1 to 18);
    sa_count(27)(31 downto 0) <= DUMMY224(19 to 50);
    DUMMY224 <= ext(DUMMY223,50) ;
    _zz_strnp_136 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY225
        ,_zy_simnet_tvar_141
      ) ;
    sa_snapshot(27)(32+17 downto 32) <= DUMMY226(1 to 18);
    sa_snapshot(27)(31 downto 0) <= DUMMY226(19 to 50);
    DUMMY226 <= ext(DUMMY225,50) ;
    _zz_strnp_137 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_142
        ,DUMMY227
      ) ;
    DUMMY227 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(27)(4
     downto 0)) ;
    _zz_strnp_138 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY221
        ,sa_clear
      ) ;
    _zz_strnp_139 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY222
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_140
        ,sa_snapshot => _zy_simnet_tvar_141
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_142
        ,sa_events => sa_events
        ,sa_clear => DUMMY221
        ,sa_snap => DUMMY222
      ) ;
  end generate ;
  Generate29 : if num_28_ : (TRUE) generate
    constant i : integer := 28 ;
    signal _zy_simnet_tvar_145 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_146 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_147 : std_logic_vector(0 to 9) ;
    signal DUMMY228 : std_logic ;
    signal DUMMY229 : std_logic ;
    signal DUMMY230 : std_logic_vector(49 downto 0) ;
    signal DUMMY231 : std_logic_vector(1 to 50) ;
    signal DUMMY232 : std_logic_vector(49 downto 0) ;
    signal DUMMY233 : std_logic_vector(1 to 50) ;
    signal DUMMY234 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_140 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY230
        ,_zy_simnet_tvar_145
      ) ;
    sa_count(28)(32+17 downto 32) <= DUMMY231(1 to 18);
    sa_count(28)(31 downto 0) <= DUMMY231(19 to 50);
    DUMMY231 <= ext(DUMMY230,50) ;
    _zz_strnp_141 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY232
        ,_zy_simnet_tvar_146
      ) ;
    sa_snapshot(28)(32+17 downto 32) <= DUMMY233(1 to 18);
    sa_snapshot(28)(31 downto 0) <= DUMMY233(19 to 50);
    DUMMY233 <= ext(DUMMY232,50) ;
    _zz_strnp_142 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_147
        ,DUMMY234
      ) ;
    DUMMY234 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(28)(4
     downto 0)) ;
    _zz_strnp_143 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY228
        ,sa_clear
      ) ;
    _zz_strnp_144 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY229
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_145
        ,sa_snapshot => _zy_simnet_tvar_146
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_147
        ,sa_events => sa_events
        ,sa_clear => DUMMY228
        ,sa_snap => DUMMY229
      ) ;
  end generate ;
  Generate30 : if num_29_ : (TRUE) generate
    constant i : integer := 29 ;
    signal _zy_simnet_tvar_150 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_151 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_152 : std_logic_vector(0 to 9) ;
    signal DUMMY235 : std_logic ;
    signal DUMMY236 : std_logic ;
    signal DUMMY237 : std_logic_vector(49 downto 0) ;
    signal DUMMY238 : std_logic_vector(1 to 50) ;
    signal DUMMY239 : std_logic_vector(49 downto 0) ;
    signal DUMMY240 : std_logic_vector(1 to 50) ;
    signal DUMMY241 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_145 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY237
        ,_zy_simnet_tvar_150
      ) ;
    sa_count(29)(32+17 downto 32) <= DUMMY238(1 to 18);
    sa_count(29)(31 downto 0) <= DUMMY238(19 to 50);
    DUMMY238 <= ext(DUMMY237,50) ;
    _zz_strnp_146 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY239
        ,_zy_simnet_tvar_151
      ) ;
    sa_snapshot(29)(32+17 downto 32) <= DUMMY240(1 to 18);
    sa_snapshot(29)(31 downto 0) <= DUMMY240(19 to 50);
    DUMMY240 <= ext(DUMMY239,50) ;
    _zz_strnp_147 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_152
        ,DUMMY241
      ) ;
    DUMMY241 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(29)(4
     downto 0)) ;
    _zz_strnp_148 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY235
        ,sa_clear
      ) ;
    _zz_strnp_149 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY236
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_150
        ,sa_snapshot => _zy_simnet_tvar_151
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_152
        ,sa_events => sa_events
        ,sa_clear => DUMMY235
        ,sa_snap => DUMMY236
      ) ;
  end generate ;
  Generate31 : if num_30_ : (TRUE) generate
    constant i : integer := 30 ;
    signal _zy_simnet_tvar_155 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_156 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_157 : std_logic_vector(0 to 9) ;
    signal DUMMY242 : std_logic ;
    signal DUMMY243 : std_logic ;
    signal DUMMY244 : std_logic_vector(49 downto 0) ;
    signal DUMMY245 : std_logic_vector(1 to 50) ;
    signal DUMMY246 : std_logic_vector(49 downto 0) ;
    signal DUMMY247 : std_logic_vector(1 to 50) ;
    signal DUMMY248 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_150 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY244
        ,_zy_simnet_tvar_155
      ) ;
    sa_count(30)(32+17 downto 32) <= DUMMY245(1 to 18);
    sa_count(30)(31 downto 0) <= DUMMY245(19 to 50);
    DUMMY245 <= ext(DUMMY244,50) ;
    _zz_strnp_151 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY246
        ,_zy_simnet_tvar_156
      ) ;
    sa_snapshot(30)(32+17 downto 32) <= DUMMY247(1 to 18);
    sa_snapshot(30)(31 downto 0) <= DUMMY247(19 to 50);
    DUMMY247 <= ext(DUMMY246,50) ;
    _zz_strnp_152 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_157
        ,DUMMY248
      ) ;
    DUMMY248 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(30)(4
     downto 0)) ;
    _zz_strnp_153 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY242
        ,sa_clear
      ) ;
    _zz_strnp_154 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY243
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_155
        ,sa_snapshot => _zy_simnet_tvar_156
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_157
        ,sa_events => sa_events
        ,sa_clear => DUMMY242
        ,sa_snap => DUMMY243
      ) ;
  end generate ;
  Generate32 : if num_31_ : (TRUE) generate
    constant i : integer := 31 ;
    signal _zy_simnet_tvar_160 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_161 : std_logic_vector(0 to 49) ;
    signal _zy_simnet_tvar_162 : std_logic_vector(0 to 9) ;
    signal DUMMY249 : std_logic ;
    signal DUMMY250 : std_logic ;
    signal DUMMY251 : std_logic_vector(49 downto 0) ;
    signal DUMMY252 : std_logic_vector(1 to 50) ;
    signal DUMMY253 : std_logic_vector(49 downto 0) ;
    signal DUMMY254 : std_logic_vector(1 to 50) ;
    signal DUMMY255 : std_logic_vector(9 downto 0) ;
  begin
    _zz_strnp_155 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY251
        ,_zy_simnet_tvar_160
      ) ;
    sa_count(31)(32+17 downto 32) <= DUMMY252(1 to 18);
    sa_count(31)(31 downto 0) <= DUMMY252(19 to 50);
    DUMMY252 <= ext(DUMMY251,50) ;
    _zz_strnp_156 : ixc_assign
      generic map(W => 50)
      port map (
         DUMMY253
        ,_zy_simnet_tvar_161
      ) ;
    sa_snapshot(31)(32+17 downto 32) <= DUMMY254(1 to 18);
    sa_snapshot(31)(31 downto 0) <= DUMMY254(19 to 50);
    DUMMY254 <= ext(DUMMY253,50) ;
    _zz_strnp_157 : ixc_assign
      generic map(W => 10)
      port map (
         _zy_simnet_tvar_162
        ,DUMMY255
      ) ;
    DUMMY255 <= std_logic_vector'(std_logic_vector'("00000") & sa_ctrl(31)(4
     downto 0)) ;
    _zz_strnp_158 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY249
        ,sa_clear
      ) ;
    _zz_strnp_159 : ixc_assign
      generic map(W => 1)
      port map (
         DUMMY250
        ,sa_snap
      ) ;
    sa_counter_i : cr_sa_counter
      port map (
         sa_count => _zy_simnet_tvar_160
        ,sa_snapshot => _zy_simnet_tvar_161
        ,clk => clk
        ,rst_n => rst_n
        ,sa_event_sel => _zy_simnet_tvar_162
        ,sa_events => sa_events
        ,sa_clear => DUMMY249
        ,sa_snap => DUMMY250
      ) ;
  end generate ;
end module;
