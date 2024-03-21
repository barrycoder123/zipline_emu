architecture module of cr_kme_kop_tlv_inspector_xcm70 is
  -- quickturn multiple_driver_resolution
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "op[0]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "op[1]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "op[2]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "op[3]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "op[4]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "op[5]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "op[6]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "op[7]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "guid[0]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "guid[0].delimiter[0]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "guid[0].delimiter[1]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "guid[1]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "guid[1].delimiter[0]"
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate "guid[1].delimiter[1]"
  -- quickturn CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_0 "-1 op 0 7 "
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_1 "-1 guid 0 1 "
  -- quickturn CVASTRPROP MODULE HDLICE cva_for_generate_2 "1 delimiter 0 1 "
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
  type $_gcm_status_t is
  record
    tag_mismatch : std_logic_vector(0 downto 0) ;
  end record ;
  subtype gcm_status_t is $_gcm_status_t std_logic_vector(0 downto 0) ;
  signal DUMMY3 : std_logic ;
  signal DUMMY4 : std_logic_vector(0 to 610) ;
  signal DUMMY5 : std_logic ;
  signal DUMMY6 : std_logic_vector(0 to 95) ;
  signal DUMMY7 : std_logic ;
  signal DUMMY8 : std_logic ;
  signal DUMMY9 : std_logic ;
  signal DUMMY10 : std_logic_vector(0 to 63) ;
  signal DUMMY11 : std_logic ;
  signal DUMMY12 : std_logic ;
  signal DUMMY13 : std_logic_vector(0 to 262) ;
  signal DUMMY14 : std_logic ;
  signal DUMMY15 : std_logic_vector(0 to 3) ;
  signal DUMMY16 : std_logic ;
  signal DUMMY17 : std_logic_vector(0 to 63) ;
  signal DUMMY18 : std_logic ;
  signal _zy_sva_brcm_gcm_dek256_with_512bit_key_1_reset_or : std_logic ;
  signal _zy_sva_brcm_gcm_dek512_with_512bit_key_2_reset_or : std_logic ;
  signal _zy_sva_brcm_gcm_dek256dak_with_512bit_key_3_reset_or : std_logic ;
  signal _zy_sva_brcm_gcm_dek512dak_with_512bit_key_4_reset_or : std_logic ;
  signal _zy_sva_brcm_gcm_enc_dek256_no_kbk_5_reset_or : std_logic ;
  signal _zy_sva_brcm_gcm_enc_dek512_no_kbk_6_reset_or : std_logic ;
  signal _zy_sva_brcm_gcm_enc_dek256_comb_no_kbk_7_reset_or : std_logic ;
  signal _zy_sva_brcm_gcm_enc_dek512_comb_no_kbk_8_reset_or : std_logic ;
  signal _zy_sva_brcm_tlv_sb_stall_on_guid_9_reset_or : std_logic ;
  signal _zy_sva_brcm_gcm_10_reset_or : std_logic ;
  signal _zy_sva_brcm_gcm_11_reset_or : std_logic ;
  signal _zy_sva_brcm_gcm_12_reset_or : std_logic ;
  signal _zy_sva_brcm_gcm_13_reset_or : std_logic ;
  signal _zy_sva_brcm_gcm_14_reset_or : std_logic ;
  signal _zy_sva_brcm_gcm_15_reset_or : std_logic ;
  signal _zy_sva_brcm_gcm_16_reset_or : std_logic ;
  signal _zy_sva_brcm_gcm_17_reset_or : std_logic ;
  signal _zy_sva_brcm_kdf_label0_8_18_reset_or : std_logic ;
  signal _zy_sva_brcm_kdf_label9_16_19_reset_or : std_logic ;
  signal _zy_sva_brcm_kdf_label17_24_20_reset_or : std_logic ;
  signal _zy_sva_brcm_kdf_label25_32_21_reset_or : std_logic ;
  signal _zy_sva_brcm_kdf_label0_8_22_reset_or : std_logic ;
  signal _zy_sva_brcm_kdf_label9_16_23_reset_or : std_logic ;
  signal _zy_sva_brcm_kdf_label17_24_24_reset_or : std_logic ;
  signal _zy_sva_brcm_kdf_label25_32_25_reset_or : std_logic ;
  signal _zy_sva_brcm_kdf_label0_8_26_reset_or : std_logic ;
  signal _zy_sva_brcm_kdf_label9_16_27_reset_or : std_logic ;
  signal _zy_sva_brcm_kdf_label17_24_28_reset_or : std_logic ;
  signal _zy_sva_brcm_kdf_label25_32_29_reset_or : std_logic ;
  signal _zy_sva_brcm_kdf_label0_8_30_reset_or : std_logic ;
  signal _zy_sva_brcm_kdf_label9_16_31_reset_or : std_logic ;
  signal _zy_sva_brcm_kdf_label17_24_32_reset_or : std_logic ;
  signal _zy_sva_brcm_kdf_label25_32_33_reset_or : std_logic ;
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
  signal _zy_sva_b10_t : std_logic ;
  signal _zy_sva_b11_t : std_logic ;
  signal _zy_sva_b12_t : std_logic ;
  signal _zy_sva_b13_t : std_logic ;
  signal _zy_sva_b14_t : std_logic ;
  signal _zy_sva_b15_t : std_logic ;
  signal _zy_sva_b16_t : std_logic ;
  signal _zy_sva_b17_t : std_logic ;
  signal _zy_sva_b18_t : std_logic ;
  signal _zy_sva_b19_t : std_logic ;
  signal _zy_sva_b20_t : std_logic ;
  signal _zy_sva_b21_t : std_logic ;
  signal _zy_sva_b22_t : std_logic ;
  signal _zy_sva_b23_t : std_logic ;
  signal _zy_sva_b24_t : std_logic ;
  signal _zy_sva_b25_t : std_logic ;
  signal _zy_sva_b26_t : std_logic ;
  signal _zy_sva_b27_t : std_logic ;
  signal _zy_sva_b28_t : std_logic ;
  signal _zy_sva_b29_t : std_logic ;
  signal _zy_sva_b30_t : std_logic ;
  signal _zy_sva_b31_t : std_logic ;
  signal _zy_sva_b32_t : std_logic ;
  signal debug_cmd : cmd_debug_t ;
  signal int_tlv_word0 : kme_internal_word_0_t ;
  signal int_tlv_word8 : kme_internal_word_8_t ;
  signal int_tlv_word9 : kme_internal_word_9_t ;
  signal int_tlv_word42 : kme_internal_word_42_t ;
  signal key_header : aux_key_ctrl_t ;
  signal stream_cmd_in : kdfstream_cmd_t ;
  signal stream_cmd_in_nxt : kdfstream_cmd_t ;
  signal gcm_dek_cmd_in : gcm_cmd_t ;
  signal gcm_dek_cmd_in_nxt : gcm_cmd_t ;
  signal gcm_dak_cmd_in : gcm_cmd_t ;
  signal gcm_dak_cmd_in_nxt : gcm_cmd_t ;
  signal skip_dek_kdf : std_logic ;
  signal skip_dek_kdf_nxt : std_logic ;
  signal skip_dak_kdf : std_logic ;
  signal skip_dak_kdf_nxt : std_logic ;
  signal gcm_dek_tag : std_logic_vector(95 downto 0) ;
  signal gcm_dek_tag_nxt : std_logic_vector(95 downto 0) ;
  signal gcm_dak_tag : std_logic_vector(95 downto 0) ;
  signal gcm_dak_tag_nxt : std_logic_vector(95 downto 0) ;
  signal corrupt_kme_error_bit_0 : std_logic ;
  signal rst_corrupt_kme_error_bit_0 : std_logic ;
  signal corrupt_crc32 : std_logic ;
  signal rst_corrupt_crc32 : std_logic ;
  signal kdf_dek_iter_nxt : std_logic ;
  signal kdf_dek_iter : std_logic ;
  signal dek_ckv_length_q : std_logic_vector(1 downto 0) ;
  signal kek_tag_q : std_logic ;
  signal _zy_sva_brcm_gcm_dek256_with_512bit_key_1_ccheck : std_logic_vector(0
   downto 0) := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_dek256_with_512bit_key_1_ccheck:
   signal is 1 ;
  signal _zy_sva_brcm_gcm_dek256_with_512bit_key_1_cpass : std_logic_vector(0
   downto 0) := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_dek256_with_512bit_key_1_cpass: signal
   is 1 ;
  signal _zy_sva_b0 : std_logic ;
  attribute _2_state_ of _zy_sva_b0: signal is 1 ;
  signal _zy_sva_brcm_gcm_dek512_with_512bit_key_2_ccheck : std_logic_vector(0
   downto 0) := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_dek512_with_512bit_key_2_ccheck:
   signal is 1 ;
  signal _zy_sva_brcm_gcm_dek512_with_512bit_key_2_cpass : std_logic_vector(0
   downto 0) := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_dek512_with_512bit_key_2_cpass: signal
   is 1 ;
  signal _zy_sva_b1 : std_logic ;
  attribute _2_state_ of _zy_sva_b1: signal is 1 ;
  signal _zy_sva_brcm_gcm_dek256dak_with_512bit_key_3_ccheck : std_logic_vector
  (0 downto 0) := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_dek256dak_with_512bit_key_3_ccheck:
   signal is 1 ;
  signal _zy_sva_brcm_gcm_dek256dak_with_512bit_key_3_cpass : std_logic_vector(0
   downto 0) := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_dek256dak_with_512bit_key_3_cpass:
   signal is 1 ;
  signal _zy_sva_b2 : std_logic ;
  attribute _2_state_ of _zy_sva_b2: signal is 1 ;
  signal _zy_sva_brcm_gcm_dek512dak_with_512bit_key_4_ccheck : std_logic_vector
  (0 downto 0) := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_dek512dak_with_512bit_key_4_ccheck:
   signal is 1 ;
  signal _zy_sva_brcm_gcm_dek512dak_with_512bit_key_4_cpass : std_logic_vector(0
   downto 0) := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_dek512dak_with_512bit_key_4_cpass:
   signal is 1 ;
  signal _zy_sva_b3 : std_logic ;
  attribute _2_state_ of _zy_sva_b3: signal is 1 ;
  signal _zy_sva_brcm_gcm_enc_dek256_no_kbk_5_ccheck : std_logic_vector(0 downto
   0) := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_enc_dek256_no_kbk_5_ccheck: signal is
   1 ;
  signal _zy_sva_brcm_gcm_enc_dek256_no_kbk_5_cpass : std_logic_vector(0 downto
   0) := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_enc_dek256_no_kbk_5_cpass: signal is 1
   ;
  signal _zy_sva_b4 : std_logic ;
  attribute _2_state_ of _zy_sva_b4: signal is 1 ;
  signal _zy_sva_brcm_gcm_enc_dek512_no_kbk_6_ccheck : std_logic_vector(0 downto
   0) := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_enc_dek512_no_kbk_6_ccheck: signal is
   1 ;
  signal _zy_sva_brcm_gcm_enc_dek512_no_kbk_6_cpass : std_logic_vector(0 downto
   0) := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_enc_dek512_no_kbk_6_cpass: signal is 1
   ;
  signal _zy_sva_b5 : std_logic ;
  attribute _2_state_ of _zy_sva_b5: signal is 1 ;
  signal _zy_sva_brcm_gcm_enc_dek256_comb_no_kbk_7_ccheck : std_logic_vector(0
   downto 0) := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_enc_dek256_comb_no_kbk_7_ccheck:
   signal is 1 ;
  signal _zy_sva_brcm_gcm_enc_dek256_comb_no_kbk_7_cpass : std_logic_vector(0
   downto 0) := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_enc_dek256_comb_no_kbk_7_cpass: signal
   is 1 ;
  signal _zy_sva_b6 : std_logic ;
  attribute _2_state_ of _zy_sva_b6: signal is 1 ;
  signal _zy_sva_brcm_gcm_enc_dek512_comb_no_kbk_8_ccheck : std_logic_vector(0
   downto 0) := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_enc_dek512_comb_no_kbk_8_ccheck:
   signal is 1 ;
  signal _zy_sva_brcm_gcm_enc_dek512_comb_no_kbk_8_cpass : std_logic_vector(0
   downto 0) := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_enc_dek512_comb_no_kbk_8_cpass: signal
   is 1 ;
  signal _zy_sva_b7 : std_logic ;
  attribute _2_state_ of _zy_sva_b7: signal is 1 ;
  signal _zy_sva_brcm_tlv_sb_stall_on_guid_9_ccheck : std_logic_vector(0 downto
   0) := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_tlv_sb_stall_on_guid_9_ccheck: signal is 1
   ;
  signal _zy_sva_brcm_tlv_sb_stall_on_guid_9_cpass : std_logic_vector(0 downto 0
  ) := std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_tlv_sb_stall_on_guid_9_cpass: signal is 1
   ;
  signal _zy_sva_b8 : std_logic ;
  attribute _2_state_ of _zy_sva_b8: signal is 1 ;
  signal _zy_sva_brcm_gcm_10_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_10_ccheck: signal is 1 ;
  signal _zy_sva_brcm_gcm_10_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_10_cpass: signal is 1 ;
  signal _zy_sva_b9 : std_logic ;
  attribute _2_state_ of _zy_sva_b9: signal is 1 ;
  signal _zy_sva_brcm_gcm_11_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_11_ccheck: signal is 1 ;
  signal _zy_sva_brcm_gcm_11_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_11_cpass: signal is 1 ;
  signal _zy_sva_b10 : std_logic ;
  attribute _2_state_ of _zy_sva_b10: signal is 1 ;
  signal _zy_sva_brcm_gcm_12_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_12_ccheck: signal is 1 ;
  signal _zy_sva_brcm_gcm_12_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_12_cpass: signal is 1 ;
  signal _zy_sva_b11 : std_logic ;
  attribute _2_state_ of _zy_sva_b11: signal is 1 ;
  signal _zy_sva_brcm_gcm_13_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_13_ccheck: signal is 1 ;
  signal _zy_sva_brcm_gcm_13_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_13_cpass: signal is 1 ;
  signal _zy_sva_b12 : std_logic ;
  attribute _2_state_ of _zy_sva_b12: signal is 1 ;
  signal _zy_sva_brcm_gcm_14_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_14_ccheck: signal is 1 ;
  signal _zy_sva_brcm_gcm_14_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_14_cpass: signal is 1 ;
  signal _zy_sva_b13 : std_logic ;
  attribute _2_state_ of _zy_sva_b13: signal is 1 ;
  signal _zy_sva_brcm_gcm_15_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_15_ccheck: signal is 1 ;
  signal _zy_sva_brcm_gcm_15_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_15_cpass: signal is 1 ;
  signal _zy_sva_b14 : std_logic ;
  attribute _2_state_ of _zy_sva_b14: signal is 1 ;
  signal _zy_sva_brcm_gcm_16_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_16_ccheck: signal is 1 ;
  signal _zy_sva_brcm_gcm_16_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_16_cpass: signal is 1 ;
  signal _zy_sva_b15 : std_logic ;
  attribute _2_state_ of _zy_sva_b15: signal is 1 ;
  signal _zy_sva_brcm_gcm_17_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_17_ccheck: signal is 1 ;
  signal _zy_sva_brcm_gcm_17_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_gcm_17_cpass: signal is 1 ;
  signal _zy_sva_b16 : std_logic ;
  attribute _2_state_ of _zy_sva_b16: signal is 1 ;
  signal _zy_sva_brcm_kdf_label0_8_18_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label0_8_18_ccheck: signal is 1 ;
  signal _zy_sva_brcm_kdf_label0_8_18_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label0_8_18_cpass: signal is 1 ;
  signal _zy_sva_b17 : std_logic ;
  attribute _2_state_ of _zy_sva_b17: signal is 1 ;
  signal _zy_sva_brcm_kdf_label9_16_19_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label9_16_19_ccheck: signal is 1 ;
  signal _zy_sva_brcm_kdf_label9_16_19_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label9_16_19_cpass: signal is 1 ;
  signal _zy_sva_b18 : std_logic ;
  attribute _2_state_ of _zy_sva_b18: signal is 1 ;
  signal _zy_sva_brcm_kdf_label17_24_20_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label17_24_20_ccheck: signal is 1 ;
  signal _zy_sva_brcm_kdf_label17_24_20_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label17_24_20_cpass: signal is 1 ;
  signal _zy_sva_b19 : std_logic ;
  attribute _2_state_ of _zy_sva_b19: signal is 1 ;
  signal _zy_sva_brcm_kdf_label25_32_21_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label25_32_21_ccheck: signal is 1 ;
  signal _zy_sva_brcm_kdf_label25_32_21_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label25_32_21_cpass: signal is 1 ;
  signal _zy_sva_b20 : std_logic ;
  attribute _2_state_ of _zy_sva_b20: signal is 1 ;
  signal _zy_sva_brcm_kdf_label0_8_22_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label0_8_22_ccheck: signal is 1 ;
  signal _zy_sva_brcm_kdf_label0_8_22_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label0_8_22_cpass: signal is 1 ;
  signal _zy_sva_b21 : std_logic ;
  attribute _2_state_ of _zy_sva_b21: signal is 1 ;
  signal _zy_sva_brcm_kdf_label9_16_23_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label9_16_23_ccheck: signal is 1 ;
  signal _zy_sva_brcm_kdf_label9_16_23_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label9_16_23_cpass: signal is 1 ;
  signal _zy_sva_b22 : std_logic ;
  attribute _2_state_ of _zy_sva_b22: signal is 1 ;
  signal _zy_sva_brcm_kdf_label17_24_24_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label17_24_24_ccheck: signal is 1 ;
  signal _zy_sva_brcm_kdf_label17_24_24_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label17_24_24_cpass: signal is 1 ;
  signal _zy_sva_b23 : std_logic ;
  attribute _2_state_ of _zy_sva_b23: signal is 1 ;
  signal _zy_sva_brcm_kdf_label25_32_25_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label25_32_25_ccheck: signal is 1 ;
  signal _zy_sva_brcm_kdf_label25_32_25_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label25_32_25_cpass: signal is 1 ;
  signal _zy_sva_b24 : std_logic ;
  attribute _2_state_ of _zy_sva_b24: signal is 1 ;
  signal _zy_sva_brcm_kdf_label0_8_26_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label0_8_26_ccheck: signal is 1 ;
  signal _zy_sva_brcm_kdf_label0_8_26_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label0_8_26_cpass: signal is 1 ;
  signal _zy_sva_b25 : std_logic ;
  attribute _2_state_ of _zy_sva_b25: signal is 1 ;
  signal _zy_sva_brcm_kdf_label9_16_27_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label9_16_27_ccheck: signal is 1 ;
  signal _zy_sva_brcm_kdf_label9_16_27_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label9_16_27_cpass: signal is 1 ;
  signal _zy_sva_b26 : std_logic ;
  attribute _2_state_ of _zy_sva_b26: signal is 1 ;
  signal _zy_sva_brcm_kdf_label17_24_28_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label17_24_28_ccheck: signal is 1 ;
  signal _zy_sva_brcm_kdf_label17_24_28_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label17_24_28_cpass: signal is 1 ;
  signal _zy_sva_b27 : std_logic ;
  attribute _2_state_ of _zy_sva_b27: signal is 1 ;
  signal _zy_sva_brcm_kdf_label25_32_29_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label25_32_29_ccheck: signal is 1 ;
  signal _zy_sva_brcm_kdf_label25_32_29_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label25_32_29_cpass: signal is 1 ;
  signal _zy_sva_b28 : std_logic ;
  attribute _2_state_ of _zy_sva_b28: signal is 1 ;
  signal _zy_sva_brcm_kdf_label0_8_30_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label0_8_30_ccheck: signal is 1 ;
  signal _zy_sva_brcm_kdf_label0_8_30_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label0_8_30_cpass: signal is 1 ;
  signal _zy_sva_b29 : std_logic ;
  attribute _2_state_ of _zy_sva_b29: signal is 1 ;
  signal _zy_sva_brcm_kdf_label9_16_31_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label9_16_31_ccheck: signal is 1 ;
  signal _zy_sva_brcm_kdf_label9_16_31_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label9_16_31_cpass: signal is 1 ;
  signal _zy_sva_b30 : std_logic ;
  attribute _2_state_ of _zy_sva_b30: signal is 1 ;
  signal _zy_sva_brcm_kdf_label17_24_32_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label17_24_32_ccheck: signal is 1 ;
  signal _zy_sva_brcm_kdf_label17_24_32_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label17_24_32_cpass: signal is 1 ;
  signal _zy_sva_b31 : std_logic ;
  attribute _2_state_ of _zy_sva_b31: signal is 1 ;
  signal _zy_sva_brcm_kdf_label25_32_33_ccheck : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label25_32_33_ccheck: signal is 1 ;
  signal _zy_sva_brcm_kdf_label25_32_33_cpass : std_logic_vector(0 downto 0) :=
   std_logic_vector'("0") ;
  attribute _2_state_ of _zy_sva_brcm_kdf_label25_32_33_cpass: signal is 1 ;
  signal _zy_sva_b32 : std_logic ;
  attribute _2_state_ of _zy_sva_b32: signal is 1 ;
  -- quickturn keep_net _zy_sva_brcm_gcm_dek256_with_512bit_key_1_ccheck
  -- quickturn keep_net _zy_sva_brcm_gcm_dek256_with_512bit_key_1_cpass
  -- quickturn keep_net _zy_sva_brcm_gcm_dek512_with_512bit_key_2_ccheck
  -- quickturn keep_net _zy_sva_brcm_gcm_dek512_with_512bit_key_2_cpass
  -- quickturn keep_net _zy_sva_brcm_gcm_dek256dak_with_512bit_key_3_ccheck
  -- quickturn keep_net _zy_sva_brcm_gcm_dek256dak_with_512bit_key_3_cpass
  -- quickturn keep_net _zy_sva_brcm_gcm_dek512dak_with_512bit_key_4_ccheck
  -- quickturn keep_net _zy_sva_brcm_gcm_dek512dak_with_512bit_key_4_cpass
  -- quickturn keep_net _zy_sva_brcm_gcm_enc_dek256_no_kbk_5_ccheck
  -- quickturn keep_net _zy_sva_brcm_gcm_enc_dek256_no_kbk_5_cpass
  -- quickturn keep_net _zy_sva_brcm_gcm_enc_dek512_no_kbk_6_ccheck
  -- quickturn keep_net _zy_sva_brcm_gcm_enc_dek512_no_kbk_6_cpass
  -- quickturn keep_net _zy_sva_brcm_gcm_enc_dek256_comb_no_kbk_7_ccheck
  -- quickturn keep_net _zy_sva_brcm_gcm_enc_dek256_comb_no_kbk_7_cpass
  -- quickturn keep_net _zy_sva_brcm_gcm_enc_dek512_comb_no_kbk_8_ccheck
  -- quickturn keep_net _zy_sva_brcm_gcm_enc_dek512_comb_no_kbk_8_cpass
  -- quickturn keep_net _zy_sva_brcm_tlv_sb_stall_on_guid_9_ccheck
  -- quickturn keep_net _zy_sva_brcm_tlv_sb_stall_on_guid_9_cpass
  -- quickturn keep_net _zy_sva_brcm_gcm_10_ccheck
  -- quickturn keep_net _zy_sva_brcm_gcm_10_cpass
  -- quickturn keep_net _zy_sva_brcm_gcm_11_ccheck
  -- quickturn keep_net _zy_sva_brcm_gcm_11_cpass
  -- quickturn keep_net _zy_sva_brcm_gcm_12_ccheck
  -- quickturn keep_net _zy_sva_brcm_gcm_12_cpass
  -- quickturn keep_net _zy_sva_brcm_gcm_13_ccheck
  -- quickturn keep_net _zy_sva_brcm_gcm_13_cpass
  -- quickturn keep_net _zy_sva_brcm_gcm_14_ccheck
  -- quickturn keep_net _zy_sva_brcm_gcm_14_cpass
  -- quickturn keep_net _zy_sva_brcm_gcm_15_ccheck
  -- quickturn keep_net _zy_sva_brcm_gcm_15_cpass
  -- quickturn keep_net _zy_sva_brcm_gcm_16_ccheck
  -- quickturn keep_net _zy_sva_brcm_gcm_16_cpass
  -- quickturn keep_net _zy_sva_brcm_gcm_17_ccheck
  -- quickturn keep_net _zy_sva_brcm_gcm_17_cpass
  -- quickturn keep_net _zy_sva_brcm_kdf_label0_8_18_ccheck
  -- quickturn keep_net _zy_sva_brcm_kdf_label0_8_18_cpass
  -- quickturn keep_net _zy_sva_brcm_kdf_label9_16_19_ccheck
  -- quickturn keep_net _zy_sva_brcm_kdf_label9_16_19_cpass
  -- quickturn keep_net _zy_sva_brcm_kdf_label17_24_20_ccheck
  -- quickturn keep_net _zy_sva_brcm_kdf_label17_24_20_cpass
  -- quickturn keep_net _zy_sva_brcm_kdf_label25_32_21_ccheck
  -- quickturn keep_net _zy_sva_brcm_kdf_label25_32_21_cpass
  -- quickturn keep_net _zy_sva_brcm_kdf_label0_8_22_ccheck
  -- quickturn keep_net _zy_sva_brcm_kdf_label0_8_22_cpass
  -- quickturn keep_net _zy_sva_brcm_kdf_label9_16_23_ccheck
  -- quickturn keep_net _zy_sva_brcm_kdf_label9_16_23_cpass
  -- quickturn keep_net _zy_sva_brcm_kdf_label17_24_24_ccheck
  -- quickturn keep_net _zy_sva_brcm_kdf_label17_24_24_cpass
  -- quickturn keep_net _zy_sva_brcm_kdf_label25_32_25_ccheck
  -- quickturn keep_net _zy_sva_brcm_kdf_label25_32_25_cpass
  -- quickturn keep_net _zy_sva_brcm_kdf_label0_8_26_ccheck
  -- quickturn keep_net _zy_sva_brcm_kdf_label0_8_26_cpass
  -- quickturn keep_net _zy_sva_brcm_kdf_label9_16_27_ccheck
  -- quickturn keep_net _zy_sva_brcm_kdf_label9_16_27_cpass
  -- quickturn keep_net _zy_sva_brcm_kdf_label17_24_28_ccheck
  -- quickturn keep_net _zy_sva_brcm_kdf_label17_24_28_cpass
  -- quickturn keep_net _zy_sva_brcm_kdf_label25_32_29_ccheck
  -- quickturn keep_net _zy_sva_brcm_kdf_label25_32_29_cpass
  -- quickturn keep_net _zy_sva_brcm_kdf_label0_8_30_ccheck
  -- quickturn keep_net _zy_sva_brcm_kdf_label0_8_30_cpass
  -- quickturn keep_net _zy_sva_brcm_kdf_label9_16_31_ccheck
  -- quickturn keep_net _zy_sva_brcm_kdf_label9_16_31_cpass
  -- quickturn keep_net _zy_sva_brcm_kdf_label17_24_32_ccheck
  -- quickturn keep_net _zy_sva_brcm_kdf_label17_24_32_cpass
  -- quickturn keep_net _zy_sva_brcm_kdf_label25_32_33_ccheck
  -- quickturn keep_net _zy_sva_brcm_kdf_label25_32_33_cpass

begin
  _zz_strnp_0 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY3
      ,kme_internal_out_ack
    ) ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 611)
    port map (
       DUMMY4
      ,gcm_cmd_in
    ) ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY5
      ,gcm_cmd_in_valid
    ) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 96)
    port map (
       DUMMY6
      ,gcm_tag_data_in
    ) ;
  _zz_strnp_4 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY7
      ,gcm_tag_data_in_valid
    ) ;
  _zz_strnp_5 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY8
      ,inspector_upsizer_valid
    ) ;
  _zz_strnp_6 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY9
      ,inspector_upsizer_eof
    ) ;
  _zz_strnp_7 : ixc_assign
    generic map(W => 64)
    port map (
       DUMMY10
      ,inspector_upsizer_data
    ) ;
  _zz_strnp_8 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY11
      ,keyfilter_cmd_in
    ) ;
  _zz_strnp_9 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY12
      ,keyfilter_cmd_in_valid
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
      ,kdfstream_cmd_in_valid
    ) ;
  _zz_strnp_12 : ixc_assign
    generic map(W => 4)
    port map (
       DUMMY15
      ,kdf_cmd_in
    ) ;
  _zz_strnp_13 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY16
      ,kdf_cmd_in_valid
    ) ;
  _zz_strnp_14 : ixc_assign
    generic map(W => 64)
    port map (
       DUMMY17
      ,tlv_sb_data_in
    ) ;
  _zz_strnp_15 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY18
      ,tlv_sb_data_in_valid
    ) ;
  _zy_sva_brcm_gcm_dek256_with_512bit_key_1_reset_or <= boolean_to_std(ext
  (rst_n,32) /= std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_gcm_dek512_with_512bit_key_2_reset_or <= boolean_to_std(ext
  (rst_n,32) /= std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_gcm_dek256dak_with_512bit_key_3_reset_or <= boolean_to_std(ext
  (rst_n,32) /= std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_gcm_dek512dak_with_512bit_key_4_reset_or <= boolean_to_std(ext
  (rst_n,32) /= std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_gcm_enc_dek256_no_kbk_5_reset_or <= boolean_to_std(ext(rst_n,32)
   /= std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_gcm_enc_dek512_no_kbk_6_reset_or <= boolean_to_std(ext(rst_n,32)
   /= std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_gcm_enc_dek256_comb_no_kbk_7_reset_or <= boolean_to_std(ext
  (rst_n,32) /= std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_gcm_enc_dek512_comb_no_kbk_8_reset_or <= boolean_to_std(ext
  (rst_n,32) /= std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_tlv_sb_stall_on_guid_9_reset_or <= boolean_to_std(ext(rst_n,32)
   /= std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_gcm_10_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_gcm_11_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_gcm_12_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_gcm_13_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_gcm_14_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_gcm_15_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_gcm_16_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_gcm_17_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_kdf_label0_8_18_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_kdf_label9_16_19_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_kdf_label17_24_20_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_kdf_label25_32_21_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_kdf_label0_8_22_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_kdf_label9_16_23_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_kdf_label17_24_24_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_kdf_label25_32_25_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_kdf_label0_8_26_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_kdf_label9_16_27_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_kdf_label17_24_28_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_kdf_label25_32_29_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_kdf_label0_8_30_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_kdf_label9_16_31_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_kdf_label17_24_32_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_brcm_kdf_label25_32_33_reset_or <= boolean_to_std(ext(rst_n,32) /=
   std_logic_vector'("00000000000000000000000000000001")) ;
  _zy_sva_b0_t <= ((gcm_cmd_in_valid and boolean_to_std(ext(dek_ckv_length_q,32)
   = std_logic_vector'("00000000000000000000000000000010"))) and boolean_to_std
  (gcm_cmd_in(2 downto 0) = DECRYPT_DEK256)) ;
  _zy_sva_b1_t <= ((gcm_cmd_in_valid and boolean_to_std(ext(dek_ckv_length_q,32)
   = std_logic_vector'("00000000000000000000000000000010"))) and boolean_to_std
  (gcm_cmd_in(2 downto 0) = DECRYPT_DEK512)) ;
  _zy_sva_b2_t <= ((gcm_cmd_in_valid and boolean_to_std(ext(dek_ckv_length_q,32)
   = std_logic_vector'("00000000000000000000000000000010"))) and boolean_to_std
  (gcm_cmd_in(2 downto 0) = DECRYPT_DEK256_COMB)) ;
  _zy_sva_b3_t <= ((gcm_cmd_in_valid and boolean_to_std(ext(dek_ckv_length_q,32)
   = std_logic_vector'("00000000000000000000000000000010"))) and boolean_to_std
  (gcm_cmd_in(2 downto 0) = DECRYPT_DEK512_COMB)) ;
  _zy_sva_b4_t <= ((gcm_cmd_in_valid and not(kek_tag_q)) and boolean_to_std
  (gcm_cmd_in(2 downto 0) = DECRYPT_DEK256)) ;
  _zy_sva_b5_t <= ((gcm_cmd_in_valid and not(kek_tag_q)) and boolean_to_std
  (gcm_cmd_in(2 downto 0) = DECRYPT_DEK512)) ;
  _zy_sva_b6_t <= ((gcm_cmd_in_valid and not(kek_tag_q)) and boolean_to_std
  (gcm_cmd_in(2 downto 0) = DECRYPT_DEK256_COMB)) ;
  _zy_sva_b7_t <= ((gcm_cmd_in_valid and not(kek_tag_q)) and boolean_to_std
  (gcm_cmd_in(2 downto 0) = DECRYPT_DEK512_COMB)) ;
  _zy_sva_b8_t <= ((boolean_to_std(kme_internal_out(64+3 downto 64) = KME_GUID)
   and kme_internal_out_valid) and tlv_sb_data_in_stall) ;
  _zy_sva_b9_t <= (gcm_cmd_in_valid and boolean_to_std(ext(gcm_cmd_in(2 downto 0
  ),32) = std_logic_vector'("00000000000000000000000000000000"))) ;
  _zy_sva_b10_t <= (gcm_cmd_in_valid and boolean_to_std(ext(gcm_cmd_in(2 downto
   0),32) = std_logic_vector'("00000000000000000000000000000001"))) ;
  _zy_sva_b11_t <= (gcm_cmd_in_valid and boolean_to_std(ext(gcm_cmd_in(2 downto
   0),32) = std_logic_vector'("00000000000000000000000000000010"))) ;
  _zy_sva_b12_t <= (gcm_cmd_in_valid and boolean_to_std(ext(gcm_cmd_in(2 downto
   0),32) = std_logic_vector'("00000000000000000000000000000011"))) ;
  _zy_sva_b13_t <= (gcm_cmd_in_valid and boolean_to_std(ext(gcm_cmd_in(2 downto
   0),32) = std_logic_vector'("00000000000000000000000000000100"))) ;
  _zy_sva_b14_t <= (gcm_cmd_in_valid and boolean_to_std(ext(gcm_cmd_in(2 downto
   0),32) = std_logic_vector'("00000000000000000000000000000101"))) ;
  _zy_sva_b15_t <= (gcm_cmd_in_valid and boolean_to_std(ext(gcm_cmd_in(2 downto
   0),32) = std_logic_vector'("00000000000000000000000000000110"))) ;
  _zy_sva_b16_t <= (gcm_cmd_in_valid and boolean_to_std(ext(gcm_cmd_in(2 downto
   0),32) = std_logic_vector'("00000000000000000000000000000111"))) ;
  _zy_sva_b17_t <= ((((kdfstream_cmd_in_valid and boolean_to_std(ext(labels
  (conv_integer(kdfstream_cmd_in(2+2 downto 2)))(271 downto 271),32) =
   std_logic_vector'("00000000000000000000000000000000"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(8 downto 8),32) =
   std_logic_vector'("00000000000000000000000000000000"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5 downto 265),32
  ) >= std_logic_vector'("00000000000000000000000000000000"))) and
   boolean_to_std(ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5
   downto 265),32) <= std_logic_vector'("00000000000000000000000000001000"))) ;
  _zy_sva_b18_t <= ((((kdfstream_cmd_in_valid and boolean_to_std(ext(labels
  (conv_integer(kdfstream_cmd_in(2+2 downto 2)))(271 downto 271),32) =
   std_logic_vector'("00000000000000000000000000000000"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(8 downto 8),32) =
   std_logic_vector'("00000000000000000000000000000000"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5 downto 265),32
  ) >= std_logic_vector'("00000000000000000000000000001001"))) and
   boolean_to_std(ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5
   downto 265),32) <= std_logic_vector'("00000000000000000000000000010000"))) ;
  _zy_sva_b19_t <= ((((kdfstream_cmd_in_valid and boolean_to_std(ext(labels
  (conv_integer(kdfstream_cmd_in(2+2 downto 2)))(271 downto 271),32) =
   std_logic_vector'("00000000000000000000000000000000"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(8 downto 8),32) =
   std_logic_vector'("00000000000000000000000000000000"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5 downto 265),32
  ) >= std_logic_vector'("00000000000000000000000000010001"))) and
   boolean_to_std(ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5
   downto 265),32) <= std_logic_vector'("00000000000000000000000000011000"))) ;
  _zy_sva_b20_t <= ((((kdfstream_cmd_in_valid and boolean_to_std(ext(labels
  (conv_integer(kdfstream_cmd_in(2+2 downto 2)))(271 downto 271),32) =
   std_logic_vector'("00000000000000000000000000000000"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(8 downto 8),32) =
   std_logic_vector'("00000000000000000000000000000000"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5 downto 265),32
  ) >= std_logic_vector'("00000000000000000000000000011001"))) and
   boolean_to_std(ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5
   downto 265),32) <= std_logic_vector'("00000000000000000000000000100000"))) ;
  _zy_sva_b21_t <= ((((kdfstream_cmd_in_valid and boolean_to_std(ext(labels
  (conv_integer(kdfstream_cmd_in(2+2 downto 2)))(271 downto 271),32) =
   std_logic_vector'("00000000000000000000000000000000"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(8 downto 8),32) =
   std_logic_vector'("00000000000000000000000000000001"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5 downto 265),32
  ) >= std_logic_vector'("00000000000000000000000000000000"))) and
   boolean_to_std(ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5
   downto 265),32) <= std_logic_vector'("00000000000000000000000000001000"))) ;
  _zy_sva_b22_t <= ((((kdfstream_cmd_in_valid and boolean_to_std(ext(labels
  (conv_integer(kdfstream_cmd_in(2+2 downto 2)))(271 downto 271),32) =
   std_logic_vector'("00000000000000000000000000000000"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(8 downto 8),32) =
   std_logic_vector'("00000000000000000000000000000001"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5 downto 265),32
  ) >= std_logic_vector'("00000000000000000000000000001001"))) and
   boolean_to_std(ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5
   downto 265),32) <= std_logic_vector'("00000000000000000000000000010000"))) ;
  _zy_sva_b23_t <= ((((kdfstream_cmd_in_valid and boolean_to_std(ext(labels
  (conv_integer(kdfstream_cmd_in(2+2 downto 2)))(271 downto 271),32) =
   std_logic_vector'("00000000000000000000000000000000"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(8 downto 8),32) =
   std_logic_vector'("00000000000000000000000000000001"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5 downto 265),32
  ) >= std_logic_vector'("00000000000000000000000000010001"))) and
   boolean_to_std(ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5
   downto 265),32) <= std_logic_vector'("00000000000000000000000000011000"))) ;
  _zy_sva_b24_t <= ((((kdfstream_cmd_in_valid and boolean_to_std(ext(labels
  (conv_integer(kdfstream_cmd_in(2+2 downto 2)))(271 downto 271),32) =
   std_logic_vector'("00000000000000000000000000000000"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(8 downto 8),32) =
   std_logic_vector'("00000000000000000000000000000001"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5 downto 265),32
  ) >= std_logic_vector'("00000000000000000000000000011001"))) and
   boolean_to_std(ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5
   downto 265),32) <= std_logic_vector'("00000000000000000000000000100000"))) ;
  _zy_sva_b25_t <= ((((kdfstream_cmd_in_valid and boolean_to_std(ext(labels
  (conv_integer(kdfstream_cmd_in(2+2 downto 2)))(271 downto 271),32) =
   std_logic_vector'("00000000000000000000000000000001"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(8 downto 8),32) =
   std_logic_vector'("00000000000000000000000000000000"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5 downto 265),32
  ) >= std_logic_vector'("00000000000000000000000000000000"))) and
   boolean_to_std(ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5
   downto 265),32) <= std_logic_vector'("00000000000000000000000000001000"))) ;
  _zy_sva_b26_t <= ((((kdfstream_cmd_in_valid and boolean_to_std(ext(labels
  (conv_integer(kdfstream_cmd_in(2+2 downto 2)))(271 downto 271),32) =
   std_logic_vector'("00000000000000000000000000000001"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(8 downto 8),32) =
   std_logic_vector'("00000000000000000000000000000000"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5 downto 265),32
  ) >= std_logic_vector'("00000000000000000000000000001001"))) and
   boolean_to_std(ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5
   downto 265),32) <= std_logic_vector'("00000000000000000000000000010000"))) ;
  _zy_sva_b27_t <= ((((kdfstream_cmd_in_valid and boolean_to_std(ext(labels
  (conv_integer(kdfstream_cmd_in(2+2 downto 2)))(271 downto 271),32) =
   std_logic_vector'("00000000000000000000000000000001"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(8 downto 8),32) =
   std_logic_vector'("00000000000000000000000000000000"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5 downto 265),32
  ) >= std_logic_vector'("00000000000000000000000000010001"))) and
   boolean_to_std(ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5
   downto 265),32) <= std_logic_vector'("00000000000000000000000000011000"))) ;
  _zy_sva_b28_t <= ((((kdfstream_cmd_in_valid and boolean_to_std(ext(labels
  (conv_integer(kdfstream_cmd_in(2+2 downto 2)))(271 downto 271),32) =
   std_logic_vector'("00000000000000000000000000000001"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(8 downto 8),32) =
   std_logic_vector'("00000000000000000000000000000000"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5 downto 265),32
  ) >= std_logic_vector'("00000000000000000000000000011001"))) and
   boolean_to_std(ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5
   downto 265),32) <= std_logic_vector'("00000000000000000000000000100000"))) ;
  _zy_sva_b29_t <= ((((kdfstream_cmd_in_valid and boolean_to_std(ext(labels
  (conv_integer(kdfstream_cmd_in(2+2 downto 2)))(271 downto 271),32) =
   std_logic_vector'("00000000000000000000000000000001"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(8 downto 8),32) =
   std_logic_vector'("00000000000000000000000000000001"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5 downto 265),32
  ) >= std_logic_vector'("00000000000000000000000000000000"))) and
   boolean_to_std(ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5
   downto 265),32) <= std_logic_vector'("00000000000000000000000000001000"))) ;
  _zy_sva_b30_t <= ((((kdfstream_cmd_in_valid and boolean_to_std(ext(labels
  (conv_integer(kdfstream_cmd_in(2+2 downto 2)))(271 downto 271),32) =
   std_logic_vector'("00000000000000000000000000000001"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(8 downto 8),32) =
   std_logic_vector'("00000000000000000000000000000001"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5 downto 265),32
  ) >= std_logic_vector'("00000000000000000000000000001001"))) and
   boolean_to_std(ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5
   downto 265),32) <= std_logic_vector'("00000000000000000000000000010000"))) ;
  _zy_sva_b31_t <= ((((kdfstream_cmd_in_valid and boolean_to_std(ext(labels
  (conv_integer(kdfstream_cmd_in(2+2 downto 2)))(271 downto 271),32) =
   std_logic_vector'("00000000000000000000000000000001"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(8 downto 8),32) =
   std_logic_vector'("00000000000000000000000000000001"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5 downto 265),32
  ) >= std_logic_vector'("00000000000000000000000000010001"))) and
   boolean_to_std(ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5
   downto 265),32) <= std_logic_vector'("00000000000000000000000000011000"))) ;
  _zy_sva_b32_t <= ((((kdfstream_cmd_in_valid and boolean_to_std(ext(labels
  (conv_integer(kdfstream_cmd_in(2+2 downto 2)))(271 downto 271),32) =
   std_logic_vector'("00000000000000000000000000000001"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(8 downto 8),32) =
   std_logic_vector'("00000000000000000000000000000001"))) and boolean_to_std
  (ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5 downto 265),32
  ) >= std_logic_vector'("00000000000000000000000000011001"))) and
   boolean_to_std(ext(labels(conv_integer(kdfstream_cmd_in(2+2 downto 2)))(265+5
   downto 265),32) <= std_logic_vector'("00000000000000000000000000100000"))) ;
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
  _zz_zy_sva_b10 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b10
      ,_zy_sva_b10_t
    ) ;
  _zz_zy_sva_b11 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b11
      ,_zy_sva_b11_t
    ) ;
  _zz_zy_sva_b12 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b12
      ,_zy_sva_b12_t
    ) ;
  _zz_zy_sva_b13 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b13
      ,_zy_sva_b13_t
    ) ;
  _zz_zy_sva_b14 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b14
      ,_zy_sva_b14_t
    ) ;
  _zz_zy_sva_b15 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b15
      ,_zy_sva_b15_t
    ) ;
  _zz_zy_sva_b16 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b16
      ,_zy_sva_b16_t
    ) ;
  _zz_zy_sva_b17 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b17
      ,_zy_sva_b17_t
    ) ;
  _zz_zy_sva_b18 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b18
      ,_zy_sva_b18_t
    ) ;
  _zz_zy_sva_b19 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b19
      ,_zy_sva_b19_t
    ) ;
  _zz_zy_sva_b20 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b20
      ,_zy_sva_b20_t
    ) ;
  _zz_zy_sva_b21 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b21
      ,_zy_sva_b21_t
    ) ;
  _zz_zy_sva_b22 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b22
      ,_zy_sva_b22_t
    ) ;
  _zz_zy_sva_b23 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b23
      ,_zy_sva_b23_t
    ) ;
  _zz_zy_sva_b24 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b24
      ,_zy_sva_b24_t
    ) ;
  _zz_zy_sva_b25 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b25
      ,_zy_sva_b25_t
    ) ;
  _zz_zy_sva_b26 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b26
      ,_zy_sva_b26_t
    ) ;
  _zz_zy_sva_b27 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b27
      ,_zy_sva_b27_t
    ) ;
  _zz_zy_sva_b28 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b28
      ,_zy_sva_b28_t
    ) ;
  _zz_zy_sva_b29 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b29
      ,_zy_sva_b29_t
    ) ;
  _zz_zy_sva_b30 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b30
      ,_zy_sva_b30_t
    ) ;
  _zz_zy_sva_b31 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b31
      ,_zy_sva_b31_t
    ) ;
  _zz_zy_sva_b32 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 3)
    port map (
       _zy_sva_b32
      ,_zy_sva_b32_t
    ) ;

  process --:o1347
  (clk,_zy_sva_brcm_gcm_dek256_with_512bit_key_1_reset_or)
    variable DUMMY19 : std_logic ;
  begin
    if (_zy_sva_brcm_gcm_dek256_with_512bit_key_1_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY19 := _zy_sva_b0 ;
      _zy_sva_brcm_gcm_dek256_with_512bit_key_1_ccheck <= "1" ;
      if (DUMMY19 = '1') then
        _zy_sva_brcm_gcm_dek256_with_512bit_key_1_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1364
  (clk,_zy_sva_brcm_gcm_dek512_with_512bit_key_2_reset_or)
    variable DUMMY20 : std_logic ;
  begin
    if (_zy_sva_brcm_gcm_dek512_with_512bit_key_2_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY20 := _zy_sva_b1 ;
      _zy_sva_brcm_gcm_dek512_with_512bit_key_2_ccheck <= "1" ;
      if (DUMMY20 = '1') then
        _zy_sva_brcm_gcm_dek512_with_512bit_key_2_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1381
  (clk,_zy_sva_brcm_gcm_dek256dak_with_512bit_key_3_reset_or)
    variable DUMMY21 : std_logic ;
  begin
    if (_zy_sva_brcm_gcm_dek256dak_with_512bit_key_3_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY21 := _zy_sva_b2 ;
      _zy_sva_brcm_gcm_dek256dak_with_512bit_key_3_ccheck <= "1" ;
      if (DUMMY21 = '1') then
        _zy_sva_brcm_gcm_dek256dak_with_512bit_key_3_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1398
  (clk,_zy_sva_brcm_gcm_dek512dak_with_512bit_key_4_reset_or)
    variable DUMMY22 : std_logic ;
  begin
    if (_zy_sva_brcm_gcm_dek512dak_with_512bit_key_4_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY22 := _zy_sva_b3 ;
      _zy_sva_brcm_gcm_dek512dak_with_512bit_key_4_ccheck <= "1" ;
      if (DUMMY22 = '1') then
        _zy_sva_brcm_gcm_dek512dak_with_512bit_key_4_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1415
  (clk,_zy_sva_brcm_gcm_enc_dek256_no_kbk_5_reset_or)
    variable DUMMY23 : std_logic ;
  begin
    if (_zy_sva_brcm_gcm_enc_dek256_no_kbk_5_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY23 := _zy_sva_b4 ;
      _zy_sva_brcm_gcm_enc_dek256_no_kbk_5_ccheck <= "1" ;
      if (DUMMY23 = '1') then
        _zy_sva_brcm_gcm_enc_dek256_no_kbk_5_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1432
  (clk,_zy_sva_brcm_gcm_enc_dek512_no_kbk_6_reset_or)
    variable DUMMY24 : std_logic ;
  begin
    if (_zy_sva_brcm_gcm_enc_dek512_no_kbk_6_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY24 := _zy_sva_b5 ;
      _zy_sva_brcm_gcm_enc_dek512_no_kbk_6_ccheck <= "1" ;
      if (DUMMY24 = '1') then
        _zy_sva_brcm_gcm_enc_dek512_no_kbk_6_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1449
  (clk,_zy_sva_brcm_gcm_enc_dek256_comb_no_kbk_7_reset_or)
    variable DUMMY25 : std_logic ;
  begin
    if (_zy_sva_brcm_gcm_enc_dek256_comb_no_kbk_7_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY25 := _zy_sva_b6 ;
      _zy_sva_brcm_gcm_enc_dek256_comb_no_kbk_7_ccheck <= "1" ;
      if (DUMMY25 = '1') then
        _zy_sva_brcm_gcm_enc_dek256_comb_no_kbk_7_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1466
  (clk,_zy_sva_brcm_gcm_enc_dek512_comb_no_kbk_8_reset_or)
    variable DUMMY26 : std_logic ;
  begin
    if (_zy_sva_brcm_gcm_enc_dek512_comb_no_kbk_8_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY26 := _zy_sva_b7 ;
      _zy_sva_brcm_gcm_enc_dek512_comb_no_kbk_8_ccheck <= "1" ;
      if (DUMMY26 = '1') then
        _zy_sva_brcm_gcm_enc_dek512_comb_no_kbk_8_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1483
  (clk,_zy_sva_brcm_tlv_sb_stall_on_guid_9_reset_or)
    variable DUMMY27 : std_logic ;
  begin
    if (_zy_sva_brcm_tlv_sb_stall_on_guid_9_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY27 := _zy_sva_b8 ;
      _zy_sva_brcm_tlv_sb_stall_on_guid_9_ccheck <= "1" ;
      if (DUMMY27 = '1') then
        _zy_sva_brcm_tlv_sb_stall_on_guid_9_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1500
  (clk,_zy_sva_brcm_gcm_10_reset_or)
    variable DUMMY28 : std_logic ;
  begin
    if (_zy_sva_brcm_gcm_10_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY28 := _zy_sva_b9 ;
      _zy_sva_brcm_gcm_10_ccheck <= "1" ;
      if (DUMMY28 = '1') then
        _zy_sva_brcm_gcm_10_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1517
  (clk,_zy_sva_brcm_gcm_11_reset_or)
    variable DUMMY29 : std_logic ;
  begin
    if (_zy_sva_brcm_gcm_11_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY29 := _zy_sva_b10 ;
      _zy_sva_brcm_gcm_11_ccheck <= "1" ;
      if (DUMMY29 = '1') then
        _zy_sva_brcm_gcm_11_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1534
  (clk,_zy_sva_brcm_gcm_12_reset_or)
    variable DUMMY30 : std_logic ;
  begin
    if (_zy_sva_brcm_gcm_12_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY30 := _zy_sva_b11 ;
      _zy_sva_brcm_gcm_12_ccheck <= "1" ;
      if (DUMMY30 = '1') then
        _zy_sva_brcm_gcm_12_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1551
  (clk,_zy_sva_brcm_gcm_13_reset_or)
    variable DUMMY31 : std_logic ;
  begin
    if (_zy_sva_brcm_gcm_13_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY31 := _zy_sva_b12 ;
      _zy_sva_brcm_gcm_13_ccheck <= "1" ;
      if (DUMMY31 = '1') then
        _zy_sva_brcm_gcm_13_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1568
  (clk,_zy_sva_brcm_gcm_14_reset_or)
    variable DUMMY32 : std_logic ;
  begin
    if (_zy_sva_brcm_gcm_14_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY32 := _zy_sva_b13 ;
      _zy_sva_brcm_gcm_14_ccheck <= "1" ;
      if (DUMMY32 = '1') then
        _zy_sva_brcm_gcm_14_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1585
  (clk,_zy_sva_brcm_gcm_15_reset_or)
    variable DUMMY33 : std_logic ;
  begin
    if (_zy_sva_brcm_gcm_15_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY33 := _zy_sva_b14 ;
      _zy_sva_brcm_gcm_15_ccheck <= "1" ;
      if (DUMMY33 = '1') then
        _zy_sva_brcm_gcm_15_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1602
  (clk,_zy_sva_brcm_gcm_16_reset_or)
    variable DUMMY34 : std_logic ;
  begin
    if (_zy_sva_brcm_gcm_16_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY34 := _zy_sva_b15 ;
      _zy_sva_brcm_gcm_16_ccheck <= "1" ;
      if (DUMMY34 = '1') then
        _zy_sva_brcm_gcm_16_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1619
  (clk,_zy_sva_brcm_gcm_17_reset_or)
    variable DUMMY35 : std_logic ;
  begin
    if (_zy_sva_brcm_gcm_17_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY35 := _zy_sva_b16 ;
      _zy_sva_brcm_gcm_17_ccheck <= "1" ;
      if (DUMMY35 = '1') then
        _zy_sva_brcm_gcm_17_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1636
  (clk,_zy_sva_brcm_kdf_label0_8_18_reset_or)
    variable DUMMY36 : std_logic ;
  begin
    if (_zy_sva_brcm_kdf_label0_8_18_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY36 := _zy_sva_b17 ;
      _zy_sva_brcm_kdf_label0_8_18_ccheck <= "1" ;
      if (DUMMY36 = '1') then
        _zy_sva_brcm_kdf_label0_8_18_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1653
  (clk,_zy_sva_brcm_kdf_label9_16_19_reset_or)
    variable DUMMY37 : std_logic ;
  begin
    if (_zy_sva_brcm_kdf_label9_16_19_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY37 := _zy_sva_b18 ;
      _zy_sva_brcm_kdf_label9_16_19_ccheck <= "1" ;
      if (DUMMY37 = '1') then
        _zy_sva_brcm_kdf_label9_16_19_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1670
  (clk,_zy_sva_brcm_kdf_label17_24_20_reset_or)
    variable DUMMY38 : std_logic ;
  begin
    if (_zy_sva_brcm_kdf_label17_24_20_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY38 := _zy_sva_b19 ;
      _zy_sva_brcm_kdf_label17_24_20_ccheck <= "1" ;
      if (DUMMY38 = '1') then
        _zy_sva_brcm_kdf_label17_24_20_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1687
  (clk,_zy_sva_brcm_kdf_label25_32_21_reset_or)
    variable DUMMY39 : std_logic ;
  begin
    if (_zy_sva_brcm_kdf_label25_32_21_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY39 := _zy_sva_b20 ;
      _zy_sva_brcm_kdf_label25_32_21_ccheck <= "1" ;
      if (DUMMY39 = '1') then
        _zy_sva_brcm_kdf_label25_32_21_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1704
  (clk,_zy_sva_brcm_kdf_label0_8_22_reset_or)
    variable DUMMY40 : std_logic ;
  begin
    if (_zy_sva_brcm_kdf_label0_8_22_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY40 := _zy_sva_b21 ;
      _zy_sva_brcm_kdf_label0_8_22_ccheck <= "1" ;
      if (DUMMY40 = '1') then
        _zy_sva_brcm_kdf_label0_8_22_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1721
  (clk,_zy_sva_brcm_kdf_label9_16_23_reset_or)
    variable DUMMY41 : std_logic ;
  begin
    if (_zy_sva_brcm_kdf_label9_16_23_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY41 := _zy_sva_b22 ;
      _zy_sva_brcm_kdf_label9_16_23_ccheck <= "1" ;
      if (DUMMY41 = '1') then
        _zy_sva_brcm_kdf_label9_16_23_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1738
  (clk,_zy_sva_brcm_kdf_label17_24_24_reset_or)
    variable DUMMY42 : std_logic ;
  begin
    if (_zy_sva_brcm_kdf_label17_24_24_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY42 := _zy_sva_b23 ;
      _zy_sva_brcm_kdf_label17_24_24_ccheck <= "1" ;
      if (DUMMY42 = '1') then
        _zy_sva_brcm_kdf_label17_24_24_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1755
  (clk,_zy_sva_brcm_kdf_label25_32_25_reset_or)
    variable DUMMY43 : std_logic ;
  begin
    if (_zy_sva_brcm_kdf_label25_32_25_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY43 := _zy_sva_b24 ;
      _zy_sva_brcm_kdf_label25_32_25_ccheck <= "1" ;
      if (DUMMY43 = '1') then
        _zy_sva_brcm_kdf_label25_32_25_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1772
  (clk,_zy_sva_brcm_kdf_label0_8_26_reset_or)
    variable DUMMY44 : std_logic ;
  begin
    if (_zy_sva_brcm_kdf_label0_8_26_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY44 := _zy_sva_b25 ;
      _zy_sva_brcm_kdf_label0_8_26_ccheck <= "1" ;
      if (DUMMY44 = '1') then
        _zy_sva_brcm_kdf_label0_8_26_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1789
  (clk,_zy_sva_brcm_kdf_label9_16_27_reset_or)
    variable DUMMY45 : std_logic ;
  begin
    if (_zy_sva_brcm_kdf_label9_16_27_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY45 := _zy_sva_b26 ;
      _zy_sva_brcm_kdf_label9_16_27_ccheck <= "1" ;
      if (DUMMY45 = '1') then
        _zy_sva_brcm_kdf_label9_16_27_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1806
  (clk,_zy_sva_brcm_kdf_label17_24_28_reset_or)
    variable DUMMY46 : std_logic ;
  begin
    if (_zy_sva_brcm_kdf_label17_24_28_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY46 := _zy_sva_b27 ;
      _zy_sva_brcm_kdf_label17_24_28_ccheck <= "1" ;
      if (DUMMY46 = '1') then
        _zy_sva_brcm_kdf_label17_24_28_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1823
  (clk,_zy_sva_brcm_kdf_label25_32_29_reset_or)
    variable DUMMY47 : std_logic ;
  begin
    if (_zy_sva_brcm_kdf_label25_32_29_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY47 := _zy_sva_b28 ;
      _zy_sva_brcm_kdf_label25_32_29_ccheck <= "1" ;
      if (DUMMY47 = '1') then
        _zy_sva_brcm_kdf_label25_32_29_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1840
  (clk,_zy_sva_brcm_kdf_label0_8_30_reset_or)
    variable DUMMY48 : std_logic ;
  begin
    if (_zy_sva_brcm_kdf_label0_8_30_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY48 := _zy_sva_b29 ;
      _zy_sva_brcm_kdf_label0_8_30_ccheck <= "1" ;
      if (DUMMY48 = '1') then
        _zy_sva_brcm_kdf_label0_8_30_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1857
  (clk,_zy_sva_brcm_kdf_label9_16_31_reset_or)
    variable DUMMY49 : std_logic ;
  begin
    if (_zy_sva_brcm_kdf_label9_16_31_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY49 := _zy_sva_b30 ;
      _zy_sva_brcm_kdf_label9_16_31_ccheck <= "1" ;
      if (DUMMY49 = '1') then
        _zy_sva_brcm_kdf_label9_16_31_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1874
  (clk,_zy_sva_brcm_kdf_label17_24_32_reset_or)
    variable DUMMY50 : std_logic ;
  begin
    if (_zy_sva_brcm_kdf_label17_24_32_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY50 := _zy_sva_b31 ;
      _zy_sva_brcm_kdf_label17_24_32_ccheck <= "1" ;
      if (DUMMY50 = '1') then
        _zy_sva_brcm_kdf_label17_24_32_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1891
  (clk,_zy_sva_brcm_kdf_label25_32_33_reset_or)
    variable DUMMY51 : std_logic ;
  begin
    if (_zy_sva_brcm_kdf_label25_32_33_reset_or = '1') then
    elsif (clk'event and clk = '1') then
      DUMMY51 := _zy_sva_b32 ;
      _zy_sva_brcm_kdf_label25_32_33_ccheck <= "1" ;
      if (DUMMY51 = '1') then
        _zy_sva_brcm_kdf_label25_32_33_cpass <= "1" ;
      end if;
    end if ;
  end process ;

  process --:o1908
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      stream_cmd_in <= it_multiple_concat(std_logic'('0'),263) ;
      gcm_dek_cmd_in <= it_multiple_concat(std_logic'('0'),611) ;
      gcm_dak_cmd_in <= it_multiple_concat(std_logic'('0'),611) ;
      gcm_dek_tag <=
       "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
       ;
      gcm_dak_tag <=
       "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
       ;
      skip_dek_kdf <= '0' ;
      skip_dak_kdf <= '0' ;
      kdf_dek_iter <= '0' ;
    elsif (clk'event and clk = '1') then
      stream_cmd_in <= stream_cmd_in_nxt ;
      gcm_dek_cmd_in <= gcm_dek_cmd_in_nxt ;
      gcm_dak_cmd_in <= gcm_dak_cmd_in_nxt ;
      gcm_dek_tag <= gcm_dek_tag_nxt ;
      gcm_dak_tag <= gcm_dak_tag_nxt ;
      skip_dek_kdf <= skip_dek_kdf_nxt ;
      skip_dak_kdf <= skip_dak_kdf_nxt ;
      kdf_dek_iter <= kdf_dek_iter_nxt ;
    end if ;
  end process ;

  process --:o1934
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      corrupt_kme_error_bit_0 <= '0' ;
      rst_corrupt_kme_error_bit_0 <= '0' ;
      corrupt_crc32 <= '0' ;
      rst_corrupt_crc32 <= '0' ;
    elsif (clk'event and clk = '1') then
      if (kme_internal_out_ack = '1') then
        if (kme_internal_out(64+3 downto 64) = KME_DEBUG_KEYHDR) then
          if (debug_cmd(31 downto 31) = USER) then
            if (debug_cmd(24+4 downto 24) = std_logic_vector'("11111")) then
              if (debug_cmd(23 downto 23) = FUNCTIONAL_ERROR) then
                if (debug_cmd(29+1 downto 29) = SINGLE_ERR) then

                  case debug_cmd(+0) is
                    when  '0'  =>
                      corrupt_kme_error_bit_0 <= '1' ;
                      rst_corrupt_kme_error_bit_0 <= '1' ;
                    when  '1'  =>
                      corrupt_crc32 <= '1' ;
                      rst_corrupt_crc32 <= '1' ;
                    when others => null ;
                  end case;
                end if;
                if (debug_cmd(29+1 downto 29) = CONTINUOUS_ERROR) then

                  case debug_cmd(+0) is
                    when  '0'  =>
                      corrupt_kme_error_bit_0 <= '1' ;
                    when  '1'  =>
                      corrupt_crc32 <= '1' ;
                    when others => null ;
                  end case;
                end if;
                if (debug_cmd(29+1 downto 29) = STOP) then

                  case debug_cmd(+0) is
                    when  '0'  =>
                      corrupt_kme_error_bit_0 <= '0' ;
                    when  '1'  =>
                      corrupt_crc32 <= '0' ;
                    when others => null ;
                  end case;
                end if;
              end if;
            end if;
          end if;
        end if;
        if (kme_internal_out(64+3 downto 64) = KME_ERROR) then
          if (rst_corrupt_kme_error_bit_0 = '1') then
            corrupt_kme_error_bit_0 <= '0' ;
            rst_corrupt_kme_error_bit_0 <= '0' ;
          end if;
          if (rst_corrupt_crc32 = '1') then
            corrupt_crc32 <= '0' ;
            rst_corrupt_crc32 <= '0' ;
          end if;
        end if;
      end if;
    end if ;
  end process ;

  process --:o2007
  (*)
    variable int_tlv_word0_DUMMY0 : kme_internal_word_0_t ;
    variable int_tlv_word8_DUMMY1 : kme_internal_word_8_t ;
    variable int_tlv_word9_DUMMY2 : kme_internal_word_9_t ;
    variable int_tlv_word42_DUMMY3 : kme_internal_word_42_t ;
    variable key_header_DUMMY4 : aux_key_ctrl_t ;
    variable gcm_dek_cmd_in_nxt_DUMMY5 : gcm_cmd_t ;
    variable gcm_dak_cmd_in_nxt_DUMMY6 : gcm_cmd_t ;
    variable gcm_dek_tag_nxt_DUMMY7 : std_logic_vector(95 downto 0) ;
    variable gcm_dak_tag_nxt_DUMMY8 : std_logic_vector(95 downto 0) ;
    variable kme_internal_out_ack_DUMMY9 : std_logic ;
  begin
    int_tlv_word0_DUMMY0 := int_tlv_word0;
    int_tlv_word8_DUMMY1 := int_tlv_word8;
    int_tlv_word9_DUMMY2 := int_tlv_word9;
    int_tlv_word42_DUMMY3 := int_tlv_word42;
    key_header_DUMMY4 := key_header;
    gcm_dek_cmd_in_nxt_DUMMY5 := gcm_dek_cmd_in_nxt;
    gcm_dak_cmd_in_nxt_DUMMY6 := gcm_dak_cmd_in_nxt;
    gcm_dek_tag_nxt_DUMMY7 := gcm_dek_tag_nxt;
    gcm_dak_tag_nxt_DUMMY8 := gcm_dak_tag_nxt;
    kme_internal_out_ack_DUMMY9 := kme_internal_out_ack;
    inspector_upsizer_valid <= '0' ;
    inspector_upsizer_eof <= '0' ;
    inspector_upsizer_data <=
     "0000000000000000000000000000000000000000000000000000000000000000" ;
    gcm_cmd_in_valid <= '0' ;
    gcm_cmd_in <= it_multiple_concat(std_logic'('0'),611) ;
    gcm_tag_data_in <=
     "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
     ;
    gcm_tag_data_in_valid <= '0' ;
    keyfilter_cmd_in_valid <= '0' ;
    keyfilter_cmd_in <= "0" ;
    kdf_cmd_in_valid <= '0' ;
    kdf_cmd_in <= "0000" ;
    kdfstream_cmd_in_valid <= '0' ;
    kdfstream_cmd_in <= it_multiple_concat(std_logic'('0'),263) ;
    tlv_sb_data_in_valid <= '0' ;
    tlv_sb_data_in <=
     "0000000000000000000000000000000000000000000000000000000000000000" ;
    int_tlv_word0_DUMMY0 := kme_internal_out(63 downto 0) ;
    int_tlv_word8_DUMMY1 := kme_internal_out(63 downto 0) ;
    int_tlv_word9_DUMMY2 := kme_internal_out(63 downto 0) ;
    int_tlv_word42_DUMMY3 := ext(kme_internal_out(63 downto 0),56) ;
    debug_cmd <= kme_internal_out(63 downto 32) ;
    key_header_DUMMY4 := kme_internal_out(31 downto 0) ;
    stream_cmd_in_nxt <= stream_cmd_in ;
    gcm_dek_cmd_in_nxt_DUMMY5 := gcm_dek_cmd_in ;
    gcm_dak_cmd_in_nxt_DUMMY6 := gcm_dak_cmd_in ;
    gcm_dek_tag_nxt_DUMMY7 := gcm_dek_tag ;
    gcm_dak_tag_nxt_DUMMY8 := gcm_dak_tag ;
    skip_dek_kdf_nxt <= skip_dek_kdf ;
    skip_dak_kdf_nxt <= skip_dak_kdf ;
    kdf_dek_iter_nxt <= kdf_dek_iter ;
    int_tlv_word42_DUMMY3(55 downto 55) := ext(corrupt_crc32,1) ;
    if (corrupt_kme_error_bit_0 = '1') then
      int_tlv_word42_DUMMY3(0) := not(kme_internal_out(+0)) ;
    end if;
    kme_internal_out_ack_DUMMY9 := kme_internal_out_valid ;
    if ((kme_internal_out(64+3 downto 64) = KME_DEK0 and 
    (upsizer_inspector_stall)='1')) then
      kme_internal_out_ack_DUMMY9 := '0' ;
    end if;
    if ((kme_internal_out(64+3 downto 64) = KME_DEK1 and 
    (upsizer_inspector_stall)='1')) then
      kme_internal_out_ack_DUMMY9 := '0' ;
    end if;
    if ((kme_internal_out(64+3 downto 64) = KME_DAK and (upsizer_inspector_stall
    )='1')) then
      kme_internal_out_ack_DUMMY9 := '0' ;
    end if;
    if (((kme_internal_out(64+3 downto 64) = KME_EIV and (kme_internal_out(69
     downto 69))/="0") and (gcm_cmd_in_stall)='1')) then
      kme_internal_out_ack_DUMMY9 := '0' ;
    end if;
    if (((kme_internal_out(64+3 downto 64) = KME_AIV and (kme_internal_out(69
     downto 69))/="0") and (gcm_cmd_in_stall)='1')) then
      kme_internal_out_ack_DUMMY9 := '0' ;
    end if;
    if (((kme_internal_out(64+3 downto 64) = KME_ETAG and (kme_internal_out(69
     downto 69))/="0") and (gcm_tag_data_in_stall)='1')) then
      kme_internal_out_ack_DUMMY9 := '0' ;
    end if;
    if (((kme_internal_out(64+3 downto 64) = KME_ATAG and (kme_internal_out(69
     downto 69))/="0") and (gcm_tag_data_in_stall)='1')) then
      kme_internal_out_ack_DUMMY9 := '0' ;
    end if;
    if (((kme_internal_out(64+3 downto 64) = KME_DEBUG_KEYHDR and 
    (kme_internal_out(69 downto 69))/="0") and (kdf_cmd_in_stall)='1')) then
      kme_internal_out_ack_DUMMY9 := '0' ;
    end if;
    if (((kme_internal_out(64+3 downto 64) = KME_DEBUG_KEYHDR and 
    (kme_internal_out(69 downto 69))/="0") and (keyfilter_cmd_in_stall)='1'))
     then
      kme_internal_out_ack_DUMMY9 := '0' ;
    end if;
    if ((kme_internal_out(64+3 downto 64) = KME_KIM and (kdfstream_cmd_in_stall
    )='1')) then
      kme_internal_out_ack_DUMMY9 := '0' ;
    end if;
    if (((kme_internal_out(64+3 downto 64) = KME_WORD0 and (kme_internal_out(69
     downto 69))/="0") and (tlv_sb_data_in_stall)='1')) then
      kme_internal_out_ack_DUMMY9 := '0' ;
    end if;
    if (((kme_internal_out(64+3 downto 64) = KME_GUID and 
    (kme_internal_out_valid)='1') and (tlv_sb_data_in_stall)='1')) then
      kme_internal_out_ack_DUMMY9 := '0' ;
    end if;
    if (((kme_internal_out(64+3 downto 64) = KME_IVTWEAK and 
    (kme_internal_out_valid)='1') and (tlv_sb_data_in_stall)='1')) then
      kme_internal_out_ack_DUMMY9 := '0' ;
    end if;
    if (((kme_internal_out(64+3 downto 64) = KME_ERROR and 
    (kme_internal_out_valid)='1') and (tlv_sb_data_in_stall)='1')) then
      kme_internal_out_ack_DUMMY9 := '0' ;
    end if;
    if (kme_internal_out_ack_DUMMY9 = '1') then
      if (kme_internal_out(64+3 downto 64) = KME_DEK0) then
        inspector_upsizer_valid <= '1' ;
        inspector_upsizer_data <= kme_internal_out(63 downto 0) ;
      end if;
      if (kme_internal_out(64+3 downto 64) = KME_DEK1) then
        inspector_upsizer_valid <= '1' ;
        inspector_upsizer_eof <= it_conv_std_logic(kme_internal_out(69 downto 69
        )) ;
        inspector_upsizer_data <= kme_internal_out(63 downto 0) ;
      end if;
      if (kme_internal_out(64+3 downto 64) = KME_DAK) then
        inspector_upsizer_valid <= '1' ;
        inspector_upsizer_eof <= it_conv_std_logic(kme_internal_out(69 downto 69
        )) ;
        inspector_upsizer_data <= kme_internal_out(63 downto 0) ;
      end if;
    end if;
    if (kme_internal_out_ack_DUMMY9 = '1') then
      if (kme_internal_out(64+3 downto 64) = KME_WORD0) then
        gcm_dek_cmd_in_nxt_DUMMY5 := it_multiple_concat(std_logic'('0'),611) ;
        gcm_dak_cmd_in_nxt_DUMMY6 := it_multiple_concat(std_logic'('0'),611) ;
        kdf_dek_iter_nxt <= it_conv_std_logic(int_tlv_word0_DUMMY0(48 downto 48)
        ) ;

        case int_tlv_word0_DUMMY0(39+5 downto 39) is
          when  "000000"  =>
            gcm_dek_cmd_in_nxt_DUMMY5(2 downto 0) := PT_KEY_BLOB ;
          when  "000001"  =>
            gcm_dek_cmd_in_nxt_DUMMY5(2 downto 0) := PT_CKV ;
          when  "000010"  =>
            gcm_dek_cmd_in_nxt_DUMMY5(2 downto 0) := PT_KEY_BLOB ;
          when  "000011"  =>
            gcm_dek_cmd_in_nxt_DUMMY5(2 downto 0) := PT_KEY_BLOB ;
          when  "000100"  =>
            gcm_dek_cmd_in_nxt_DUMMY5(2 downto 0) := PT_CKV ;
          when  "000101"  =>
            gcm_dek_cmd_in_nxt_DUMMY5(2 downto 0) := PT_KEY_BLOB ;
          when  "000110"  =>
            gcm_dek_cmd_in_nxt_DUMMY5(2 downto 0) := PT_KEY_BLOB ;
          when  "000111"  =>
            gcm_dek_cmd_in_nxt_DUMMY5(2 downto 0) := DECRYPT_DEK256 ;
          when  "001000"  =>
            gcm_dek_cmd_in_nxt_DUMMY5(2 downto 0) := DECRYPT_DEK512 ;
          when  "001001"  =>
            gcm_dek_cmd_in_nxt_DUMMY5(2 downto 0) := PT_CKV ;
          when  "001010"  =>
            gcm_dek_cmd_in_nxt_DUMMY5(2 downto 0) := DECRYPT_DEK256 ;
          when  "001011"  =>
            gcm_dek_cmd_in_nxt_DUMMY5(2 downto 0) := DECRYPT_DEK512 ;
          when  "001100"  =>
            gcm_dek_cmd_in_nxt_DUMMY5(2 downto 0) := DECRYPT_DEK256_COMB ;
          when  "001101"  =>
            gcm_dek_cmd_in_nxt_DUMMY5(2 downto 0) := DECRYPT_DEK512_COMB ;
          when others => null ;
        end case;

        case int_tlv_word0_DUMMY0(39+5 downto 39) is
          when  "000000"  =>
            gcm_dak_cmd_in_nxt_DUMMY6(2 downto 0) := PT_KEY_BLOB ;
          when  "000001"  =>
            gcm_dak_cmd_in_nxt_DUMMY6(2 downto 0) := PT_CKV ;
          when  "000010"  =>
            gcm_dak_cmd_in_nxt_DUMMY6(2 downto 0) := PT_CKV ;
          when  "000011"  =>
            gcm_dak_cmd_in_nxt_DUMMY6(2 downto 0) := PT_CKV ;
          when  "000100"  =>
            gcm_dak_cmd_in_nxt_DUMMY6(2 downto 0) := PT_KEY_BLOB ;
          when  "000101"  =>
            gcm_dak_cmd_in_nxt_DUMMY6(2 downto 0) := PT_KEY_BLOB ;
          when  "000110"  =>
            gcm_dak_cmd_in_nxt_DUMMY6(2 downto 0) := PT_KEY_BLOB ;
          when  "000111"  =>
            gcm_dak_cmd_in_nxt_DUMMY6(2 downto 0) := PT_CKV ;
          when  "001000"  =>
            gcm_dak_cmd_in_nxt_DUMMY6(2 downto 0) := PT_CKV ;
          when  "001001"  =>
            gcm_dak_cmd_in_nxt_DUMMY6(2 downto 0) := DECRYPT_DAK ;
          when  "001010"  =>
            gcm_dak_cmd_in_nxt_DUMMY6(2 downto 0) := DECRYPT_DAK ;
          when  "001011"  =>
            gcm_dak_cmd_in_nxt_DUMMY6(2 downto 0) := DECRYPT_DAK ;
          when  "001100"  =>
            gcm_dak_cmd_in_nxt_DUMMY6(2 downto 0) := DECRYPT_DAK_COMB ;
          when  "001101"  =>
            gcm_dak_cmd_in_nxt_DUMMY6(2 downto 0) := DECRYPT_DAK_COMB ;
          when others => null ;
        end case;
      end if;
      if (kme_internal_out(64+3 downto 64) = KME_DEK_CKV0) then
        gcm_dek_cmd_in_nxt_DUMMY5(355+255 downto 355) := std_logic_vector'
        (gcm_dek_cmd_in_nxt_DUMMY5(546 downto 355) & kme_internal_out(63 downto
         0)) ;
      end if;
      if (kme_internal_out(64+3 downto 64) = KME_DEK_CKV1) then
        gcm_dek_cmd_in_nxt_DUMMY5(99+255 downto 99) := std_logic_vector'
        (gcm_dek_cmd_in_nxt_DUMMY5(290 downto 99) & kme_internal_out(63 downto 0
        )) ;
      end if;
      if (kme_internal_out(64+3 downto 64) = KME_DAK_CKV) then
        gcm_dak_cmd_in_nxt_DUMMY6(355+255 downto 355) := std_logic_vector'
        (gcm_dak_cmd_in_nxt_DUMMY6(546 downto 355) & kme_internal_out(63 downto
         0)) ;
        gcm_dak_cmd_in_nxt_DUMMY6(99+255 downto 99) := std_logic_vector'
        (gcm_dak_cmd_in_nxt_DUMMY6(290 downto 99) & kme_internal_out(63 downto 0
        )) ;
      end if;
      if (kme_internal_out(64+3 downto 64) = KME_EIV) then

        case kme_internal_out(69 downto 69) is
          when  "0"  =>
            gcm_dek_cmd_in_nxt_DUMMY5(98 downto 35) := kme_internal_out(63
             downto 0) ;
          when  "1"  =>
            gcm_dek_cmd_in_nxt_DUMMY5(34 downto 3) := kme_internal_out(63 downto
             32) ;
          when others => null ;
        end case;
        if (kme_internal_out(69 downto 69) /= "0") then
          gcm_cmd_in_valid <= '1' ;
        end if;
        if (kme_internal_out(69 downto 69) /= "0") then
          gcm_cmd_in <= gcm_dek_cmd_in_nxt_DUMMY5 ;
        end if;
      end if;
      if (kme_internal_out(64+3 downto 64) = KME_AIV) then

        case kme_internal_out(69 downto 69) is
          when  "0"  =>
            gcm_dak_cmd_in_nxt_DUMMY6(98 downto 35) := kme_internal_out(63
             downto 0) ;
          when  "1"  =>
            gcm_dak_cmd_in_nxt_DUMMY6(34 downto 3) := kme_internal_out(63 downto
             32) ;
          when others => null ;
        end case;
        if (kme_internal_out(69 downto 69) /= "0") then
          gcm_cmd_in_valid <= '1' ;
        end if;
        if (kme_internal_out(69 downto 69) /= "0") then
          gcm_cmd_in <= gcm_dak_cmd_in_nxt_DUMMY6 ;
        end if;
      end if;
    end if;
    if (kme_internal_out_ack_DUMMY9 = '1') then
      if (kme_internal_out(64+3 downto 64) = KME_ETAG) then

        case kme_internal_out(69 downto 69) is
          when  "0"  =>
            gcm_dek_tag_nxt_DUMMY7(95 downto 32) := kme_internal_out(63 downto 0
            ) ;
          when  "1"  =>
            gcm_dek_tag_nxt_DUMMY7(31 downto 0) := kme_internal_out(63 downto 32
            ) ;
          when others => null ;
        end case;
        if (kme_internal_out(69 downto 69) /= "0") then
          gcm_tag_data_in_valid <= '1' ;
        end if;
        if (kme_internal_out(69 downto 69) /= "0") then
          gcm_tag_data_in <= gcm_dek_tag_nxt_DUMMY7 ;
        end if;
      end if;
      if (kme_internal_out(64+3 downto 64) = KME_ATAG) then

        case kme_internal_out(69 downto 69) is
          when  "0"  =>
            gcm_dak_tag_nxt_DUMMY8(95 downto 32) := kme_internal_out(63 downto 0
            ) ;
          when  "1"  =>
            gcm_dak_tag_nxt_DUMMY8(31 downto 0) := kme_internal_out(63 downto 32
            ) ;
          when others => null ;
        end case;
        if (kme_internal_out(69 downto 69) /= "0") then
          gcm_tag_data_in_valid <= '1' ;
        end if;
        if (kme_internal_out(69 downto 69) /= "0") then
          gcm_tag_data_in <= gcm_dak_tag_nxt_DUMMY8 ;
        end if;
      end if;
    end if;
    if (kme_internal_out_ack_DUMMY9 = '1') then
      if (kme_internal_out(64+3 downto 64) = KME_DEBUG_KEYHDR) then
        kdf_cmd_in_valid <= '1' ;
        kdf_cmd_in(1 downto 1) <= key_header_DUMMY4(14 downto 14) ;
        kdf_cmd_in(0 downto 0) <= key_header_DUMMY4(31 downto 31) ;
        kdf_cmd_in(2 downto 2) <= (boolean_to_std(key_header_DUMMY4(15+1 downto
         15) = KDF_MODE_COMB_GUID,1) or boolean_to_std(key_header_DUMMY4(15+1
         downto 15) = KDF_MODE_COMB_RGUID,1)) ;
        skip_dek_kdf_nxt <= boolean_to_std(key_header_DUMMY4(14 downto 14) =
         NOOP) ;
        skip_dak_kdf_nxt <= boolean_to_std(key_header_DUMMY4(31 downto 31) =
         NOOP) ;
        kdf_cmd_in(3 downto 3) <= ext(kdf_dek_iter,1) ;
        keyfilter_cmd_in_valid <= '1' ;
        keyfilter_cmd_in(0 downto 0) <= (boolean_to_std(key_header_DUMMY4(15+1
         downto 15) = KDF_MODE_COMB_GUID,1) or boolean_to_std(key_header_DUMMY4
        (15+1 downto 15) = KDF_MODE_COMB_RGUID,1)) ;
      end if;
    end if;
    if (kme_internal_out_ack_DUMMY9 = '1') then
      if (kme_internal_out(64+3 downto 64) = KME_DEBUG_KEYHDR) then
        stream_cmd_in_nxt <= it_multiple_concat(std_logic'('0'),263) ;
        if ((key_header_DUMMY4(15+1 downto 15) = KDF_MODE_GUID or
         key_header_DUMMY4(15+1 downto 15) = KDF_MODE_RGUID)) then
          stream_cmd_in_nxt(1 downto 0) <= (std_logic_vector'("01") +
           std_logic_vector'(std_logic'('0') & kdf_dek_iter)) ;
          stream_cmd_in_nxt(262 downto 262) <= "0" ;
        else
          stream_cmd_in_nxt(1 downto 0) <= (std_logic_vector'("10") +
           std_logic_vector'(std_logic'('0') & kdf_dek_iter)) ;
          stream_cmd_in_nxt(262 downto 262) <= "1" ;
        end if;
      end if;
      if (kme_internal_out(64+3 downto 64) = KME_GUID) then
        stream_cmd_in_nxt(5+255 downto 5) <= std_logic_vector'(stream_cmd_in(196
         downto 5) & kme_internal_out(63 downto 0)) ;
      end if;
      if (kme_internal_out(64+3 downto 64) = KME_KIM) then
        if (kme_internal_out(69 downto 69) = std_logic_vector'("0")) then
          kdfstream_cmd_in_valid <= '1' ;
          kdfstream_cmd_in <= stream_cmd_in ;
          kdfstream_cmd_in(2+2 downto 2) <= int_tlv_word8_DUMMY1(60+2 downto 60)
           ;
          if ((stream_cmd_in(262 downto 262) = "0")) then
            kdfstream_cmd_in(261 downto 261) <= ext(skip_dek_kdf,1) ;
          end if;
        else
          if ((stream_cmd_in(262 downto 262) = "0")) then
            kdfstream_cmd_in_valid <= '1' ;
            kdfstream_cmd_in <= stream_cmd_in ;
            kdfstream_cmd_in(2+2 downto 2) <= int_tlv_word9_DUMMY2(60+2 downto
             60) ;
            kdfstream_cmd_in(1 downto 0) <= "01" ;
            kdfstream_cmd_in(261 downto 261) <= ext(skip_dak_kdf,1) ;
          end if;
        end if;
      end if;
    end if;
    if (kme_internal_out_ack_DUMMY9 = '1') then
      if (kme_internal_out(64+3 downto 64) = KME_WORD0) then
        tlv_sb_data_in_valid <= '1' ;
        tlv_sb_data_in <= kme_internal_out(63 downto 0) ;
      end if;
      if (kme_internal_out(64+3 downto 64) = KME_GUID) then
        tlv_sb_data_in_valid <= '1' ;
        tlv_sb_data_in <= kme_internal_out(63 downto 0) ;
      end if;
      if (kme_internal_out(64+3 downto 64) = KME_IVTWEAK) then
        tlv_sb_data_in_valid <= '1' ;
        tlv_sb_data_in <= kme_internal_out(63 downto 0) ;
      end if;
      if (kme_internal_out(64+3 downto 64) = KME_ERROR) then
        tlv_sb_data_in_valid <= '1' ;
        tlv_sb_data_in <= ext(int_tlv_word42_DUMMY3,64) ;
      end if;
    end if;
    int_tlv_word0 <= transport int_tlv_word0_DUMMY0;
    int_tlv_word8 <= int_tlv_word8_DUMMY1;
    int_tlv_word9 <= int_tlv_word9_DUMMY2;
    int_tlv_word42 <= int_tlv_word42_DUMMY3;
    key_header <= key_header_DUMMY4;
    gcm_dek_cmd_in_nxt <= gcm_dek_cmd_in_nxt_DUMMY5;
    gcm_dak_cmd_in_nxt <= gcm_dak_cmd_in_nxt_DUMMY6;
    gcm_dek_tag_nxt <= gcm_dek_tag_nxt_DUMMY7;
    gcm_dak_tag_nxt <= gcm_dak_tag_nxt_DUMMY8;
    kme_internal_out_ack <= kme_internal_out_ack_DUMMY9;
  end process ;

  process --:o2314
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      dek_ckv_length_q <= "00" ;
      kek_tag_q <= '0' ;
    elsif (clk'event and clk = '1') then
      if (kme_internal_out_ack = '1') then
        if (kme_internal_out(64+3 downto 64) = KME_KIM) then
          if (kme_internal_out(69 downto 69) = std_logic_vector'("0")) then
            dek_ckv_length_q <= int_tlv_word8(58+1 downto 58) ;
            kek_tag_q <= int_tlv_word8(+3+12) ;
          end if;
        end if;
      end if;
    end if ;
  end process ;
  Generate1 : if op_0_ : (TRUE) generate
    constant ii : integer := 0 ;
  begin

    process --:o2339
    (**) -- always_comb
    begin
      $axis_assert( "brcm_gcm", std_logic'('0'), std_logic_vector'("10"), " ",
       " ", " ", " ", " ", " ", _zy_sva_brcm_gcm_10_cpass, " ",
       _zy_sva_brcm_gcm_10_ccheck, " ",
       "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
       573, std_logic_vector'("000"));
    end process ;
  end generate ;
  Generate2 : if op_1_ : (TRUE) generate
    constant ii : integer := 1 ;
  begin

    process --:o2345
    (**) -- always_comb
    begin
      $axis_assert( "brcm_gcm", std_logic'('0'), std_logic_vector'("10"), " ",
       " ", " ", " ", " ", " ", _zy_sva_brcm_gcm_11_cpass, " ",
       _zy_sva_brcm_gcm_11_ccheck, " ",
       "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
       573, std_logic_vector'("000"));
    end process ;
  end generate ;
  Generate3 : if op_2_ : (TRUE) generate
    constant ii : integer := 2 ;
  begin

    process --:o2351
    (**) -- always_comb
    begin
      $axis_assert( "brcm_gcm", std_logic'('0'), std_logic_vector'("10"), " ",
       " ", " ", " ", " ", " ", _zy_sva_brcm_gcm_12_cpass, " ",
       _zy_sva_brcm_gcm_12_ccheck, " ",
       "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
       573, std_logic_vector'("000"));
    end process ;
  end generate ;
  Generate4 : if op_3_ : (TRUE) generate
    constant ii : integer := 3 ;
  begin

    process --:o2357
    (**) -- always_comb
    begin
      $axis_assert( "brcm_gcm", std_logic'('0'), std_logic_vector'("10"), " ",
       " ", " ", " ", " ", " ", _zy_sva_brcm_gcm_13_cpass, " ",
       _zy_sva_brcm_gcm_13_ccheck, " ",
       "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
       573, std_logic_vector'("000"));
    end process ;
  end generate ;
  Generate5 : if op_4_ : (TRUE) generate
    constant ii : integer := 4 ;
  begin

    process --:o2363
    (**) -- always_comb
    begin
      $axis_assert( "brcm_gcm", std_logic'('0'), std_logic_vector'("10"), " ",
       " ", " ", " ", " ", " ", _zy_sva_brcm_gcm_14_cpass, " ",
       _zy_sva_brcm_gcm_14_ccheck, " ",
       "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
       573, std_logic_vector'("000"));
    end process ;
  end generate ;
  Generate6 : if op_5_ : (TRUE) generate
    constant ii : integer := 5 ;
  begin

    process --:o2369
    (**) -- always_comb
    begin
      $axis_assert( "brcm_gcm", std_logic'('0'), std_logic_vector'("10"), " ",
       " ", " ", " ", " ", " ", _zy_sva_brcm_gcm_15_cpass, " ",
       _zy_sva_brcm_gcm_15_ccheck, " ",
       "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
       573, std_logic_vector'("000"));
    end process ;
  end generate ;
  Generate7 : if op_6_ : (TRUE) generate
    constant ii : integer := 6 ;
  begin

    process --:o2375
    (**) -- always_comb
    begin
      $axis_assert( "brcm_gcm", std_logic'('0'), std_logic_vector'("10"), " ",
       " ", " ", " ", " ", " ", _zy_sva_brcm_gcm_16_cpass, " ",
       _zy_sva_brcm_gcm_16_ccheck, " ",
       "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
       573, std_logic_vector'("000"));
    end process ;
  end generate ;
  Generate8 : if op_7_ : (TRUE) generate
    constant ii : integer := 7 ;
  begin

    process --:o2381
    (**) -- always_comb
    begin
      $axis_assert( "brcm_gcm", std_logic'('0'), std_logic_vector'("10"), " ",
       " ", " ", " ", " ", " ", _zy_sva_brcm_gcm_17_cpass, " ",
       _zy_sva_brcm_gcm_17_ccheck, " ",
       "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
       573, std_logic_vector'("000"));
    end process ;
  end generate ;
  Generate9 : if guid_0_ : (TRUE) generate
    constant ii : integer := 0 ;
  begin
    Generate10 : if delimiter_0_ : (TRUE) generate
      constant jj : integer := 0 ;
    begin

      process --:o2391
      (**) -- always_comb
      begin
        $axis_assert( "brcm_kdf_label0_8", std_logic'('0'), std_logic_vector'
        ("10"), " ", " ", " ", " ", " ", " ",
         _zy_sva_brcm_kdf_label0_8_18_cpass, " ",
         _zy_sva_brcm_kdf_label0_8_18_ccheck, " ",
         "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
         595, std_logic_vector'("000"));
      end process ;

      process --:o2392
      (**) -- always_comb
      begin
        $axis_assert( "brcm_kdf_label9_16", std_logic'('0'), std_logic_vector'
        ("10"), " ", " ", " ", " ", " ", " ",
         _zy_sva_brcm_kdf_label9_16_19_cpass, " ",
         _zy_sva_brcm_kdf_label9_16_19_ccheck, " ",
         "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
         600, std_logic_vector'("000"));
      end process ;

      process --:o2393
      (**) -- always_comb
      begin
        $axis_assert( "brcm_kdf_label17_24", std_logic'('0'), std_logic_vector'
        ("10"), " ", " ", " ", " ", " ", " ",
         _zy_sva_brcm_kdf_label17_24_20_cpass, " ",
         _zy_sva_brcm_kdf_label17_24_20_ccheck, " ",
         "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
         605, std_logic_vector'("000"));
      end process ;

      process --:o2394
      (**) -- always_comb
      begin
        $axis_assert( "brcm_kdf_label25_32", std_logic'('0'), std_logic_vector'
        ("10"), " ", " ", " ", " ", " ", " ",
         _zy_sva_brcm_kdf_label25_32_21_cpass, " ",
         _zy_sva_brcm_kdf_label25_32_21_ccheck, " ",
         "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
         610, std_logic_vector'("000"));
      end process ;
    end generate ;
    Generate11 : if delimiter_1_ : (TRUE) generate
      constant jj : integer := 1 ;
    begin

      process --:o2400
      (**) -- always_comb
      begin
        $axis_assert( "brcm_kdf_label0_8", std_logic'('0'), std_logic_vector'
        ("10"), " ", " ", " ", " ", " ", " ",
         _zy_sva_brcm_kdf_label0_8_22_cpass, " ",
         _zy_sva_brcm_kdf_label0_8_22_ccheck, " ",
         "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
         595, std_logic_vector'("000"));
      end process ;

      process --:o2401
      (**) -- always_comb
      begin
        $axis_assert( "brcm_kdf_label9_16", std_logic'('0'), std_logic_vector'
        ("10"), " ", " ", " ", " ", " ", " ",
         _zy_sva_brcm_kdf_label9_16_23_cpass, " ",
         _zy_sva_brcm_kdf_label9_16_23_ccheck, " ",
         "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
         600, std_logic_vector'("000"));
      end process ;

      process --:o2402
      (**) -- always_comb
      begin
        $axis_assert( "brcm_kdf_label17_24", std_logic'('0'), std_logic_vector'
        ("10"), " ", " ", " ", " ", " ", " ",
         _zy_sva_brcm_kdf_label17_24_24_cpass, " ",
         _zy_sva_brcm_kdf_label17_24_24_ccheck, " ",
         "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
         605, std_logic_vector'("000"));
      end process ;

      process --:o2403
      (**) -- always_comb
      begin
        $axis_assert( "brcm_kdf_label25_32", std_logic'('0'), std_logic_vector'
        ("10"), " ", " ", " ", " ", " ", " ",
         _zy_sva_brcm_kdf_label25_32_25_cpass, " ",
         _zy_sva_brcm_kdf_label25_32_25_ccheck, " ",
         "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
         610, std_logic_vector'("000"));
      end process ;
    end generate ;
  end generate ;
  Generate12 : if guid_1_ : (TRUE) generate
    constant ii : integer := 1 ;
  begin
    Generate13 : if delimiter_0_ : (TRUE) generate
      constant jj : integer := 0 ;
    begin

      process --:o2414
      (**) -- always_comb
      begin
        $axis_assert( "brcm_kdf_label0_8", std_logic'('0'), std_logic_vector'
        ("10"), " ", " ", " ", " ", " ", " ",
         _zy_sva_brcm_kdf_label0_8_26_cpass, " ",
         _zy_sva_brcm_kdf_label0_8_26_ccheck, " ",
         "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
         595, std_logic_vector'("000"));
      end process ;

      process --:o2415
      (**) -- always_comb
      begin
        $axis_assert( "brcm_kdf_label9_16", std_logic'('0'), std_logic_vector'
        ("10"), " ", " ", " ", " ", " ", " ",
         _zy_sva_brcm_kdf_label9_16_27_cpass, " ",
         _zy_sva_brcm_kdf_label9_16_27_ccheck, " ",
         "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
         600, std_logic_vector'("000"));
      end process ;

      process --:o2416
      (**) -- always_comb
      begin
        $axis_assert( "brcm_kdf_label17_24", std_logic'('0'), std_logic_vector'
        ("10"), " ", " ", " ", " ", " ", " ",
         _zy_sva_brcm_kdf_label17_24_28_cpass, " ",
         _zy_sva_brcm_kdf_label17_24_28_ccheck, " ",
         "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
         605, std_logic_vector'("000"));
      end process ;

      process --:o2417
      (**) -- always_comb
      begin
        $axis_assert( "brcm_kdf_label25_32", std_logic'('0'), std_logic_vector'
        ("10"), " ", " ", " ", " ", " ", " ",
         _zy_sva_brcm_kdf_label25_32_29_cpass, " ",
         _zy_sva_brcm_kdf_label25_32_29_ccheck, " ",
         "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
         610, std_logic_vector'("000"));
      end process ;
    end generate ;
    Generate14 : if delimiter_1_ : (TRUE) generate
      constant jj : integer := 1 ;
    begin

      process --:o2423
      (**) -- always_comb
      begin
        $axis_assert( "brcm_kdf_label0_8", std_logic'('0'), std_logic_vector'
        ("10"), " ", " ", " ", " ", " ", " ",
         _zy_sva_brcm_kdf_label0_8_30_cpass, " ",
         _zy_sva_brcm_kdf_label0_8_30_ccheck, " ",
         "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
         595, std_logic_vector'("000"));
      end process ;

      process --:o2424
      (**) -- always_comb
      begin
        $axis_assert( "brcm_kdf_label9_16", std_logic'('0'), std_logic_vector'
        ("10"), " ", " ", " ", " ", " ", " ",
         _zy_sva_brcm_kdf_label9_16_31_cpass, " ",
         _zy_sva_brcm_kdf_label9_16_31_ccheck, " ",
         "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
         600, std_logic_vector'("000"));
      end process ;

      process --:o2425
      (**) -- always_comb
      begin
        $axis_assert( "brcm_kdf_label17_24", std_logic'('0'), std_logic_vector'
        ("10"), " ", " ", " ", " ", " ", " ",
         _zy_sva_brcm_kdf_label17_24_32_cpass, " ",
         _zy_sva_brcm_kdf_label17_24_32_ccheck, " ",
         "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
         605, std_logic_vector'("000"));
      end process ;

      process --:o2426
      (**) -- always_comb
      begin
        $axis_assert( "brcm_kdf_label25_32", std_logic'('0'), std_logic_vector'
        ("10"), " ", " ", " ", " ", " ", " ",
         _zy_sva_brcm_kdf_label25_32_33_cpass, " ",
         _zy_sva_brcm_kdf_label25_32_33_ccheck, " ",
         "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
         610, std_logic_vector'("000"));
      end process ;
    end generate ;
  end generate ;

  process --:o2429
  (**) -- always_comb
  begin
    $axis_assert( "brcm_gcm_dek256_with_512bit_key", std_logic'('0'),
     std_logic_vector'("10"), " ", " ", " ", " ", " ", " ",
     _zy_sva_brcm_gcm_dek256_with_512bit_key_1_cpass, " ",
     _zy_sva_brcm_gcm_dek256_with_512bit_key_1_ccheck, " ",
     "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
     577, std_logic_vector'("000"));
  end process ;

  process --:o2430
  (**) -- always_comb
  begin
    $axis_assert( "brcm_gcm_dek512_with_512bit_key", std_logic'('0'),
     std_logic_vector'("10"), " ", " ", " ", " ", " ", " ",
     _zy_sva_brcm_gcm_dek512_with_512bit_key_2_cpass, " ",
     _zy_sva_brcm_gcm_dek512_with_512bit_key_2_ccheck, " ",
     "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
     578, std_logic_vector'("000"));
  end process ;

  process --:o2431
  (**) -- always_comb
  begin
    $axis_assert( "brcm_gcm_dek256dak_with_512bit_key", std_logic'('0'),
     std_logic_vector'("10"), " ", " ", " ", " ", " ", " ",
     _zy_sva_brcm_gcm_dek256dak_with_512bit_key_3_cpass, " ",
     _zy_sva_brcm_gcm_dek256dak_with_512bit_key_3_ccheck, " ",
     "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
     579, std_logic_vector'("000"));
  end process ;

  process --:o2432
  (**) -- always_comb
  begin
    $axis_assert( "brcm_gcm_dek512dak_with_512bit_key", std_logic'('0'),
     std_logic_vector'("10"), " ", " ", " ", " ", " ", " ",
     _zy_sva_brcm_gcm_dek512dak_with_512bit_key_4_cpass, " ",
     _zy_sva_brcm_gcm_dek512dak_with_512bit_key_4_ccheck, " ",
     "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
     580, std_logic_vector'("000"));
  end process ;

  process --:o2433
  (**) -- always_comb
  begin
    $axis_assert( "brcm_gcm_enc_dek256_no_kbk", std_logic'('0'),
     std_logic_vector'("10"), " ", " ", " ", " ", " ", " ",
     _zy_sva_brcm_gcm_enc_dek256_no_kbk_5_cpass, " ",
     _zy_sva_brcm_gcm_enc_dek256_no_kbk_5_ccheck, " ",
     "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
     583, std_logic_vector'("000"));
  end process ;

  process --:o2434
  (**) -- always_comb
  begin
    $axis_assert( "brcm_gcm_enc_dek512_no_kbk", std_logic'('0'),
     std_logic_vector'("10"), " ", " ", " ", " ", " ", " ",
     _zy_sva_brcm_gcm_enc_dek512_no_kbk_6_cpass, " ",
     _zy_sva_brcm_gcm_enc_dek512_no_kbk_6_ccheck, " ",
     "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
     584, std_logic_vector'("000"));
  end process ;

  process --:o2435
  (**) -- always_comb
  begin
    $axis_assert( "brcm_gcm_enc_dek256_comb_no_kbk", std_logic'('0'),
     std_logic_vector'("10"), " ", " ", " ", " ", " ", " ",
     _zy_sva_brcm_gcm_enc_dek256_comb_no_kbk_7_cpass, " ",
     _zy_sva_brcm_gcm_enc_dek256_comb_no_kbk_7_ccheck, " ",
     "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
     585, std_logic_vector'("000"));
  end process ;

  process --:o2436
  (**) -- always_comb
  begin
    $axis_assert( "brcm_gcm_enc_dek512_comb_no_kbk", std_logic'('0'),
     std_logic_vector'("10"), " ", " ", " ", " ", " ", " ",
     _zy_sva_brcm_gcm_enc_dek512_comb_no_kbk_8_cpass, " ",
     _zy_sva_brcm_gcm_enc_dek512_comb_no_kbk_8_ccheck, " ",
     "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
     586, std_logic_vector'("000"));
  end process ;

  process --:o2437
  (**) -- always_comb
  begin
    $axis_assert( "brcm_tlv_sb_stall_on_guid", std_logic'('0'),
     std_logic_vector'("10"), " ", " ", " ", " ", " ", " ",
     _zy_sva_brcm_tlv_sb_stall_on_guid_9_cpass, " ",
     _zy_sva_brcm_tlv_sb_stall_on_guid_9_ccheck, " ",
     "/home/ibarry/Project-Zipline-master/rtl/cr_kme/cr_kme_kop_tlv_inspector.v",
     615, std_logic_vector'("000"));
  end process ;
end module;
