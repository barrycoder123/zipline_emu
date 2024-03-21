architecture module of cr_kme_kim_drng_reader is
  -- quickturn multiple_driver_resolution
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "key_type_enc_dek[2]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "key_type_enc_dek[3]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "key_type_enc_dek[4]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "key_type_enc_dek[5]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "key_type_enc_dek[6]"
  -- quickturn CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 key_type_enc_dek 2 6 "
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component ixc_sample_logic
    generic (
      WIDTH : integer := 1 ;
      RD_TYPE : integer := 0 ;
      subtype StateType is std_logic ;
      type DUMMY2 is array(integer range <>) of std_logic
    ) ;
    port (
      sv : out DUMMY2((WIDTH - 1) downto 0) ;
    v : in DUMMY2((WIDTH - 1) downto 0) ) ;
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
  type $_label_t is
  record
    guid_size : std_logic_vector(0 downto 0) ;
    label_size : std_logic_vector(5 downto 0) ;
    DUMMY1 : std_logic_vector(255 downto 0) ;
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
  signal DUMMY2 : std_logic ;
  signal DUMMY3 : std_logic ;
  signal DUMMY4 : std_logic_vector(0 to 70) ;
  signal DUMMY5 : std_logic ;
  signal DUMMY6 : std_logic ;
  signal DUMMY7 : std_logic_vector(0 to 13) ;
  signal DUMMY8 : std_logic ;
  signal DUMMY9 : std_logic ;
  signal DUMMY10 : std_logic ;
  signal DUMMY11 : std_logic ;
  signal DUMMY12 : std_logic ;
  signal DUMMY13 : std_logic ;
  signal DUMMY14 : std_logic ;
  signal DUMMY15 : std_logic ;
  signal DUMMY16 : std_logic ;
  signal DUMMY17 : std_logic ;
  signal DUMMY18 : std_logic ;
  signal DUMMY19 : std_logic ;
  signal DUMMY20 : std_logic ;
  signal DUMMY21 : std_logic ;
  signal DUMMY22 : std_logic ;
  signal DUMMY23 : std_logic ;
  signal _zy_sva_disable_unenc_keys_1_reset_or : std_logic ;
  signal _zy_sva_enable_unenc_keys_2_reset_or : std_logic ;
  signal _zy_sva_disable_unenc_keys_3_reset_or : std_logic ;
  signal _zy_sva_enable_unenc_keys_4_reset_or : std_logic ;
  signal _zy_sva_disable_unenc_keys_5_reset_or : std_logic ;
  signal _zy_sva_enable_unenc_keys_6_reset_or : std_logic ;
  signal _zy_sva_disable_unenc_keys_7_reset_or : std_logic ;
  signal _zy_sva_enable_unenc_keys_8_reset_or : std_logic ;
  signal _zy_sva_disable_unenc_keys_9_reset_or : std_logic ;
  signal _zy_sva_enable_unenc_keys_10_reset_or : std_logic ;
  signal _zy_sva_b0_t : std_logic ;
  signal _zy_sva_b1_t : std_logic ;
  signal _zy_sva_b2_t : std_logic ;
  signal _zy_sva_b3_t : std_logic ;
  signal _zy_sva_b4_t : std_logic ;
  signal _zy_sva_b5_t : std_logic ;
  signal _zy_sva_b6_t : std_logic ;
  signal _zy_sva_b7_t : std_logic ;
  signal _zy_sva_b8_t : std_logic ;
  signal _zy_sva_b9_t : std_logic ;
  signal cur_state : kim_drng_reader_fsm ;
  signal nxt_state : kim_drng_reader_fsm ;
  signal dek_ref_q : std_logic_vector(13 downto 0) ;
  signal dak_ref_q : std_logic_vector(13 downto 0) ;
  signal dek_is_kdf_key_q : std_logic ;
  signal dak_is_kdf_key_q : std_logic ;
  signal kim_errors_q : zipline_error_e ;
  signal dek_kim_entry_q : kim_entry_t ;
  signal dak_kim_entry_q : kim_entry_t ;
  signal dek_kim_mbe_q : std_logic ;
  signal dak_kim_mbe_q : std_logic ;
  signal kim_rd_q : std_logic ;
  signal tlv_word0 : kme_internal_word_0_t ;
  signal tlv_word8 : kme_internal_word_8_t ;
  signal tlv_word9 : kme_internal_word_9_t ;
  signal tlv_word42 : kme_internal_word_42_t ;
  signal aux_key_ctrl : aux_key_ctrl_t ;
  signal aux_key_type : aux_key_type_e ;
  signal _zy_sva_disable_unenc_keys_1_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_disable_unenc_keys_1_ccheck: signal is 1 ;
  signal _zy_sva_disable_unenc_keys_1_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_disable_unenc_keys_1_cpass: signal is 1 ;
  signal _zy_sva_b0 : std_logic ;
  attribute _2_state_ of _zy_sva_b0: signal is 1 ;
  signal _zy_sva_enable_unenc_keys_2_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_enable_unenc_keys_2_ccheck: signal is 1 ;
  signal _zy_sva_enable_unenc_keys_2_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_enable_unenc_keys_2_cpass: signal is 1 ;
  signal _zy_sva_b1 : std_logic ;
  attribute _2_state_ of _zy_sva_b1: signal is 1 ;
  signal _zy_sva_disable_unenc_keys_3_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_disable_unenc_keys_3_ccheck: signal is 1 ;
  signal _zy_sva_disable_unenc_keys_3_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_disable_unenc_keys_3_cpass: signal is 1 ;
  signal _zy_sva_b2 : std_logic ;
  attribute _2_state_ of _zy_sva_b2: signal is 1 ;
  signal _zy_sva_enable_unenc_keys_4_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_enable_unenc_keys_4_ccheck: signal is 1 ;
  signal _zy_sva_enable_unenc_keys_4_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_enable_unenc_keys_4_cpass: signal is 1 ;
  signal _zy_sva_b3 : std_logic ;
  attribute _2_state_ of _zy_sva_b3: signal is 1 ;
  signal _zy_sva_disable_unenc_keys_5_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_disable_unenc_keys_5_ccheck: signal is 1 ;
  signal _zy_sva_disable_unenc_keys_5_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_disable_unenc_keys_5_cpass: signal is 1 ;
  signal _zy_sva_b4 : std_logic ;
  attribute _2_state_ of _zy_sva_b4: signal is 1 ;
  signal _zy_sva_enable_unenc_keys_6_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_enable_unenc_keys_6_ccheck: signal is 1 ;
  signal _zy_sva_enable_unenc_keys_6_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_enable_unenc_keys_6_cpass: signal is 1 ;
  signal _zy_sva_b5 : std_logic ;
  attribute _2_state_ of _zy_sva_b5: signal is 1 ;
  signal _zy_sva_disable_unenc_keys_7_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_disable_unenc_keys_7_ccheck: signal is 1 ;
  signal _zy_sva_disable_unenc_keys_7_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_disable_unenc_keys_7_cpass: signal is 1 ;
  signal _zy_sva_b6 : std_logic ;
  attribute _2_state_ of _zy_sva_b6: signal is 1 ;
  signal _zy_sva_enable_unenc_keys_8_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_enable_unenc_keys_8_ccheck: signal is 1 ;
  signal _zy_sva_enable_unenc_keys_8_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_enable_unenc_keys_8_cpass: signal is 1 ;
  signal _zy_sva_b7 : std_logic ;
  attribute _2_state_ of _zy_sva_b7: signal is 1 ;
  signal _zy_sva_disable_unenc_keys_9_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_disable_unenc_keys_9_ccheck: signal is 1 ;
  signal _zy_sva_disable_unenc_keys_9_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_disable_unenc_keys_9_cpass: signal is 1 ;
  signal _zy_sva_b8 : std_logic ;
  attribute _2_state_ of _zy_sva_b8: signal is 1 ;
  signal _zy_sva_enable_unenc_keys_10_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_enable_unenc_keys_10_ccheck: signal is 1 ;
  signal _zy_sva_enable_unenc_keys_10_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_enable_unenc_keys_10_cpass: signal is 1 ;
  signal _zy_sva_b9 : std_logic ;
  attribute _2_state_ of _zy_sva_b9: signal is 1 ;
  signal _zyL438_tfiRv4 : std_logic ;
  signal _zyL444_tfiRv5 : std_logic ;
  signal _zyL468_tfiRv6 : std_logic ;
  signal _zyL473_tfiRv7 : std_logic ;
  -- quickturn keep_net _zy_sva_disable_unenc_keys_1_ccheck
  -- quickturn keep_net _zy_sva_disable_unenc_keys_1_cpass
  -- quickturn keep_net _zy_sva_enable_unenc_keys_2_ccheck
  -- quickturn keep_net _zy_sva_enable_unenc_keys_2_cpass
  -- quickturn keep_net _zy_sva_disable_unenc_keys_3_ccheck
  -- quickturn keep_net _zy_sva_disable_unenc_keys_3_cpass
  -- quickturn keep_net _zy_sva_enable_unenc_keys_4_ccheck
  -- quickturn keep_net _zy_sva_enable_unenc_keys_4_cpass
  -- quickturn keep_net _zy_sva_disable_unenc_keys_5_ccheck
  -- quickturn keep_net _zy_sva_disable_unenc_keys_5_cpass
  -- quickturn keep_net _zy_sva_enable_unenc_keys_6_ccheck
  -- quickturn keep_net _zy_sva_enable_unenc_keys_6_cpass
  -- quickturn keep_net _zy_sva_disable_unenc_keys_7_ccheck
  -- quickturn keep_net _zy_sva_disable_unenc_keys_7_cpass
  -- quickturn keep_net _zy_sva_enable_unenc_keys_8_ccheck
  -- quickturn keep_net _zy_sva_enable_unenc_keys_8_cpass
  -- quickturn keep_net _zy_sva_disable_unenc_keys_9_ccheck
  -- quickturn keep_net _zy_sva_disable_unenc_keys_9_cpass
  -- quickturn keep_net _zy_sva_enable_unenc_keys_10_ccheck
  -- quickturn keep_net _zy_sva_enable_unenc_keys_10_cpass

begin
  _zz_strnp_0 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY2
      ,kimreader_parser_ack
    ) ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY3
      ,kimreader_ckvreader_valid
    ) ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 71)
    port map (
       DUMMY4
      ,kimreader_ckvreader_data
    ) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY5
      ,drng_ack
    ) ;
  _zz_strnp_4 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY6
      ,kim_rd
    ) ;
  _zz_strnp_5 : ixc_assign
    generic map(W => 14)
    port map (
       DUMMY7
      ,kim_addr
    ) ;
  _zz_strnp_6 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY8
      ,stat_req_with_expired_seed
    ) ;
  _zz_strnp_7 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY9
      ,stat_aux_key_type_0
    ) ;
  _zz_strnp_8 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY10
      ,stat_aux_key_type_1
    ) ;
  _zz_strnp_9 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY11
      ,stat_aux_key_type_2
    ) ;
  _zz_strnp_10 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY12
      ,stat_aux_key_type_3
    ) ;
  _zz_strnp_11 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY13
      ,stat_aux_key_type_4
    ) ;
  _zz_strnp_12 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY14
      ,stat_aux_key_type_5
    ) ;
  _zz_strnp_13 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY15
      ,stat_aux_key_type_6
    ) ;
  _zz_strnp_14 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY16
      ,stat_aux_key_type_7
    ) ;
  _zz_strnp_15 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY17
      ,stat_aux_key_type_8
    ) ;
  _zz_strnp_16 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY18
      ,stat_aux_key_type_9
    ) ;
  _zz_strnp_17 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY19
      ,stat_aux_key_type_10
    ) ;
  _zz_strnp_18 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY20
      ,stat_aux_key_type_11
    ) ;
  _zz_strnp_19 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY21
      ,stat_aux_key_type_12
    ) ;
  _zz_strnp_20 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY22
      ,stat_aux_key_type_13
    ) ;
  _zz_strnp_21 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY23
      ,stat_aux_cmd_with_vf_pf_fail
    ) ;
  _zy_sva_disable_unenc_keys_1_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_enable_unenc_keys_2_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_disable_unenc_keys_3_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_enable_unenc_keys_4_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_disable_unenc_keys_5_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_enable_unenc_keys_6_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_disable_unenc_keys_7_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_enable_unenc_keys_8_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_disable_unenc_keys_9_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_enable_unenc_keys_10_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_b0_t <= boolean_to_std((parser_kimreader_data(64+3 downto 64) =
   KME_WORD0 and (disable_unencrypted_keys)='1' and ext(tlv_word0(39+5 downto 39
  ),32) = std_logic_vector'("00000000000000000000000000000010"))) ;
  _zy_sva_b1_t <= boolean_to_std((parser_kimreader_data(64+3 downto 64) =
   KME_WORD0 and (disable_unencrypted_keys = '0') and ext(tlv_word0(39+5 downto
   39),32) = std_logic_vector'("00000000000000000000000000000010"))) ;
  _zy_sva_b2_t <= boolean_to_std((parser_kimreader_data(64+3 downto 64) =
   KME_WORD0 and (disable_unencrypted_keys)='1' and ext(tlv_word0(39+5 downto 39
  ),32) = std_logic_vector'("00000000000000000000000000000011"))) ;
  _zy_sva_b3_t <= boolean_to_std((parser_kimreader_data(64+3 downto 64) =
   KME_WORD0 and (disable_unencrypted_keys = '0') and ext(tlv_word0(39+5 downto
   39),32) = std_logic_vector'("00000000000000000000000000000011"))) ;
  _zy_sva_b4_t <= boolean_to_std((parser_kimreader_data(64+3 downto 64) =
   KME_WORD0 and (disable_unencrypted_keys)='1' and ext(tlv_word0(39+5 downto 39
  ),32) = std_logic_vector'("00000000000000000000000000000100"))) ;
  _zy_sva_b5_t <= boolean_to_std((parser_kimreader_data(64+3 downto 64) =
   KME_WORD0 and (disable_unencrypted_keys = '0') and ext(tlv_word0(39+5 downto
   39),32) = std_logic_vector'("00000000000000000000000000000100"))) ;
  _zy_sva_b6_t <= boolean_to_std((parser_kimreader_data(64+3 downto 64) =
   KME_WORD0 and (disable_unencrypted_keys)='1' and ext(tlv_word0(39+5 downto 39
  ),32) = std_logic_vector'("00000000000000000000000000000101"))) ;
  _zy_sva_b7_t <= boolean_to_std((parser_kimreader_data(64+3 downto 64) =
   KME_WORD0 and (disable_unencrypted_keys = '0') and ext(tlv_word0(39+5 downto
   39),32) = std_logic_vector'("00000000000000000000000000000101"))) ;
  _zy_sva_b8_t <= boolean_to_std((parser_kimreader_data(64+3 downto 64) =
   KME_WORD0 and (disable_unencrypted_keys)='1' and ext(tlv_word0(39+5 downto 39
  ),32) = std_logic_vector'("00000000000000000000000000000110"))) ;
  _zy_sva_b9_t <= boolean_to_std((parser_kimreader_data(64+3 downto 64) =
   KME_WORD0 and (disable_unencrypted_keys = '0') and ext(tlv_word0(39+5 downto
   39),32) = std_logic_vector'("00000000000000000000000000000110"))) ;
  _zz_zy_sva_b0 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b0
      ,_zy_sva_b0_t
    ) ;
  _zz_zy_sva_b1 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b1
      ,_zy_sva_b1_t
    ) ;
  _zz_zy_sva_b2 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b2
      ,_zy_sva_b2_t
    ) ;
  _zz_zy_sva_b3 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b3
      ,_zy_sva_b3_t
    ) ;
  _zz_zy_sva_b4 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b4
      ,_zy_sva_b4_t
    ) ;
  _zz_zy_sva_b5 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b5
      ,_zy_sva_b5_t
    ) ;
  _zz_zy_sva_b6 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b6
      ,_zy_sva_b6_t
    ) ;
  _zz_zy_sva_b7 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b7
      ,_zy_sva_b7_t
    ) ;
  _zz_zy_sva_b8 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b8
      ,_zy_sva_b8_t
    ) ;
  _zz_zy_sva_b9 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b9
      ,_zy_sva_b9_t
    ) ;

  process --:o1130
  (clk,_zy_sva_disable_unenc_keys_1_reset_or)
    variable DUMMY24 : std_logic ;
  begin
    if (_zy_sva_disable_unenc_keys_1_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY24 := _zy_sva_b0 ;
      _zy_sva_disable_unenc_keys_1_ccheck <= "1" ;
      if (DUMMY24 = '1') then
        _zy_sva_disable_unenc_keys_1_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1147
  (clk,_zy_sva_enable_unenc_keys_2_reset_or)
    variable DUMMY25 : std_logic ;
  begin
    if (_zy_sva_enable_unenc_keys_2_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY25 := _zy_sva_b1 ;
      _zy_sva_enable_unenc_keys_2_ccheck <= "1" ;
      if (DUMMY25 = '1') then
        _zy_sva_enable_unenc_keys_2_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1164
  (clk,_zy_sva_disable_unenc_keys_3_reset_or)
    variable DUMMY26 : std_logic ;
  begin
    if (_zy_sva_disable_unenc_keys_3_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY26 := _zy_sva_b2 ;
      _zy_sva_disable_unenc_keys_3_ccheck <= "1" ;
      if (DUMMY26 = '1') then
        _zy_sva_disable_unenc_keys_3_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1181
  (clk,_zy_sva_enable_unenc_keys_4_reset_or)
    variable DUMMY27 : std_logic ;
  begin
    if (_zy_sva_enable_unenc_keys_4_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY27 := _zy_sva_b3 ;
      _zy_sva_enable_unenc_keys_4_ccheck <= "1" ;
      if (DUMMY27 = '1') then
        _zy_sva_enable_unenc_keys_4_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1198
  (clk,_zy_sva_disable_unenc_keys_5_reset_or)
    variable DUMMY28 : std_logic ;
  begin
    if (_zy_sva_disable_unenc_keys_5_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY28 := _zy_sva_b4 ;
      _zy_sva_disable_unenc_keys_5_ccheck <= "1" ;
      if (DUMMY28 = '1') then
        _zy_sva_disable_unenc_keys_5_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1215
  (clk,_zy_sva_enable_unenc_keys_6_reset_or)
    variable DUMMY29 : std_logic ;
  begin
    if (_zy_sva_enable_unenc_keys_6_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY29 := _zy_sva_b5 ;
      _zy_sva_enable_unenc_keys_6_ccheck <= "1" ;
      if (DUMMY29 = '1') then
        _zy_sva_enable_unenc_keys_6_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1232
  (clk,_zy_sva_disable_unenc_keys_7_reset_or)
    variable DUMMY30 : std_logic ;
  begin
    if (_zy_sva_disable_unenc_keys_7_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY30 := _zy_sva_b6 ;
      _zy_sva_disable_unenc_keys_7_ccheck <= "1" ;
      if (DUMMY30 = '1') then
        _zy_sva_disable_unenc_keys_7_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1249
  (clk,_zy_sva_enable_unenc_keys_8_reset_or)
    variable DUMMY31 : std_logic ;
  begin
    if (_zy_sva_enable_unenc_keys_8_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY31 := _zy_sva_b7 ;
      _zy_sva_enable_unenc_keys_8_ccheck <= "1" ;
      if (DUMMY31 = '1') then
        _zy_sva_enable_unenc_keys_8_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1266
  (clk,_zy_sva_disable_unenc_keys_9_reset_or)
    variable DUMMY32 : std_logic ;
  begin
    if (_zy_sva_disable_unenc_keys_9_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY32 := _zy_sva_b8 ;
      _zy_sva_disable_unenc_keys_9_ccheck <= "1" ;
      if (DUMMY32 = '1') then
        _zy_sva_disable_unenc_keys_9_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1283
  (clk,_zy_sva_enable_unenc_keys_10_reset_or)
    variable DUMMY33 : std_logic ;
  begin
    if (_zy_sva_enable_unenc_keys_10_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY33 := _zy_sva_b9 ;
      _zy_sva_enable_unenc_keys_10_ccheck <= "1" ;
      if (DUMMY33 = '1') then
        _zy_sva_enable_unenc_keys_10_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1300
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      cur_state <= PASSTHROUGH ;
      kim_rd_q <= '0' ;
    elsif (clk'event and clk = '1') then
      cur_state <= nxt_state ;
      kim_rd_q <= kim_rd ;
    end if ;
  end process ;

  process --:o1314
  (*)
  begin
    nxt_state <= cur_state ;

    case cur_state is
      when  "000"  =>
        if (kimreader_parser_ack = '1') then
          if (parser_kimreader_data(64+3 downto 64) = KME_DEBUG_KEYHDR) then
            if ((aux_key_ctrl(14 downto 14) = KDF or aux_key_ctrl(31 downto 31)
             = KDF)) then
              if ((aux_key_ctrl(15+1 downto 15) = KDF_MODE_COMB_RGUID or
               aux_key_ctrl(15+1 downto 15) = KDF_MODE_RGUID)) then
                nxt_state <= INSERT_RGUID0 ;
              end if;
            end if;
          end if;
          if (parser_kimreader_data(64+3 downto 64) = KME_IVTWEAK) then
            if (parser_kimreader_data(69 downto 69) /= "0") then
              nxt_state <= DEK_KIM_READ ;
            end if;
          end if;
        end if;
      when  "100"  =>
        if (ckvreader_kimreader_ack = '1') then
          nxt_state <= INSERT_RGUID1 ;
        end if;
      when  "101"  =>
        if (ckvreader_kimreader_ack = '1') then
          nxt_state <= INSERT_RGUID2 ;
        end if;
      when  "110"  =>
        if (ckvreader_kimreader_ack = '1') then
          nxt_state <= INSERT_RGUID3 ;
        end if;
      when  "111"  =>
        if (ckvreader_kimreader_ack = '1') then
          nxt_state <= PASSTHROUGH ;
        end if;
      when  "001"  =>
        if (kim_rd = '1') then
          nxt_state <= DAK_KIM_READ ;
        end if;
      when  "010"  =>
        if (kim_rd = '1') then
          nxt_state <= TX_KIM_ENTRIES ;
        end if;
      when  "011"  =>
        if (kimreader_ckvreader_valid = '1') then
          if (kimreader_ckvreader_data(69 downto 69) /= "0") then
            if (ckvreader_kimreader_ack = '1') then
              nxt_state <= PASSTHROUGH ;
            end if;
          end if;
        end if;
      when others => null ;
    end case;
  end process ;

  process --:o1399
  (*)
    variable tlv_word8_DUMMY0 : kme_internal_word_8_t ;
    variable tlv_word9_DUMMY1 : kme_internal_word_9_t ;
    variable tlv_word42_DUMMY2 : kme_internal_word_42_t ;
  begin
    tlv_word8_DUMMY0 := tlv_word8;
    tlv_word9_DUMMY1 := tlv_word9;
    tlv_word42_DUMMY2 := tlv_word42;
    drng_ack <= '0' ;
    kimreader_parser_ack <= '0' ;
    kimreader_ckvreader_valid <= '0' ;
    kimreader_ckvreader_data <=
     "00000000000000000000000000000000000000000000000000000000000000000000000" ;
    kim_rd <= '0' ;
    kim_addr <= "00000000000000" ;
    aux_key_ctrl <= parser_kimreader_data(31 downto 0) ;
    tlv_word0 <= parser_kimreader_data(63 downto 0) ;
    tlv_word8_DUMMY0 :=
     "0000000000000000000000000000000000000000000000000000000000000000" ;
    tlv_word9_DUMMY1 :=
     "0000000000000000000000000000000000000000000000000000000000000000" ;
    tlv_word42_DUMMY2 := ext(parser_kimreader_data(63 downto 0),56) ;
    tlv_word42_DUMMY2(7 downto 0) := kim_errors_q ;

    case cur_state is
      when  "000"  =>
        kimreader_ckvreader_valid <= parser_kimreader_valid ;
        kimreader_ckvreader_data <= parser_kimreader_data ;
        kimreader_parser_ack <= ckvreader_kimreader_ack ;
        if (parser_kimreader_data(64+3 downto 64) = KME_ERROR) then
          kimreader_ckvreader_data(63 downto 0) <= ext(tlv_word42_DUMMY2,64) ;
        end if;
      when  "100"  |  "101"  |  "110"  |  "111"  =>
        if (parser_kimreader_valid = '1') then
          if (drng_valid = '1') then
            kimreader_ckvreader_valid <= '1' ;
            kimreader_ckvreader_data <= parser_kimreader_data ;
            kimreader_parser_ack <= ckvreader_kimreader_ack ;

            case cur_state is
              when  "100"  =>
                kimreader_ckvreader_data(63 downto 0) <= drng_256_out(127 downto
                 64) ;
              when  "101"  =>
                kimreader_ckvreader_data(63 downto 0) <= drng_256_out(63 downto
                 0) ;
              when  "110"  =>
                kimreader_ckvreader_data(63 downto 0) <= drng_256_out(127 downto
                 64) ;
              when  "111"  =>
                kimreader_ckvreader_data(63 downto 0) <= drng_256_out(63 downto
                 0) ;
              when others => null ;
            end case;

            case cur_state is
              when  "101"  =>
                drng_ack <= ckvreader_kimreader_ack ;
              when  "111"  =>
                drng_ack <= ckvreader_kimreader_ack ;
              when others => null ;
            end case;
          elsif (drng_seed_expired = '1') then
            kimreader_ckvreader_valid <= '1' ;
            kimreader_ckvreader_data <= parser_kimreader_data ;
            kimreader_parser_ack <= ckvreader_kimreader_ack ;
          end if;
        end if;
      when  "001"  =>
        kim_rd <= '1' ;
        kim_addr <= dek_ref_q ;
      when  "010"  =>
        kim_rd <= '1' ;
        kim_addr <= dak_ref_q ;
      when  "011"  =>
        tlv_word8_DUMMY0 := parser_kimreader_data(63 downto 0) ;
        tlv_word8_DUMMY0(26+37 downto 26) := it_cond_op((tlv_word8_DUMMY0(17
         downto 17))/="0",dek_kim_entry_q,std_logic_vector'
        ("00000000000000000000000000000000000000")) ;
        tlv_word9_DUMMY1 := parser_kimreader_data(63 downto 0) ;
        tlv_word9_DUMMY1(26+37 downto 26) := it_cond_op((tlv_word9_DUMMY1(17
         downto 17))/="0",dak_kim_entry_q,std_logic_vector'
        ("00000000000000000000000000000000000000")) ;
        if (parser_kimreader_data(64+3 downto 64) = KME_KIM) then
          kimreader_ckvreader_valid <= '1' ;
          kimreader_ckvreader_data <= parser_kimreader_data ;
          kimreader_parser_ack <= ckvreader_kimreader_ack ;
          if (parser_kimreader_data(69 downto 69) = std_logic_vector'("0")) then
            kimreader_ckvreader_data(63 downto 0) <= tlv_word8_DUMMY0 ;
          else
            kimreader_ckvreader_data(63 downto 0) <= tlv_word9_DUMMY1 ;
          end if;
        end if;
      when others => null ;
    end case;
    tlv_word8 <= transport tlv_word8_DUMMY0;
    tlv_word9 <= tlv_word9_DUMMY1;
    tlv_word42 <= tlv_word42_DUMMY2;
  end process ;

  process --:o1496
  (clk,rst_n)
    variable DUMMY34 : aux_key_type_e ;
    variable _zyL438_tfiRv4_DUMMY3 : std_logic ;
    variable DUMMY35 : aux_key_type_e ;
    variable _zyL444_tfiRv5_DUMMY4 : std_logic ;
    variable DUMMY36 : aux_key_type_e ;
    variable _zyL468_tfiRv6_DUMMY5 : std_logic ;
    variable DUMMY37 : aux_key_type_e ;
    variable _zyL473_tfiRv7_DUMMY6 : std_logic ;
  begin
    if (rst_n = '0') then
      aux_key_type <= NO_AUX_KEY ;
      kim_errors_q <= NO_ERRORS ;
      dek_ref_q <= "00000000000000" ;
      dak_ref_q <= "00000000000000" ;
      dek_is_kdf_key_q <= '0' ;
      dak_is_kdf_key_q <= '0' ;
      stat_req_with_expired_seed <= '0' ;
      stat_aux_key_type_0 <= '0' ;
      stat_aux_key_type_1 <= '0' ;
      stat_aux_key_type_2 <= '0' ;
      stat_aux_key_type_3 <= '0' ;
      stat_aux_key_type_4 <= '0' ;
      stat_aux_key_type_5 <= '0' ;
      stat_aux_key_type_6 <= '0' ;
      stat_aux_key_type_7 <= '0' ;
      stat_aux_key_type_8 <= '0' ;
      stat_aux_key_type_9 <= '0' ;
      stat_aux_key_type_10 <= '0' ;
      stat_aux_key_type_11 <= '0' ;
      stat_aux_key_type_12 <= '0' ;
      stat_aux_key_type_13 <= '0' ;
      stat_aux_cmd_with_vf_pf_fail <= '0' ;
    elsif (clk'event and clk = '1') then
      stat_req_with_expired_seed <= '0' ;
      stat_aux_key_type_0 <= '0' ;
      stat_aux_key_type_1 <= '0' ;
      stat_aux_key_type_2 <= '0' ;
      stat_aux_key_type_3 <= '0' ;
      stat_aux_key_type_4 <= '0' ;
      stat_aux_key_type_5 <= '0' ;
      stat_aux_key_type_6 <= '0' ;
      stat_aux_key_type_7 <= '0' ;
      stat_aux_key_type_8 <= '0' ;
      stat_aux_key_type_9 <= '0' ;
      stat_aux_key_type_10 <= '0' ;
      stat_aux_key_type_11 <= '0' ;
      stat_aux_key_type_12 <= '0' ;
      stat_aux_key_type_13 <= '0' ;
      stat_aux_cmd_with_vf_pf_fail <= '0' ;
      if (kimreader_parser_ack = '1') then
        if (parser_kimreader_data(64+3 downto 64) = KME_WORD0) then
          aux_key_type <= tlv_word0(39+5 downto 39) ;

          case tlv_word0(39+5 downto 39) is
            when  "000010"  |  "000011"  |  "000100"  |  "000101"  |  "000110" 
             =>
              kim_errors_q <= it_cond_op(disable_unencrypted_keys =
               '1',KME_UNSUPPORTED_KEY_TYPE,NO_ERRORS) ;
            when  "000000"  =>
              kim_errors_q <= it_cond_op(tlv_word0(47 downto 47) /=
               "0",NO_ERRORS,KME_UNSUPPORTED_KEY_TYPE) ;
            when others =>
              kim_errors_q <= NO_ERRORS ;
          end case;
        end if;
        if (parser_kimreader_data(64+3 downto 64) = KME_DEBUG_KEYHDR) then
          dek_ref_q <= aux_key_ctrl(13 downto 0) ;
          dak_ref_q <= aux_key_ctrl(17+13 downto 17) ;
          dek_is_kdf_key_q <= boolean_to_std(aux_key_ctrl(14 downto 14) = KDF) ;
          dak_is_kdf_key_q <= boolean_to_std(aux_key_ctrl(31 downto 31) = KDF) ;
        end if;
        if (parser_kimreader_data(64+3 downto 64) = KME_KIM) then
          if (aux_key_type /= NO_AUX_KEY) then
            if (parser_kimreader_data(69 downto 69) = std_logic_vector'("0"))
             then
              if (((tlv_word8(18 downto 18))/="0" or (tlv_word8(19 downto 19)
              )/="0")) then
                kim_errors_q <= KME_UNSUPPORTED_KEY_TYPE ;
              else
                if (tlv_word8(17 downto 17) /= "0") then
                  if (tlv_word8(+3+39) = '1') then
                    DUMMY34 := aux_key_type ;

                    case DUMMY34 is
                      when  "000111"  |  "001000"  |  "001010"  |  "001011"  | 
                       "001100"  |  "001101"  =>
                        _zyL438_tfiRv4_DUMMY3 := '1' ;
                      when others =>
                        _zyL438_tfiRv4_DUMMY3 := '0' ;
                    end case;
                    if (not(_zyL438_tfiRv4_DUMMY3) = '1') then
                      kim_errors_q <= KME_DEK_ILLEGAL_KEK_USAGE ;
                    end if;
                  else
                    DUMMY35 := aux_key_type ;

                    case DUMMY35 is
                      when  "000111"  |  "001000"  |  "001010"  |  "001011"  | 
                       "001100"  |  "001101"  =>
                        _zyL444_tfiRv5_DUMMY4 := '1' ;
                      when others =>
                        _zyL444_tfiRv5_DUMMY4 := '0' ;
                    end case;
                    if (_zyL444_tfiRv5_DUMMY4 = '1') then
                      kim_errors_q <= KME_DEK_ILLEGAL_KEK_USAGE ;
                    end if;
                  end if;
                  if (tlv_word8(+0+12) /= tlv_word8(+0+39)) then
                    kim_errors_q <= KME_DEK_PF_VF_VAL_ERR ;
                  end if;
                  if (tlv_word8(16 downto 16) /= tlv_word8(26 downto 26)) then
                    kim_errors_q <= KME_DEK_PF_VF_VAL_ERR ;
                  end if;
                  if (tlv_word8(16 downto 16) /= "0") then
                    if (tlv_word8(11 downto 0) /= tlv_word8(27+11 downto 27))
                     then
                      kim_errors_q <= KME_DEK_PF_VF_VAL_ERR ;
                    end if;
                  end if;
                  if (tlv_word8(63 downto 63) = std_logic_vector'("0")) then
                    kim_errors_q <= KME_DEK_INV_KIM ;
                  end if;
                end if;
              end if;
            else
              if (tlv_word9(17 downto 17) /= "0") then
                if (tlv_word9(+3+39) = '1') then
                  DUMMY36 := aux_key_type ;

                  case DUMMY36 is
                    when  "001001"  |  "001010"  |  "001011"  |  "001100"  | 
                     "001101"  =>
                      _zyL468_tfiRv6_DUMMY5 := '1' ;
                    when others =>
                      _zyL468_tfiRv6_DUMMY5 := '0' ;
                  end case;
                  if (not(_zyL468_tfiRv6_DUMMY5) = '1') then
                    kim_errors_q <= KME_DAK_ILLEGAL_KEK_USAGE ;
                  end if;
                else
                  DUMMY37 := aux_key_type ;

                  case DUMMY37 is
                    when  "001001"  |  "001010"  |  "001011"  |  "001100"  | 
                     "001101"  =>
                      _zyL473_tfiRv7_DUMMY6 := '1' ;
                    when others =>
                      _zyL473_tfiRv7_DUMMY6 := '0' ;
                  end case;
                  if (_zyL473_tfiRv7_DUMMY6 = '1') then
                    kim_errors_q <= KME_DAK_ILLEGAL_KEK_USAGE ;
                  end if;
                end if;
                if (tlv_word9(+0+12) /= tlv_word9(+0+39)) then
                  kim_errors_q <= KME_DAK_PF_VF_VAL_ERR ;
                end if;
                if (tlv_word9(16 downto 16) /= tlv_word9(26 downto 26)) then
                  kim_errors_q <= KME_DAK_PF_VF_VAL_ERR ;
                end if;
                if (tlv_word9(16 downto 16) /= "0") then
                  if (tlv_word9(11 downto 0) /= tlv_word9(27+11 downto 27)) then
                    kim_errors_q <= KME_DAK_PF_VF_VAL_ERR ;
                  end if;
                end if;
                if (tlv_word9(63 downto 63) = std_logic_vector'("0")) then
                  kim_errors_q <= KME_DAK_INV_KIM ;
                end if;
              end if;
            end if;
          end if;
        end if;
        if (parser_kimreader_data(64+3 downto 64) = KME_DEK_CKV0) then
          if (parser_kimreader_data(69 downto 69) /= "0") then

            case aux_key_type is
              when  "000000"  =>
                stat_aux_key_type_0 <= '1' ;
              when  "000001"  =>
                stat_aux_key_type_1 <= '1' ;
              when  "000010"  =>
                stat_aux_key_type_2 <= '1' ;
              when  "000011"  =>
                stat_aux_key_type_3 <= '1' ;
              when  "000100"  =>
                stat_aux_key_type_4 <= '1' ;
              when  "000101"  =>
                stat_aux_key_type_5 <= '1' ;
              when  "000110"  =>
                stat_aux_key_type_6 <= '1' ;
              when  "000111"  =>
                stat_aux_key_type_7 <= '1' ;
              when  "001000"  =>
                stat_aux_key_type_8 <= '1' ;
              when  "001001"  =>
                stat_aux_key_type_9 <= '1' ;
              when  "001010"  =>
                stat_aux_key_type_10 <= '1' ;
              when  "001011"  =>
                stat_aux_key_type_11 <= '1' ;
              when  "001100"  =>
                stat_aux_key_type_12 <= '1' ;
              when  "001101"  =>
                stat_aux_key_type_13 <= '1' ;
              when others => null ;
            end case;
            if (kim_errors_q = KME_DEK_PF_VF_VAL_ERR) then
              stat_aux_cmd_with_vf_pf_fail <= '1' ;
            end if;
            if (kim_errors_q = KME_DAK_PF_VF_VAL_ERR) then
              stat_aux_cmd_with_vf_pf_fail <= '1' ;
            end if;
          end if;
        end if;
        if (parser_kimreader_data(64+3 downto 64) = KME_DEK_CKV1) then
          if (((dek_kim_mbe_q)='1' or (dak_kim_mbe_q)='1')) then
            kim_errors_q <= KME_ECC_FAIL ;
          end if;
        end if;
      end if;
    end if ;
    _zyL438_tfiRv4 <= transport _zyL438_tfiRv4_DUMMY3;
    _zyL444_tfiRv5 <= _zyL444_tfiRv5_DUMMY4;
    _zyL468_tfiRv6 <= _zyL468_tfiRv6_DUMMY5;
    _zyL473_tfiRv7 <= _zyL473_tfiRv7_DUMMY6;
  end process ;

  process --:o1754
  (clk,rst_n)
    variable DUMMY38 : std_logic_vector(1 to 39) ;
    variable DUMMY39 : std_logic_vector(1 to 39) ;
  begin
    if (rst_n = '0') then
      dek_kim_entry_q <= "00000000000000000000000000000000000000" ;
      dak_kim_entry_q <= "00000000000000000000000000000000000000" ;
      dek_kim_mbe_q <= '0' ;
      dak_kim_mbe_q <= '0' ;
    elsif (clk'event and clk = '1') then
      if (kim_rd_q = '1') then
        if (cur_state = DAK_KIM_READ) then
          DUMMY38 := std_logic_vector'(kim_mbe & kim_dout) ;
          dek_kim_entry_q <= DUMMY38(2 to 39) ;
          dek_kim_mbe_q <= DUMMY38(1) ;
        end if;
        if (cur_state = TX_KIM_ENTRIES) then
          DUMMY39 := std_logic_vector'(kim_mbe & kim_dout) ;
          dak_kim_entry_q <= DUMMY39(2 to 39) ;
          dak_kim_mbe_q <= DUMMY39(1) ;
        end if;
      elsif (kimreader_ckvreader_valid = '1') then
        if (kimreader_ckvreader_data(64+3 downto 64) = KME_ERROR) then
          if (ckvreader_kimreader_ack = '1') then
            dek_kim_entry_q <= "00000000000000000000000000000000000000" ;
            dak_kim_entry_q <= "00000000000000000000000000000000000000" ;
            dek_kim_mbe_q <= '0' ;
            dak_kim_mbe_q <= '0' ;
          end if;
        end if;
      end if;
    end if ;
  end process ;
  Generate1 : if key_type_enc_dek_2_ : (TRUE) generate
    constant nn : integer := 2 ;
  begin

    process --:o1791
    (**) -- always_comb
    begin
      $axis_assert( "disable_unenc_keys", std_logic'('0'), std_logic_vector'
      ("10"), " ", " ", " ", " ", " ", " ", _zy_sva_disable_unenc_keys_1_cpass,
       " ", _zy_sva_disable_unenc_keys_1_ccheck, " ",
       "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kim_drng_reader.v",
       591, std_logic_vector'("000"));
    end process ;

    process --:o1792
    (**) -- always_comb
    begin
      $axis_assert( "enable_unenc_keys", std_logic'('0'), std_logic_vector'("10"
      ), " ", " ", " ", " ", " ", " ", _zy_sva_enable_unenc_keys_2_cpass, " ",
       _zy_sva_enable_unenc_keys_2_ccheck, " ",
       "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kim_drng_reader.v",
       596, std_logic_vector'("000"));
    end process ;
  end generate ;
  Generate2 : if key_type_enc_dek_3_ : (TRUE) generate
    constant nn : integer := 3 ;
  begin

    process --:o1798
    (**) -- always_comb
    begin
      $axis_assert( "disable_unenc_keys", std_logic'('0'), std_logic_vector'
      ("10"), " ", " ", " ", " ", " ", " ", _zy_sva_disable_unenc_keys_3_cpass,
       " ", _zy_sva_disable_unenc_keys_3_ccheck, " ",
       "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kim_drng_reader.v",
       591, std_logic_vector'("000"));
    end process ;

    process --:o1799
    (**) -- always_comb
    begin
      $axis_assert( "enable_unenc_keys", std_logic'('0'), std_logic_vector'("10"
      ), " ", " ", " ", " ", " ", " ", _zy_sva_enable_unenc_keys_4_cpass, " ",
       _zy_sva_enable_unenc_keys_4_ccheck, " ",
       "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kim_drng_reader.v",
       596, std_logic_vector'("000"));
    end process ;
  end generate ;
  Generate3 : if key_type_enc_dek_4_ : (TRUE) generate
    constant nn : integer := 4 ;
  begin

    process --:o1805
    (**) -- always_comb
    begin
      $axis_assert( "disable_unenc_keys", std_logic'('0'), std_logic_vector'
      ("10"), " ", " ", " ", " ", " ", " ", _zy_sva_disable_unenc_keys_5_cpass,
       " ", _zy_sva_disable_unenc_keys_5_ccheck, " ",
       "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kim_drng_reader.v",
       591, std_logic_vector'("000"));
    end process ;

    process --:o1806
    (**) -- always_comb
    begin
      $axis_assert( "enable_unenc_keys", std_logic'('0'), std_logic_vector'("10"
      ), " ", " ", " ", " ", " ", " ", _zy_sva_enable_unenc_keys_6_cpass, " ",
       _zy_sva_enable_unenc_keys_6_ccheck, " ",
       "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kim_drng_reader.v",
       596, std_logic_vector'("000"));
    end process ;
  end generate ;
  Generate4 : if key_type_enc_dek_5_ : (TRUE) generate
    constant nn : integer := 5 ;
  begin

    process --:o1812
    (**) -- always_comb
    begin
      $axis_assert( "disable_unenc_keys", std_logic'('0'), std_logic_vector'
      ("10"), " ", " ", " ", " ", " ", " ", _zy_sva_disable_unenc_keys_7_cpass,
       " ", _zy_sva_disable_unenc_keys_7_ccheck, " ",
       "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kim_drng_reader.v",
       591, std_logic_vector'("000"));
    end process ;

    process --:o1813
    (**) -- always_comb
    begin
      $axis_assert( "enable_unenc_keys", std_logic'('0'), std_logic_vector'("10"
      ), " ", " ", " ", " ", " ", " ", _zy_sva_enable_unenc_keys_8_cpass, " ",
       _zy_sva_enable_unenc_keys_8_ccheck, " ",
       "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kim_drng_reader.v",
       596, std_logic_vector'("000"));
    end process ;
  end generate ;
  Generate5 : if key_type_enc_dek_6_ : (TRUE) generate
    constant nn : integer := 6 ;
  begin

    process --:o1819
    (**) -- always_comb
    begin
      $axis_assert( "disable_unenc_keys", std_logic'('0'), std_logic_vector'
      ("10"), " ", " ", " ", " ", " ", " ", _zy_sva_disable_unenc_keys_9_cpass,
       " ", _zy_sva_disable_unenc_keys_9_ccheck, " ",
       "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kim_drng_reader.v",
       591, std_logic_vector'("000"));
    end process ;

    process --:o1820
    (**) -- always_comb
    begin
      $axis_assert( "enable_unenc_keys", std_logic'('0'), std_logic_vector'("10"
      ), " ", " ", " ", " ", " ", " ", _zy_sva_enable_unenc_keys_10_cpass, " ",
       _zy_sva_enable_unenc_keys_10_ccheck, " ",
       "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kim_drng_reader.v",
       596, std_logic_vector'("000"));
    end process ;
  end generate ;
end module;
