architecture module of nx_interface_monitor_xcm104 is
  -- quickturn multiple_driver_resolution
  -- quickturn CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component ixc_context_read
    generic (
      WIDTH : std_logic_vector := signed(integer_to_std(32,32))
    ) ;
    port (
    rdata : in std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
    (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0
    ) := (others => 'X') ) ;
  end component ;

  component sync_fifo
    generic (
      DATAWIDTH : integer := 96 ;
      DEPTH : integer := 8 ;
      RD_REG_MODE : integer := 0 ;
      RD_LATCH_MODE : integer := 0
    ) ;
    port (
      dout : out std_logic_vector(95 downto 0) ;
      full : out std_logic ;
      empty : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      din : in std_logic_vector(95 downto 0) := (others => 'X') ;
      wr_en : in std_logic := 'X' ;
      rd_en : in std_logic := 'X' ;
    space_avail : out std_logic_vector(3 downto 0) ) ;
  end component ;

  component nx_credit_manager
    generic (
      N_MAX_CREDITS : integer := 512 ;
      N_USED_LAG_CYCLES : integer := 0 ;
      N_MAX_CREDITS_PER_CYCLE : integer := 256 ;
      N_OUTSTANDING_CREDITS : integer := 0 ;
      subtype hw_status_t is std_logic_vector(11 downto 0) ;
      subtype sw_config_t is std_logic_vector(11 downto 0)
    ) ;
    port (
      credit_available : out std_logic_vector(8 downto 0) ;
      hw_status : out hw_status_t ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      sw_init : in std_logic := 'X' ;
      credit_return : in std_logic_vector(8 downto 0) := (others => 'X') ;
      credit_used : in std_logic_vector(8 downto 0) := (others => 'X') ;
    sw_config : in sw_config_t := (others => '0') ) ;
  end component ;

  component nx_ram_1rw_xcm110
    generic (
      WIDTH : integer := signed_int(sxt("00000000000000000000000001100000",32))
       ;
      BWEWIDTH : integer := signed_int(sxt("00000000000000000000000001100000",32
      )) ;
      DEPTH : integer := 512 ;
      SPECIALIZE : integer := 1 ;
      LATCH : integer := 0
    ) ;
    port (
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      ovstb : in std_logic := 'X' ;
      lvm : in std_logic := 'X' ;
      mlvm : in std_logic := 'X' ;
      mrdten : in std_logic := 'X' ;
      bimc_rst_n : in std_logic := 'X' ;
      bimc_isync : in std_logic := 'X' ;
      bimc_idat : in std_logic := 'X' ;
      bimc_odat : out std_logic ;
      bimc_osync : out std_logic ;
      ro_uncorrectable_ecc_error : out std_logic ;
      bwe : in std_logic_vector(95 downto 0) := (others => 'X') ;
      din : in std_logic_vector(95 downto 0) := (others => 'X') ;
      add : in std_logic_vector(8 downto 0) := (others => 'X') ;
      cs : in std_logic := 'X' ;
      we : in std_logic := 'X' ;
    dout : out std_logic_vector(95 downto 0) ) ;
  end component ;

  component nx_indirect_access_cntrl_xcm120
    generic (
      MEM_TYPE : std_logic_vector := std_logic_vector'("0000") ;
      CMND_ADDRESS : std_logic_vector := std_logic_vector'("00001010000") ;
      STAT_ADDRESS : std_logic_vector := std_logic_vector'("00001000000") ;
      ALIGNMENT : integer := 2 ;
      N_TIMER_BITS : integer := 6 ;
      N_REG_ADDR_BITS : integer := 11 ;
      N_DATA_BITS : integer := 96 ;
      N_TABLES : integer := 1 ;
      N_ENTRIES : integer := 512 ;
      N_INIT_INC_BITS : integer := 0 ;
      CAPABILITIES : std_logic_vector(15 downto 0) := std_logic_vector'
      ("1100000101111111") ;
      RESET_DATA : std_logic_vector(95 downto 0) := std_logic_vector'
      ("000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
      ) ;
      type DUMMY0 is array(integer range <>) of std_logic_vector(8 downto 0)
    ) ;
    port (
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      wr_stb : in std_logic := 'X' ;
      reg_addr : in std_logic_vector(10 downto 0) := (others => 'X') ;
      cmnd_op : in std_logic_vector(3 downto 0) := (others => 'X') ;
      cmnd_addr : in std_logic_vector(8 downto 0) := (others => 'X') ;
      cmnd_table_id : in std_logic_vector(0 downto 0) := (others => 'X') ;
      stat_code : out std_logic_vector(2 downto 0) ;
      stat_datawords : out std_logic_vector(4 downto 0) ;
      stat_addr : out std_logic_vector(8 downto 0) ;
      stat_table_id : out std_logic_vector(0 downto 0) ;
      capability_lst : out std_logic_vector(15 downto 0) ;
      capability_type : out std_logic_vector(3 downto 0) ;
      enable : out std_logic ;
      addr_limit : in DUMMY0(0 downto 0) := (others => (others => 'X')) ;
      wr_dat : in std_logic_vector(95 downto 0) := (others => 'X') ;
      rd_dat : out std_logic_vector(95 downto 0) ;
      sw_cs : out std_logic ;
      sw_ce : out std_logic ;
      sw_we : out std_logic ;
      sw_add : out std_logic_vector(8 downto 0) ;
      sw_wdat : out std_logic_vector(95 downto 0) ;
      sw_rdat : in std_logic_vector(95 downto 0) := (others => 'X') ;
      sw_match : in std_logic := 'X' ;
      sw_aindex : in std_logic_vector(7 downto 0) := (others => 'X') ;
      grant : in std_logic := 'X' ;
      yield : out std_logic ;
    reset : out std_logic ) ;
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
  type $_sw_config_t is
  record
    dis_used : std_logic ;
    dis_return : std_logic ;
    credit_limit : std_logic_vector(9 downto 0) ;
  end record ;
  subtype sw_config_t is $_sw_config_t std_logic_vector(11 downto 0) ;
  type $_hw_status_t is
  record
    used_err : std_logic ;
    return_err : std_logic ;
    credit_issued : std_logic_vector(9 downto 0) ;
  end record ;
  subtype hw_status_t is $_hw_status_t std_logic_vector(11 downto 0) ;
  signal DUMMY0 : std_logic_vector(0 to 2) ;
  signal DUMMY1 : std_logic_vector(0 to 4) ;
  signal DUMMY2 : std_logic_vector(0 to 8) ;
  signal DUMMY3 : std_logic_vector(0 to 15) ;
  signal DUMMY4 : std_logic_vector(0 to 3) ;
  signal DUMMY5 : std_logic_vector(0 to 95) ;
  signal DUMMY6 : std_logic ;
  signal DUMMY7 : std_logic ;
  signal DUMMY8 : std_logic ;
  signal DUMMY9 : std_logic_vector(0 to 1) ;
  signal DUMMY10 : std_logic_vector(0 to 11) ;
  signal DUMMY11 : std_logic_vector(0 to 95) ;
  signal DUMMY12 : std_logic ;
  signal DUMMY13 : std_logic ;
  signal DUMMY14 : std_logic ;
  signal DUMMY15 : std_logic ;
  signal DUMMY16 : std_logic_vector(0 to 3) ;
  signal DUMMY17 : std_logic_vector(0 to 8) ;
  signal DUMMY18 : std_logic_vector(0 to 11) ;
  signal DUMMY19 : std_logic ;
  signal DUMMY20 : std_logic_vector(0 to 8) ;
  signal DUMMY21 : std_logic_vector(0 to 8) ;
  signal DUMMY22 : std_logic_vector(0 to 11) ;
  signal DUMMY23 : std_logic ;
  signal DUMMY24 : std_logic ;
  signal DUMMY25 : std_logic ;
  signal DUMMY26 : std_logic_vector(0 to 95) ;
  signal DUMMY27 : std_logic_vector(0 to 95) ;
  signal DUMMY28 : std_logic_vector(0 to 8) ;
  signal DUMMY29 : std_logic ;
  signal DUMMY30 : std_logic ;
  signal DUMMY31 : std_logic_vector(0 to 95) ;
  signal _zy_simnet_cio_32 : std_logic ;
  signal DUMMY32 : std_logic_vector(0 to 2) ;
  signal DUMMY33 : std_logic_vector(0 to 4) ;
  signal DUMMY34 : std_logic_vector(0 to 8) ;
  signal _zy_simnet_dio_36 : std_logic ;
  signal DUMMY35 : std_logic_vector(0 to 15) ;
  signal DUMMY36 : std_logic_vector(0 to 3) ;
  signal DUMMY37 : std_logic ;
  signal DUMMY38 : std_logic_vector(0 to 8) ;
  signal DUMMY39 : std_logic_vector(0 to 95) ;
  signal DUMMY40 : std_logic ;
  signal _zy_simnet_dio_43 : std_logic ;
  signal DUMMY41 : std_logic ;
  signal DUMMY42 : std_logic_vector(0 to 8) ;
  signal DUMMY43 : std_logic_vector(0 to 95) ;
  signal DUMMY44 : std_logic_vector(0 to 95) ;
  signal _zy_simnet_cio_48 : std_logic ;
  signal _zy_simnet_cio_49 : std_logic_vector(0 to 7) ;
  signal _zy_simnet_tvar_50 : std_logic ;
  signal DUMMY45 : std_logic ;
  signal _zy_simnet_dio_52 : std_logic ;
  signal im_din_space_avail : std_logic_vector(3 downto 0) ;
  signal im_din_dly : im_din_t ;
  signal im_din_empty : std_logic ;
  signal im_din_full : std_logic ;
  signal im_din_rd : std_logic ;
  signal im_available_pre : im_available_t ;
  signal enable : std_logic ;
  signal yield : std_logic ;
  signal sw_add : std_logic_vector(8 downto 0) ;
  signal sw_cs : std_logic ;
  signal sw_wdat : std_logic_vector(95 downto 0) ;
  signal sw_we : std_logic ;
  signal add : std_logic_vector(8 downto 0) ;
  signal bwe : std_logic_vector(95 downto 0) ;
  signal cs : std_logic ;
  signal din : std_logic_vector(95 downto 0) ;
  signal we : std_logic ;
  signal dout : std_logic_vector(95 downto 0) ;
  signal hw_add : std_logic_vector(8 downto 0) ;
  signal hw_we : std_logic ;
  signal hw_cs : std_logic ;
  signal hw_din : std_logic_vector(95 downto 0) ;
  signal hw_yield : std_logic ;
  signal credit_available : std_logic_vector(8 downto 0) ;
  signal credit_return : std_logic_vector(8 downto 0) ;
  signal credit_used : std_logic_vector(8 downto 0) ;
  signal im_rd_stb : std_logic ;
  signal ready : std_logic ;
  signal bank_status : std_logic ;
  signal im_vld_qual : std_logic ;
  signal sw_init : std_logic ;
  signal wr_pointer : std_logic_vector(8 downto 0) ;
  signal im_vld_dly : std_logic ;
  signal overflow : std_logic ;
  signal im_vld_mod : std_logic ;
  signal im_vld_if : std_logic ;
  signal im_consumed_reg : im_consumed_t ;
  signal hw_status : hw_status_t ;
  signal sw_config : sw_config_t ;
  signal ram_din : std_logic_vector(95 downto 0) ;
  signal ram_bwe : std_logic_vector(95 downto 0) ;
  signal ram_dout : std_logic_vector(95 downto 0) ;
  signal addr_limit : std_logic_vector(8 downto 0) ;

  function pack_ram (DUMMY46 : in std_logic_vector(95 downto 0)) return
   std_logic_vector(95 downto 0) is
    variable pack_ram_DUMMY0 : std_logic_vector(95 downto 0) ;
    variable j : integer ;
    variable i : integer ;
  begin
    j := 0 ;
    for i in 0 to 95 loop --:o1209
      if (RAM_MASK(i) = '1') then
        pack_ram_DUMMY0(j) := DUMMY46(i) ;
        j := (j + 1) ;
      end if;
    end loop;
    return pack_ram_DUMMY0 ;
  end pack_ram;

  function unpack_ram (DUMMY47 : in std_logic_vector(95 downto 0)) return
   std_logic_vector(95 downto 0) is
    variable unpack_ram_DUMMY1 : std_logic_vector(95 downto 0) ;
    variable j : integer ;
    variable i : integer ;
  begin
    j := 0 ;
    unpack_ram_DUMMY1 :=
     "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
     ;
    for i in 0 to 95 loop --:o1239
      if (RAM_MASK(i) = '1') then
        unpack_ram_DUMMY1(i) := DUMMY47(j) ;
        j := (j + 1) ;
      end if;
    end loop;
    return unpack_ram_DUMMY1 ;
  end unpack_ram;
  signal DUMMY48 : std_logic_vector(0 downto 0) ;
  signal DUMMY49 : std_logic_vector(104 downto 0) ;
  type DUMMY51 is array(integer range <>) of std_logic_vector(8 downto 0) ;
  signal DUMMY50 : DUMMY51(0 downto 0) ; 

begin
  im_vld_mod <= (im_vld and im_rdy) ;
  im_vld_dly <= boolean_to_std(((not(im_din_empty))='1' and ext
  (credit_available,32) /= std_logic_vector'("00000000000000000000000000000000")
  )) ;
  _zz_strnp_0 : ixc_assign
    generic map(W => 1)
    port map (
       im_din_rd
      ,im_vld_dly
    ) ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 1)
    port map (
       im_vld_if
      ,im_vld_mod
    ) ;
  sw_init <= '1' when im_config(10+1 downto 10) = std_logic_vector'("11") else
   '0' ;
  wr_pointer <= "111111111" when ext(hw_add,32) = std_logic_vector'
  ("00000000000000000000000000000000") else ext((ext(hw_add,32) -
   std_logic_vector'("00000000000000000000000000000001")),9) ;
  sw_config(11) <= '0' ;
  sw_config(10) <= '0' ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 10)
    port map (
       sw_config(9 downto 0)
      ,im_config(9 downto 0)
    ) ;
  im_available_pre(0) <= (ready and not(bank_status)) ;
  im_available_pre(1) <= (ready and bank_status) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY48
      ,overflow
    ) ;
  im_status(9) <= it_conv_std_logic(DUMMY48) ;
  _zz_strnp_4 : ixc_assign
    generic map(W => 9)
    port map (
       im_status(8 downto 0)
      ,wr_pointer
    ) ;
  _zz_strnp_5 : ixc_assign
    generic map(W => 2)
    port map (
       im_status(10+1 downto 10)
      ,im_available_pre
    ) ;
  im_rd_stb <= ((boolean_to_std(((wr_stb)='1' and reg_addr = std_logic_vector'
  ("00001101000"))) or im_consumed_reg(0)) or im_consumed_reg(1)) ;
  im_rdy <= '1' when im_config(10+1 downto 10) = std_logic_vector'("00") else
   '1' when im_config(10+1 downto 10) = std_logic_vector'("01") else 
  (boolean_to_std(ext(im_din_space_avail,32) > std_logic_vector'
  ("00000000000000000000000000000101")) and not(hw_yield)) when im_config(10+1
   downto 10) = std_logic_vector'("10") else '1' ;
  ready <= or_reduce(hw_status(9 downto 0)) when im_config(10+1 downto 10) =
   std_logic_vector'("00") else or_reduce(hw_status(9 downto 0)) when im_config
  (10+1 downto 10) = std_logic_vector'("01") else boolean_to_std(ext(hw_status(9
   downto 0),32) >= std_logic_vector'("00000000000000000000000100000000")) when
   im_config(10+1 downto 10) = std_logic_vector'("10") else '0' ;
  im_vld_qual <= (im_vld_dly and or_reduce(credit_available)) when im_config
  (10+1 downto 10) = std_logic_vector'("00") else im_vld_dly when im_config(10+1
   downto 10) = std_logic_vector'("01") else im_vld_dly when im_config(10+1
   downto 10) = std_logic_vector'("10") else '0' ;
  _zz_strnp_6 : ixc_assign
    generic map(W => 1)
    port map (
       hw_cs
      ,im_vld_qual
    ) ;
  _zz_strnp_7 : ixc_assign
    generic map(W => 1)
    port map (
       hw_we
      ,im_vld_qual
    ) ;
  _zz_strnp_8 : ixc_assign
    generic map(W => 96)
    port map (
       hw_din
      ,im_din_dly
    ) ;
  cs <= boolean_to_std(((hw_cs)='1' or (sw_cs)='1')) ;
  add <= hw_add when (hw_cs)='1' else sw_add ;
  bwe <=
   "111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111"
   ;
  din <= hw_din when (hw_cs)='1' else sw_wdat ;
  we <= hw_we when (hw_cs)='1' else sw_we ;
  _zz_strnp_9 : ixc_assign
    generic map(W => 1)
    port map (
       hw_yield
      ,yield
    ) ;
  ram_din <= pack_ram(din) ;
  ram_bwe <= pack_ram(bwe) ;
  dout <= unpack_ram(ram_dout) ;
  addr_limit <= "111111111" ;
  _zz_strnp_10 : ixc_assign
    generic map(W => 3)
    port map (
       DUMMY0
      ,stat_code
    ) ;
  _zz_strnp_11 : ixc_assign
    generic map(W => 5)
    port map (
       DUMMY1
      ,stat_datawords
    ) ;
  _zz_strnp_12 : ixc_assign
    generic map(W => 9)
    port map (
       DUMMY2
      ,stat_addr
    ) ;
  _zz_strnp_13 : ixc_assign
    generic map(W => 16)
    port map (
       DUMMY3
      ,capability_lst
    ) ;
  _zz_strnp_14 : ixc_assign
    generic map(W => 4)
    port map (
       DUMMY4
      ,capability_type
    ) ;
  _zz_strnp_15 : ixc_assign
    generic map(W => 96)
    port map (
       DUMMY5
      ,rd_dat
    ) ;
  _zz_strnp_16 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY6
      ,bimc_odat
    ) ;
  _zz_strnp_17 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY7
      ,bimc_osync
    ) ;
  _zz_strnp_18 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY8
      ,ro_uncorrectable_ecc_error
    ) ;
  _zz_strnp_19 : ixc_assign
    generic map(W => 2)
    port map (
       DUMMY9
      ,im_available
    ) ;
  _zz_strnp_20 : ixc_assign
    generic map(W => 12)
    port map (
       DUMMY10
      ,im_status
    ) ;
  _zz_strnp_21 : ixc_assign
    generic map(W => 96)
    port map (
       im_din_dly
      ,DUMMY11
    ) ;
  _zz_strnp_22 : ixc_assign
    generic map(W => 1)
    port map (
       im_din_full
      ,DUMMY12
    ) ;
  _zz_strnp_23 : ixc_assign
    generic map(W => 1)
    port map (
       im_din_empty
      ,DUMMY13
    ) ;
  _zz_strnp_24 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY14
      ,im_vld_if
    ) ;
  _zz_strnp_25 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY15
      ,im_din_rd
    ) ;
  _zz_strnp_26 : ixc_assign
    generic map(W => 4)
    port map (
       im_din_space_avail
      ,DUMMY16
    ) ;
  _zz_strnp_27 : ixc_assign
    generic map(W => 9)
    port map (
       credit_available
      ,DUMMY17
    ) ;
  _zz_strnp_28 : ixc_assign
    generic map(W => 12)
    port map (
       hw_status
      ,DUMMY18
    ) ;
  _zz_strnp_29 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY19
      ,sw_init
    ) ;
  _zz_strnp_30 : ixc_assign
    generic map(W => 9)
    port map (
       DUMMY20
      ,credit_return
    ) ;
  _zz_strnp_31 : ixc_assign
    generic map(W => 9)
    port map (
       DUMMY21
      ,credit_used
    ) ;
  _zz_strnp_32 : ixc_assign
    generic map(W => 12)
    port map (
       DUMMY22
      ,sw_config
    ) ;
  _zz_strnp_33 : ixc_assign
    generic map(W => 1)
    port map (
       bimc_odat
      ,DUMMY23
    ) ;
  _zz_strnp_34 : ixc_assign
    generic map(W => 1)
    port map (
       bimc_osync
      ,DUMMY24
    ) ;
  _zz_strnp_35 : ixc_assign
    generic map(W => 1)
    port map (
       ro_uncorrectable_ecc_error
      ,DUMMY25
    ) ;
  _zz_strnp_36 : ixc_assign
    generic map(W => 96)
    port map (
       DUMMY26
      ,ram_bwe
    ) ;
  _zz_strnp_37 : ixc_assign
    generic map(W => 96)
    port map (
       DUMMY27
      ,ram_din
    ) ;
  _zz_strnp_38 : ixc_assign
    generic map(W => 9)
    port map (
       DUMMY28
      ,add
    ) ;
  _zz_strnp_39 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY29
      ,cs
    ) ;
  _zz_strnp_40 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY30
      ,we
    ) ;
  _zz_strnp_41 : ixc_assign
    generic map(W => 96)
    port map (
       ram_dout
      ,DUMMY31
    ) ;
  _zy_simnet_cio_32 <= '0' ;
  _zz_strnp_42 : ixc_assign
    generic map(W => 3)
    port map (
       stat_code
      ,DUMMY32
    ) ;
  _zz_strnp_43 : ixc_assign
    generic map(W => 5)
    port map (
       stat_datawords
      ,DUMMY33
    ) ;
  _zz_strnp_44 : ixc_assign
    generic map(W => 9)
    port map (
       stat_addr
      ,DUMMY34
    ) ;
  _zz_strnp_45 : ixc_assign
    generic map(W => 16)
    port map (
       capability_lst
      ,DUMMY35
    ) ;
  _zz_strnp_46 : ixc_assign
    generic map(W => 4)
    port map (
       capability_type
      ,DUMMY36
    ) ;
  _zz_strnp_47 : ixc_assign
    generic map(W => 1)
    port map (
       enable
      ,DUMMY37
    ) ;
  _zz_strnp_48 : ixc_assign
    generic map(W => 9)
    port map (
       DUMMY38
      ,addr_limit
    ) ;
  _zz_strnp_49 : ixc_assign
    generic map(W => 96)
    port map (
       rd_dat
      ,DUMMY39
    ) ;
  _zz_strnp_50 : ixc_assign
    generic map(W => 1)
    port map (
       sw_cs
      ,DUMMY40
    ) ;
  _zz_strnp_51 : ixc_assign
    generic map(W => 1)
    port map (
       sw_we
      ,DUMMY41
    ) ;
  _zz_strnp_52 : ixc_assign
    generic map(W => 9)
    port map (
       sw_add
      ,DUMMY42
    ) ;
  _zz_strnp_53 : ixc_assign
    generic map(W => 96)
    port map (
       sw_wdat
      ,DUMMY43
    ) ;
  _zz_strnp_54 : ixc_assign
    generic map(W => 96)
    port map (
       DUMMY44
      ,dout
    ) ;
  _zy_simnet_cio_48 <= '0' ;
  _zy_simnet_cio_49 <= "00000000" ;
  _zy_simnet_tvar_50 <= not(hw_cs) ;
  _zz_strnp_55 : ixc_assign
    generic map(W => 1)
    port map (
       yield
      ,DUMMY45
    ) ;
  _zzixc_ctxrd_0 : ixc_context_read
    generic map(WIDTH => integer_to_std(105,32))
    port map (
       DUMMY49
    ) ;
  DUMMY49 <= std_logic_vector'(stat_addr & rd_dat) ;
  u_sync_fifo : sync_fifo
    port map (
       dout => DUMMY11
      ,full => DUMMY12
      ,empty => DUMMY13
      ,clk => clk
      ,rst_n => rst_n
      ,din => im_din
      ,wr_en => DUMMY14
      ,rd_en => DUMMY15
      ,space_avail => DUMMY16
    ) ;
  u_nx_credit_manager : nx_credit_manager
    port map (
       DUMMY17
      ,DUMMY18
      ,clk
      ,rst_n
      ,DUMMY19
      ,DUMMY20
      ,DUMMY21
      ,DUMMY22
    ) ;
  u_ram : nx_ram_1rw_xcm110
    port map (
       clk
      ,rst_n
      ,ovstb
      ,lvm
      ,mlvm
      ,mrdten
      ,bimc_rst_n
      ,bimc_isync
      ,bimc_idat
      ,DUMMY23
      ,DUMMY24
      ,DUMMY25
      ,DUMMY26
      ,DUMMY27
      ,DUMMY28
      ,DUMMY29
      ,DUMMY30
      ,DUMMY31
    ) ;
  u_cntrl : nx_indirect_access_cntrl_xcm120
    port map (
       clk => clk
      ,rst_n => rst_n
      ,wr_stb => wr_stb
      ,reg_addr => reg_addr
      ,cmnd_op => cmnd_op
      ,cmnd_addr => cmnd_addr
      ,cmnd_table_id => _zy_simnet_cio_32
      ,stat_code => DUMMY32
      ,stat_datawords => DUMMY33
      ,stat_addr => DUMMY34
      ,stat_table_id => _zy_simnet_dio_36
      ,capability_lst => DUMMY35
      ,capability_type => DUMMY36
      ,enable => DUMMY37
      ,addr_limit => DUMMY50
      ,wr_dat => wr_dat
      ,rd_dat => DUMMY39
      ,sw_cs => DUMMY40
      ,sw_ce => _zy_simnet_dio_43
      ,sw_we => DUMMY41
      ,sw_add => DUMMY42
      ,sw_wdat => DUMMY43
      ,sw_rdat => DUMMY44
      ,sw_match => _zy_simnet_cio_48
      ,sw_aindex => _zy_simnet_cio_49
      ,grant => _zy_simnet_tvar_50
      ,yield => DUMMY45
      ,reset => _zy_simnet_dio_52
    ) ;
  DUMMY50 <= $__unpack__(DUMMY38) ;

  process --:o1257
  (**) -- always_comb
  begin
    credit_return <= "000000000" ;
    if (im_rd_stb = '1') then
      credit_return <= "100000000" ;
    end if;
  end process ;

  process --:o1270
  (clk,rst_n)
  begin
    if (rst_n = '0') then
      bank_status <= '0' ;
      hw_add <= "000000000" ;
      im_available <= "00" ;
      im_consumed_reg <= "00" ;
      overflow <= '0' ;
    elsif (clk'event and clk = '1') then
      im_available <= im_available_pre ;
      im_consumed_reg <= im_consumed ;
      if (sw_init = '1') then
        bank_status <= '0' ;
        hw_add <= "000000000" ;
        overflow <= '0' ;
      end if;
      overflow <= (overflow or (im_vld_mod and im_din_full)) ;
      if (im_vld_qual = '1') then
        hw_add <= ext((ext(hw_add,32) + std_logic_vector'
        ("00000000000000000000000000000001")),9) ;
        if (im_config(10+1 downto 10) = std_logic_vector'("10")) then
          if (im_din_dly(31) = '1') then
            if (ext(hw_add,32) < std_logic_vector'
            ("00000000000000000000000100000000")) then
              hw_add <= "100000000" ;
            else
              hw_add <= "000000000" ;
            end if;
          else
            hw_add <= ext((ext(hw_add,32) + std_logic_vector'
            ("00000000000000000000000000000001")),9) ;
          end if;
        end if;
      end if;
      if (((im_rd_stb)='1' and ext(hw_status(9 downto 0),32) >=
       std_logic_vector'("00000000000000000000000100000000"))) then
        bank_status <= not(bank_status) ;
      end if;
    end if ;
  end process ;

  process --:o1327
  (**) -- always_comb
  begin
    if (hw_we = '1') then
      if (im_config(10+1 downto 10) = std_logic_vector'("00")) then
        credit_used <= "000000001" ;
      elsif (im_config(10+1 downto 10) = std_logic_vector'("10")) then
        if (im_din_dly(31) = '1') then
          if (ext(hw_add,32) < std_logic_vector'
          ("00000000000000000000000100000000")) then
            credit_used <= ext((std_logic_vector'
            ("00000000000000000000000100000000") - ext(hw_add,32)),9) ;
          else
            credit_used <= ext((std_logic_vector'
            ("00000000000000000000001000000000") - ext(hw_add,32)),9) ;
          end if;
        else
          credit_used <= "000000001" ;
        end if;
      else
        credit_used <= "000000000" ;
      end if;
    else
      credit_used <= "000000000" ;
    end if;
  end process ;
end module;
