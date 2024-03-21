architecture module of cr_kme is
  type $_label_t is
  record
    guid_size : std_logic_vector(0 downto 0) ;
    label_size : std_logic_vector(5 downto 0) ;
    DUMMY1 : std_logic_vector(255 downto 0) ;
    delimiter_valid : std_logic_vector(0 downto 0) ;
    delimiter : std_logic_vector(7 downto 0) ;
  end record ;
  subtype label_t is $_label_t std_logic_vector(271 downto 0) ;
  type DUMMY2 is array(integer range <>) of label_t ;
  type DUMMY3 is array(integer range <>) of work.cr_kme_regfilePKG.sa_count_t ;
  type DUMMY4 is array(integer range <>) of work.cr_kme_regfilePKG.sa_ctrl_t ;
  type DUMMY5 is array(integer range <>) of work.cr_kme_regfilePKG.sa_snapshot_t
   ;
  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component ixc_expEv
    generic (
      w : std_logic_vector := signed(integer_to_std(1,32))
    ) ;
    port (
      so : out std_logic ;
    s : in std_logic_vector(conv_integer((ext(w,$QKTN_MAX(w'length,32)) -
     integer_to_std(1,$QKTN_MAX(w'length,32)))) downto 0) := (others => 'X') ) ;
  end component ;

  component cr_rst_sync
    port (
      clk : in std_logic := 'X' ;
      async_rst_n : in std_logic := 'X' ;
      bypass_reset : in std_logic := 'X' ;
      test_rst_n : in std_logic := 'X' ;
    rst_n : out std_logic ) ;
  end component ;

  component cr_kme_core
    generic (
      KME_STUB : integer := 0 ;
      subtype axi4s_dp_rdy_t is std_logic_vector(0 downto 0) ;
      subtype axi4s_dp_bus_t is std_logic_vector(82 downto 0) ;
      type DUMMY0 is array(integer range <>) of
       work.cr_kme_regfilePKG.sa_snapshot_t ;
      type DUMMY1 is array(integer range <>) of
       work.cr_kme_regfilePKG.sa_count_t ;
      subtype kim_entry_t is std_logic_vector(37 downto 0) ;
      subtype label_t is std_logic_vector(271 downto 0) ;
      type DUMMY4 is array(integer range <>) of label_t ;
      type DUMMY5 is array(integer range <>) of work.cr_kme_regfilePKG.sa_ctrl_t
    ) ;
    port (
      kme_ib_out : out axi4s_dp_rdy_t ;
      kme_cceip0_ob_out : out axi4s_dp_bus_t ;
      kme_cceip1_ob_out : out axi4s_dp_bus_t ;
      kme_cceip2_ob_out : out axi4s_dp_bus_t ;
      kme_cceip3_ob_out : out axi4s_dp_bus_t ;
      kme_cddip0_ob_out : out axi4s_dp_bus_t ;
      kme_cddip1_ob_out : out axi4s_dp_bus_t ;
      kme_cddip2_ob_out : out axi4s_dp_bus_t ;
      kme_cddip3_ob_out : out axi4s_dp_bus_t ;
      ckv_rd : out std_logic ;
      ckv_addr : out std_logic_vector(14 downto 0) ;
      kim_rd : out std_logic ;
      kim_addr : out std_logic_vector(13 downto 0) ;
      cceip_encrypt_bimc_osync : out std_logic ;
      cceip_encrypt_bimc_odat : out std_logic ;
      cceip_encrypt_mbe : out std_logic ;
      cceip_validate_bimc_osync : out std_logic ;
      cceip_validate_bimc_odat : out std_logic ;
      cceip_validate_mbe : out std_logic ;
      cddip_decrypt_bimc_osync : out std_logic ;
      cddip_decrypt_bimc_odat : out std_logic ;
      cddip_decrypt_mbe : out std_logic ;
      axi_bimc_osync : out std_logic ;
      axi_bimc_odat : out std_logic ;
      axi_mbe : out std_logic ;
      seed0_invalidate : out std_logic ;
      seed1_invalidate : out std_logic ;
      set_txc_bp_int : out std_logic ;
      set_gcm_tag_fail_int : out std_logic ;
      set_key_tlv_miscmp_int : out std_logic ;
      set_tlv_bip2_error_int : out std_logic ;
      set_rsm_is_backpressuring : out std_logic_vector(7 downto 0) ;
      idle_components : out work.cr_kme_regfilePKG.idle_t ;
      sa_snapshot : out DUMMY0(31 downto 0) ;
      sa_count : out DUMMY1(31 downto 0) ;
      kme_idle : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      scan_en : in std_logic := 'X' ;
      scan_mode : in std_logic := 'X' ;
      scan_rst_n : in std_logic := 'X' ;
      disable_debug_cmd : in std_logic := 'X' ;
      disable_unencrypted_keys : in std_logic := 'X' ;
      suppress_key_tlvs : in std_logic := 'X' ;
      always_validate_kim_ref : in std_logic := 'X' ;
      kme_ib_in : in axi4s_dp_bus_t := (others => '0') ;
      kme_cceip0_ob_in : in axi4s_dp_rdy_t := (others => '0') ;
      kme_cceip1_ob_in : in axi4s_dp_rdy_t := (others => '0') ;
      kme_cceip2_ob_in : in axi4s_dp_rdy_t := (others => '0') ;
      kme_cceip3_ob_in : in axi4s_dp_rdy_t := (others => '0') ;
      kme_cddip0_ob_in : in axi4s_dp_rdy_t := (others => '0') ;
      kme_cddip1_ob_in : in axi4s_dp_rdy_t := (others => '0') ;
      kme_cddip2_ob_in : in axi4s_dp_rdy_t := (others => '0') ;
      kme_cddip3_ob_in : in axi4s_dp_rdy_t := (others => '0') ;
      ckv_dout : in std_logic_vector(63 downto 0) := (others => 'X') ;
      ckv_mbe : in std_logic := 'X' ;
      kim_dout : in kim_entry_t := (others => '0') ;
      kim_mbe : in std_logic := 'X' ;
      bimc_rst_n : in std_logic := 'X' ;
      cceip_encrypt_bimc_isync : in std_logic := 'X' ;
      cceip_encrypt_bimc_idat : in std_logic := 'X' ;
      cceip_validate_bimc_isync : in std_logic := 'X' ;
      cceip_validate_bimc_idat : in std_logic := 'X' ;
      cddip_decrypt_bimc_isync : in std_logic := 'X' ;
      cddip_decrypt_bimc_idat : in std_logic := 'X' ;
      axi_bimc_isync : in std_logic := 'X' ;
      axi_bimc_idat : in std_logic := 'X' ;
      labels : in DUMMY4(7 downto 0) := (others => (others => '0')) ;
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
      seed1_reseed_interval : in std_logic_vector(47 downto 0) := (others => 'X'
      ) ;
      tready_override : in work.cr_kme_regfilePKG.tready_override_t := (others
       => '0') ;
      cceip_encrypt_kop_fifo_override : in
       work.cr_kme_regfilePKG.kop_fifo_override_t := (others => '0') ;
      cceip_validate_kop_fifo_override : in
       work.cr_kme_regfilePKG.kop_fifo_override_t := (others => '0') ;
      cddip_decrypt_kop_fifo_override : in
       work.cr_kme_regfilePKG.kop_fifo_override_t := (others => '0') ;
      kdf_test_key_size : in std_logic_vector(31 downto 0) := (others => 'X') ;
      kdf_test_mode_en : in std_logic := 'X' ;
      sa_global_ctrl : in work.cr_kme_regfilePKG.sa_global_ctrl_t := (others =>
       '0') ;
    sa_ctrl : in DUMMY5(31 downto 0) := (others => (others => '0')) ) ;
  end component ;

  component nx_rbus_apb
    generic (
      N_RBUS_ADDR_BITS : integer := 16 ;
      N_RBUS_DATA_BITS : integer := 32
    ) ;
    port (
      rbus_addr_o : out std_logic_vector(15 downto 0) ;
      rbus_wr_strb_o : out std_logic ;
      rbus_wr_data_o : out std_logic_vector(31 downto 0) ;
      rbus_rd_strb_o : out std_logic ;
      apb_prdata : out std_logic_vector(31 downto 0) ;
      apb_pready : out std_logic ;
      apb_pslverr : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      rbus_rd_data_i : in std_logic_vector(31 downto 0) := (others => 'X') ;
      rbus_ack_i : in std_logic := 'X' ;
      rbus_err_ack_i : in std_logic := 'X' ;
      rbus_wr_strb_i : in std_logic := 'X' ;
      rbus_rd_strb_i : in std_logic := 'X' ;
      apb_paddr : in std_logic_vector(15 downto 0) := (others => 'X') ;
      apb_psel : in std_logic := 'X' ;
      apb_penable : in std_logic := 'X' ;
      apb_pwrite : in std_logic := 'X' ;
    apb_pwdata : in std_logic_vector(31 downto 0) := (others => 'X') ) ;
  end component ;

  component cr_kme_regfile
    generic (
      subtype kme_rbus_ring_t is std_logic_vector(83 downto 0) ;
      subtype axi4s_dp_bus_t is std_logic_vector(82 downto 0) ;
      subtype axi4s_dp_rdy_t is std_logic_vector(0 downto 0) ;
      subtype kim_entry_t is std_logic_vector(37 downto 0) ;
      subtype label_t is std_logic_vector(271 downto 0) ;
      type DUMMY2 is array(integer range <>) of label_t ;
      type DUMMY3 is array(integer range <>) of work.cr_kme_regfilePKG.sa_ctrl_t
       ;
      type DUMMY4 is array(integer range <>) of
       work.cr_kme_regfilePKG.sa_snapshot_t ;
      type DUMMY5 is array(integer range <>) of
       work.cr_kme_regfilePKG.sa_count_t
    ) ;
    port (
      suppress_key_tlvs : out std_logic ;
      kme_interrupt : out std_logic ;
      rbus_ring_o : out kme_rbus_ring_t ;
      kme_cceip0_ob_out : out axi4s_dp_bus_t ;
      kme_cceip0_ob_in_mod : out axi4s_dp_rdy_t ;
      kme_cceip1_ob_out : out axi4s_dp_bus_t ;
      kme_cceip1_ob_in_mod : out axi4s_dp_rdy_t ;
      kme_cceip2_ob_out : out axi4s_dp_bus_t ;
      kme_cceip2_ob_in_mod : out axi4s_dp_rdy_t ;
      kme_cceip3_ob_out : out axi4s_dp_bus_t ;
      kme_cceip3_ob_in_mod : out axi4s_dp_rdy_t ;
      kme_cddip0_ob_out : out axi4s_dp_bus_t ;
      kme_cddip0_ob_in_mod : out axi4s_dp_rdy_t ;
      kme_cddip1_ob_out : out axi4s_dp_bus_t ;
      kme_cddip1_ob_in_mod : out axi4s_dp_rdy_t ;
      kme_cddip2_ob_out : out axi4s_dp_bus_t ;
      kme_cddip2_ob_in_mod : out axi4s_dp_rdy_t ;
      kme_cddip3_ob_out : out axi4s_dp_bus_t ;
      kme_cddip3_ob_in_mod : out axi4s_dp_rdy_t ;
      ckv_dout : out std_logic_vector(63 downto 0) ;
      ckv_mbe : out std_logic ;
      kim_dout : out kim_entry_t ;
      kim_mbe : out std_logic ;
      bimc_rst_n : out std_logic ;
      cceip_encrypt_bimc_isync : out std_logic ;
      cceip_encrypt_bimc_idat : out std_logic ;
      cceip_validate_bimc_isync : out std_logic ;
      cceip_validate_bimc_idat : out std_logic ;
      cddip_decrypt_bimc_isync : out std_logic ;
      cddip_decrypt_bimc_idat : out std_logic ;
      axi_bimc_isync : out std_logic ;
      axi_bimc_idat : out std_logic ;
      labels : out DUMMY2(7 downto 0) ;
      seed0_valid : out std_logic ;
      seed0_internal_state_key : out std_logic_vector(255 downto 0) ;
      seed0_internal_state_value : out std_logic_vector(127 downto 0) ;
      seed0_reseed_interval : out std_logic_vector(47 downto 0) ;
      seed1_valid : out std_logic ;
      seed1_internal_state_key : out std_logic_vector(255 downto 0) ;
      seed1_internal_state_value : out std_logic_vector(127 downto 0) ;
      seed1_reseed_interval : out std_logic_vector(47 downto 0) ;
      tready_override : out work.cr_kme_regfilePKG.tready_override_t ;
      cceip_encrypt_kop_fifo_override : out
       work.cr_kme_regfilePKG.kop_fifo_override_t ;
      cceip_validate_kop_fifo_override : out
       work.cr_kme_regfilePKG.kop_fifo_override_t ;
      cddip_decrypt_kop_fifo_override : out
       work.cr_kme_regfilePKG.kop_fifo_override_t ;
      manual_txc : out std_logic ;
      always_validate_kim_ref : out std_logic ;
      kdf_test_mode_en : out std_logic ;
      kdf_test_key_size : out std_logic_vector(31 downto 0) ;
      sa_global_ctrl : out work.cr_kme_regfilePKG.sa_global_ctrl_t ;
      sa_ctrl : out DUMMY3(31 downto 0) ;
      debug_kme_ib_tvalid : out std_logic ;
      debug_kme_ib_tlast : out std_logic ;
      debug_kme_ib_tid : out std_logic_vector(0 downto 0) ;
      debug_kme_ib_tstrb : out std_logic_vector(7 downto 0) ;
      debug_kme_ib_tuser : out std_logic_vector(7 downto 0) ;
      debug_kme_ib_tdata : out std_logic_vector(63 downto 0) ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      ovstb : in std_logic := 'X' ;
      lvm : in std_logic := 'X' ;
      mlvm : in std_logic := 'X' ;
      rbus_ring_i : in kme_rbus_ring_t := (others => '0') ;
      cfg_start_addr : in std_logic_vector(15 downto 0) := (others => 'X') ;
      cfg_end_addr : in std_logic_vector(15 downto 0) := (others => 'X') ;
      kme_cceip0_ob_out_pre : in axi4s_dp_bus_t := (others => '0') ;
      kme_cceip0_ob_in : in axi4s_dp_rdy_t := (others => '0') ;
      kme_cceip1_ob_out_pre : in axi4s_dp_bus_t := (others => '0') ;
      kme_cceip1_ob_in : in axi4s_dp_rdy_t := (others => '0') ;
      kme_cceip2_ob_out_pre : in axi4s_dp_bus_t := (others => '0') ;
      kme_cceip2_ob_in : in axi4s_dp_rdy_t := (others => '0') ;
      kme_cceip3_ob_out_pre : in axi4s_dp_bus_t := (others => '0') ;
      kme_cceip3_ob_in : in axi4s_dp_rdy_t := (others => '0') ;
      kme_cddip0_ob_out_pre : in axi4s_dp_bus_t := (others => '0') ;
      kme_cddip0_ob_in : in axi4s_dp_rdy_t := (others => '0') ;
      kme_cddip1_ob_out_pre : in axi4s_dp_bus_t := (others => '0') ;
      kme_cddip1_ob_in : in axi4s_dp_rdy_t := (others => '0') ;
      kme_cddip2_ob_out_pre : in axi4s_dp_bus_t := (others => '0') ;
      kme_cddip2_ob_in : in axi4s_dp_rdy_t := (others => '0') ;
      kme_cddip3_ob_out_pre : in axi4s_dp_bus_t := (others => '0') ;
      kme_cddip3_ob_in : in axi4s_dp_rdy_t := (others => '0') ;
      ckv_rd : in std_logic := 'X' ;
      ckv_addr : in std_logic_vector(14 downto 0) := (others => 'X') ;
      kim_rd : in std_logic := 'X' ;
      kim_addr : in std_logic_vector(13 downto 0) := (others => 'X') ;
      cceip_encrypt_bimc_osync : in std_logic := 'X' ;
      cceip_encrypt_bimc_odat : in std_logic := 'X' ;
      cceip_encrypt_mbe : in std_logic := 'X' ;
      cceip_validate_bimc_osync : in std_logic := 'X' ;
      cceip_validate_bimc_odat : in std_logic := 'X' ;
      cceip_validate_mbe : in std_logic := 'X' ;
      cddip_decrypt_bimc_osync : in std_logic := 'X' ;
      cddip_decrypt_bimc_odat : in std_logic := 'X' ;
      cddip_decrypt_mbe : in std_logic := 'X' ;
      axi_bimc_osync : in std_logic := 'X' ;
      axi_bimc_odat : in std_logic := 'X' ;
      axi_mbe : in std_logic := 'X' ;
      seed0_invalidate : in std_logic := 'X' ;
      seed1_invalidate : in std_logic := 'X' ;
      set_txc_bp_int : in std_logic := 'X' ;
      set_gcm_tag_fail_int : in std_logic := 'X' ;
      set_key_tlv_miscmp_int : in std_logic := 'X' ;
      set_tlv_bip2_error_int : in std_logic := 'X' ;
      set_rsm_is_backpressuring : in std_logic_vector(7 downto 0) := (others =>
       'X') ;
      idle_components : in work.cr_kme_regfilePKG.idle_t := (others => '0') ;
      sa_snapshot : in DUMMY4(31 downto 0) := (others => (others => '0')) ;
      sa_count : in DUMMY5(31 downto 0) := (others => (others => '0')) ;
    debug_kme_ib_tready : in std_logic := 'X' ) ;
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
  type $_kdfstream_cmd_t is
  record
    combo_mode : std_logic_vector(0 downto 0) ;
    skip : std_logic_vector(0 downto 0) ;
    guid : std_logic_vector(255 downto 0) ;
    label_index : std_logic_vector(2 downto 0) ;
    num_iter : std_logic_vector(1 downto 0) ;
  end record ;
  subtype kdfstream_cmd_t is $_kdfstream_cmd_t std_logic_vector(262 downto 0) ;
  signal debug_kme_ib_tready : std_logic ;
  signal always_validate_kim_ref : std_logic ;
  signal axi_bimc_idat : std_logic ;
  signal axi_bimc_isync : std_logic ;
  signal axi_bimc_odat : std_logic ;
  signal axi_bimc_osync : std_logic ;
  signal axi_mbe : std_logic ;
  signal bimc_rst_n : std_logic ;
  signal cceip_encrypt_bimc_idat : std_logic ;
  signal cceip_encrypt_bimc_isync : std_logic ;
  signal cceip_encrypt_bimc_odat : std_logic ;
  signal cceip_encrypt_bimc_osync : std_logic ;
  signal cceip_encrypt_mbe : std_logic ;
  signal cceip_validate_bimc_idat : std_logic ;
  signal cceip_validate_bimc_isync : std_logic ;
  signal cceip_validate_bimc_odat : std_logic ;
  signal cceip_validate_bimc_osync : std_logic ;
  signal cceip_validate_mbe : std_logic ;
  signal cddip_decrypt_bimc_idat : std_logic ;
  signal cddip_decrypt_bimc_isync : std_logic ;
  signal cddip_decrypt_bimc_odat : std_logic ;
  signal cddip_decrypt_bimc_osync : std_logic ;
  signal cddip_decrypt_mbe : std_logic ;
  signal ckv_addr : std_logic_vector(14 downto 0) ;
  signal ckv_dout : std_logic_vector(63 downto 0) ;
  signal ckv_mbe : std_logic ;
  signal ckv_rd : std_logic ;
  signal debug_kme_ib_tdata : std_logic_vector(63 downto 0) ;
  signal debug_kme_ib_tid : std_logic_vector(0 downto 0) ;
  signal debug_kme_ib_tlast : std_logic ;
  signal debug_kme_ib_tstrb : std_logic_vector(7 downto 0) ;
  signal debug_kme_ib_tuser : std_logic_vector(7 downto 0) ;
  signal debug_kme_ib_tvalid : std_logic ;
  signal kdf_test_key_size : std_logic_vector(31 downto 0) ;
  signal kdf_test_mode_en : std_logic ;
  signal kim_addr : std_logic_vector(13 downto 0) ;
  signal kim_mbe : std_logic ;
  signal kim_rd : std_logic ;
  signal manual_txc : std_logic ;
  signal rst_sync_n : std_logic ;
  signal seed0_internal_state_key : std_logic_vector(255 downto 0) ;
  signal seed0_internal_state_value : std_logic_vector(127 downto 0) ;
  signal seed0_invalidate : std_logic ;
  signal seed0_reseed_interval : std_logic_vector(47 downto 0) ;
  signal seed0_valid : std_logic ;
  signal seed1_internal_state_key : std_logic_vector(255 downto 0) ;
  signal seed1_internal_state_value : std_logic_vector(127 downto 0) ;
  signal seed1_invalidate : std_logic ;
  signal seed1_reseed_interval : std_logic_vector(47 downto 0) ;
  signal seed1_valid : std_logic ;
  signal set_gcm_tag_fail_int : std_logic ;
  signal set_key_tlv_miscmp_int : std_logic ;
  signal set_rsm_is_backpressuring : std_logic_vector(7 downto 0) ;
  signal set_tlv_bip2_error_int : std_logic ;
  signal set_txc_bp_int : std_logic ;
  signal suppress_key_tlvs : std_logic ;
  signal clock : std_logic ;
  -- quickturn external_ref clock
  signal clock_1 : std_logic ;
  -- quickturn external_ref clock_1
  signal kme_cceip1_ob_tready : std_logic ;
  signal kme_cceip2_ob_tready : std_logic ;
  signal kme_cceip3_ob_tready : std_logic ;
  signal kme_cddip0_ob_tready : std_logic ;
  signal kme_cddip1_ob_tready : std_logic ;
  signal kme_cddip2_ob_tready : std_logic ;
  signal kme_cddip3_ob_tready : std_logic ;
  signal DUMMY6 : std_logic ;
  signal DUMMY7 : std_logic_vector(0 to 82) ;
  signal DUMMY8 : std_logic_vector(0 to 82) ;
  signal DUMMY9 : std_logic_vector(0 to 82) ;
  signal DUMMY10 : std_logic_vector(0 to 82) ;
  signal DUMMY11 : std_logic_vector(0 to 82) ;
  signal DUMMY12 : std_logic_vector(0 to 82) ;
  signal DUMMY13 : std_logic_vector(0 to 82) ;
  signal DUMMY14 : std_logic_vector(0 to 82) ;
  signal DUMMY15 : std_logic_vector(0 to 31) ;
  signal DUMMY16 : std_logic_vector(0 to 82) ;
  signal DUMMY17 : std_logic ;
  signal DUMMY18 : std_logic ;
  signal DUMMY19 : std_logic ;
  signal DUMMY20 : std_logic ;
  signal DUMMY21 : std_logic ;
  signal DUMMY22 : std_logic ;
  signal DUMMY23 : std_logic ;
  signal DUMMY24 : std_logic ;
  signal DUMMY25 : std_logic_vector(0 to 37) ;
  signal _zy_simnet_tvar_20 : DUMMY2(7 downto 0) ;
  -- quickturn array_with_packed_dim _zy_simnet_tvar_20 2 0
  signal DUMMY26 : std_logic_vector(0 to 8) ;
  signal DUMMY27 : std_logic_vector(0 to 6) ;
  signal DUMMY28 : std_logic_vector(0 to 6) ;
  signal DUMMY29 : std_logic_vector(0 to 6) ;
  signal DUMMY30 : std_logic_vector(0 to 31) ;
  signal DUMMY31 : std_logic_vector(0 to 15) ;
  signal DUMMY32 : std_logic ;
  signal DUMMY33 : std_logic_vector(0 to 31) ;
  signal DUMMY34 : std_logic ;
  signal DUMMY35 : std_logic_vector(0 to 31) ;
  signal DUMMY36 : std_logic ;
  signal DUMMY37 : std_logic ;
  signal DUMMY38 : std_logic ;
  signal DUMMY39 : std_logic ;
  signal DUMMY40 : std_logic_vector(0 to 83) ;
  signal DUMMY41 : std_logic_vector(0 to 82) ;
  signal DUMMY42 : std_logic ;
  signal DUMMY43 : std_logic_vector(0 to 82) ;
  signal DUMMY44 : std_logic ;
  signal DUMMY45 : std_logic_vector(0 to 82) ;
  signal DUMMY46 : std_logic ;
  signal DUMMY47 : std_logic_vector(0 to 82) ;
  signal DUMMY48 : std_logic ;
  signal DUMMY49 : std_logic_vector(0 to 82) ;
  signal DUMMY50 : std_logic ;
  signal DUMMY51 : std_logic_vector(0 to 82) ;
  signal DUMMY52 : std_logic ;
  signal DUMMY53 : std_logic_vector(0 to 82) ;
  signal DUMMY54 : std_logic ;
  signal DUMMY55 : std_logic_vector(0 to 82) ;
  signal DUMMY56 : std_logic ;
  signal DUMMY57 : std_logic_vector(0 to 37) ;
  signal _zy_simnet_tvar_53 : DUMMY2(7 downto 0) ;
  -- quickturn array_with_packed_dim _zy_simnet_tvar_53 2 0
  signal DUMMY58 : std_logic_vector(0 to 8) ;
  signal DUMMY59 : std_logic_vector(0 to 6) ;
  signal DUMMY60 : std_logic_vector(0 to 6) ;
  signal DUMMY61 : std_logic_vector(0 to 6) ;
  signal DUMMY62 : std_logic_vector(0 to 31) ;
  signal DUMMY63 : std_logic_vector(0 to 83) ;
  signal _zy_simnet_cio_60 : std_logic_vector(0 to 15) ;
  signal _zy_simnet_cio_61 : std_logic_vector(0 to 15) ;
  signal DUMMY64 : std_logic_vector(0 to 82) ;
  signal DUMMY65 : std_logic ;
  signal DUMMY66 : std_logic_vector(0 to 82) ;
  signal DUMMY67 : std_logic ;
  signal DUMMY68 : std_logic_vector(0 to 82) ;
  signal DUMMY69 : std_logic ;
  signal DUMMY70 : std_logic_vector(0 to 82) ;
  signal DUMMY71 : std_logic ;
  signal DUMMY72 : std_logic_vector(0 to 82) ;
  signal DUMMY73 : std_logic ;
  signal DUMMY74 : std_logic_vector(0 to 82) ;
  signal DUMMY75 : std_logic ;
  signal DUMMY76 : std_logic_vector(0 to 82) ;
  signal DUMMY77 : std_logic ;
  signal DUMMY78 : std_logic_vector(0 to 82) ;
  signal DUMMY79 : std_logic ;
  signal DUMMY80 : std_logic_vector(0 to 31) ;
  signal DUMMY81 : std_logic ;
  signal rbus_ring_i : kme_rbus_ring_t ;
  signal rbus_ring_o : kme_rbus_ring_t ;
  signal kme_ib_in : axi4s_dp_bus_t ;
  signal kme_ib_out : axi4s_dp_rdy_t ;
  signal kme_cceip0_ob_out : axi4s_dp_bus_t ;
  signal kme_cceip1_ob_out : axi4s_dp_bus_t ;
  signal kme_cceip2_ob_out : axi4s_dp_bus_t ;
  signal kme_cceip3_ob_out : axi4s_dp_bus_t ;
  signal kme_cceip0_ob_in : axi4s_dp_rdy_t ;
  signal kme_cceip1_ob_in : axi4s_dp_rdy_t ;
  signal kme_cceip2_ob_in : axi4s_dp_rdy_t ;
  signal kme_cceip3_ob_in : axi4s_dp_rdy_t ;
  signal kme_cddip0_ob_out : axi4s_dp_bus_t ;
  signal kme_cddip1_ob_out : axi4s_dp_bus_t ;
  signal kme_cddip2_ob_out : axi4s_dp_bus_t ;
  signal kme_cddip3_ob_out : axi4s_dp_bus_t ;
  signal kme_cddip0_ob_in : axi4s_dp_rdy_t ;
  signal kme_cddip1_ob_in : axi4s_dp_rdy_t ;
  signal kme_cddip2_ob_in : axi4s_dp_rdy_t ;
  signal kme_cddip3_ob_in : axi4s_dp_rdy_t ;
  signal cceip_encrypt_kop_fifo_override :
   work.cr_kme_regfilePKG.kop_fifo_override_t ;
  signal cceip_validate_kop_fifo_override :
   work.cr_kme_regfilePKG.kop_fifo_override_t ;
  signal cddip_decrypt_kop_fifo_override :
   work.cr_kme_regfilePKG.kop_fifo_override_t ;
  signal idle_components : work.cr_kme_regfilePKG.idle_t ;
  signal kim_dout : kim_entry_t ;
  signal kme_cceip0_ob_in_mod : axi4s_dp_rdy_t ;
  signal kme_cceip0_ob_out_pre : axi4s_dp_bus_t ;
  signal kme_cceip1_ob_in_mod : axi4s_dp_rdy_t ;
  signal kme_cceip1_ob_out_pre : axi4s_dp_bus_t ;
  signal kme_cceip2_ob_in_mod : axi4s_dp_rdy_t ;
  signal kme_cceip2_ob_out_pre : axi4s_dp_bus_t ;
  signal kme_cceip3_ob_in_mod : axi4s_dp_rdy_t ;
  signal kme_cceip3_ob_out_pre : axi4s_dp_bus_t ;
  signal kme_cddip0_ob_in_mod : axi4s_dp_rdy_t ;
  signal kme_cddip0_ob_out_pre : axi4s_dp_bus_t ;
  signal kme_cddip1_ob_in_mod : axi4s_dp_rdy_t ;
  signal kme_cddip1_ob_out_pre : axi4s_dp_bus_t ;
  signal kme_cddip2_ob_in_mod : axi4s_dp_rdy_t ;
  signal kme_cddip2_ob_out_pre : axi4s_dp_bus_t ;
  signal kme_cddip3_ob_in_mod : axi4s_dp_rdy_t ;
  signal kme_cddip3_ob_out_pre : axi4s_dp_bus_t ;
  signal labels : DUMMY2(7 downto 0) ;
  -- quickturn array_with_packed_dim labels 2 0
  signal sa_count : DUMMY3(31 downto 0) ;
  signal sa_ctrl : DUMMY4(31 downto 0) ;
  signal sa_global_ctrl : work.cr_kme_regfilePKG.sa_global_ctrl_t ;
  signal sa_snapshot : DUMMY5(31 downto 0) ;
  signal tready_override : work.cr_kme_regfilePKG.tready_override_t ;
  signal DUMMY82 : std_logic_vector(0 downto 0) ;
  signal DUMMY83 : std_logic_vector(0 downto 0) ;
  signal DUMMY84 : std_logic_vector(0 downto 0) ;
  signal DUMMY85 : std_logic_vector(2175 downto 0) ;
  signal DUMMY86 : std_logic_vector(2175 downto 0) ;
  signal DUMMY87 : std_logic_vector(0 downto 0) ;
  signal DUMMY88 : std_logic_vector(0 downto 0) ;
  signal DUMMY89 : std_logic_vector(0 downto 0) ;
  signal DUMMY90 : std_logic_vector(0 downto 0) ;
  signal DUMMY91 : std_logic_vector(0 downto 0) ;
  signal DUMMY92 : std_logic_vector(0 downto 0) ;
  signal DUMMY93 : std_logic_vector(2175 downto 0) ;
  signal DUMMY94 : std_logic_vector(2175 downto 0) ;
  -- quickturn preserve clock_1

begin
  clk_DUMMY0 <= clk;
  _zz_strnp_0 : ixc_assign
    generic map(W => 1)
    port map (
       clk_DUMMY0
      ,clock
    ) ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 1)
    port map (
       clock_1
      ,clock
    ) ;
  kme_cceip1_ob_tready <= '1' ;
  kme_cceip2_ob_tready <= '1' ;
  kme_cceip3_ob_tready <= '1' ;
  kme_cddip0_ob_tready <= '1' ;
  kme_cddip1_ob_tready <= '1' ;
  kme_cddip2_ob_tready <= '1' ;
  kme_cddip3_ob_tready <= '1' ;
  kme_ib_in(82) <= debug_kme_ib_tvalid when (manual_txc)='1' else kme_ib_tvalid
   ;
  kme_ib_in(81) <= debug_kme_ib_tlast when (manual_txc)='1' else kme_ib_tlast ;
  kme_ib_in(80 downto 80) <= debug_kme_ib_tid when (manual_txc)='1' else
   kme_ib_tid ;
  kme_ib_in(72+7 downto 72) <= debug_kme_ib_tstrb when (manual_txc)='1' else
   kme_ib_tstrb ;
  kme_ib_in(64+7 downto 64) <= debug_kme_ib_tuser when (manual_txc)='1' else
   kme_ib_tuser ;
  kme_ib_in(63 downto 0) <= debug_kme_ib_tdata when (manual_txc)='1' else
   kme_ib_tdata ;
  kme_ib_tready <= '1' when (manual_txc)='1' else kme_ib_out(0) ;
  debug_kme_ib_tready <= kme_ib_out(0) when (manual_txc)='1' else '1' ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 1)
    port map (
       kme_cceip0_ob_tvalid
      ,DUMMY82
    ) ;
  DUMMY82 <= ext(kme_cceip0_ob_out(82),1) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 1)
    port map (
       kme_cceip0_ob_tlast
      ,DUMMY83
    ) ;
  DUMMY83 <= ext(kme_cceip0_ob_out(81),1) ;
  _zz_strnp_4 : ixc_assign
    generic map(W => 1)
    port map (
       kme_cceip0_ob_tid
      ,kme_cceip0_ob_out(80 downto 80)
    ) ;
  _zz_strnp_5 : ixc_assign
    generic map(W => 8)
    port map (
       kme_cceip0_ob_tstrb
      ,kme_cceip0_ob_out(72+7 downto 72)
    ) ;
  _zz_strnp_6 : ixc_assign
    generic map(W => 8)
    port map (
       kme_cceip0_ob_tuser
      ,kme_cceip0_ob_out(64+7 downto 64)
    ) ;
  _zz_strnp_7 : ixc_assign
    generic map(W => 64)
    port map (
       kme_cceip0_ob_tdata
      ,kme_cceip0_ob_out(63 downto 0)
    ) ;
  _zz_strnp_8 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY84
      ,kme_cceip0_ob_tready
    ) ;
  kme_cceip0_ob_in(0) <= it_conv_std_logic(DUMMY84) ;
  rbus_ring_i(1) <= '0' ;
  rbus_ring_i(0) <= '0' ;
  rbus_ring_i(2+31 downto 2) <= "00000000000000000000000000000000" ;
  _zz_strnp_9 : ixc_assign
    generic map(W => 1)
    port map (
       kme_ib_out
      ,DUMMY6
    ) ;
  _zz_strnp_10 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cceip0_ob_out_pre
      ,DUMMY7
    ) ;
  _zz_strnp_11 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cceip1_ob_out_pre
      ,DUMMY8
    ) ;
  _zz_strnp_12 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cceip2_ob_out_pre
      ,DUMMY9
    ) ;
  _zz_strnp_13 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cceip3_ob_out_pre
      ,DUMMY10
    ) ;
  _zz_strnp_14 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cddip0_ob_out_pre
      ,DUMMY11
    ) ;
  _zz_strnp_15 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cddip1_ob_out_pre
      ,DUMMY12
    ) ;
  _zz_strnp_16 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cddip2_ob_out_pre
      ,DUMMY13
    ) ;
  _zz_strnp_17 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cddip3_ob_out_pre
      ,DUMMY14
    ) ;
  _zz_strnp_18 : ixc_assign
    generic map(W => 32)
    port map (
       idle_components
      ,DUMMY15
    ) ;
  _zz_strnp_19 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY16
      ,kme_ib_in
    ) ;
  _zz_strnp_20 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY17
      ,kme_cceip0_ob_in_mod
    ) ;
  _zz_strnp_21 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY18
      ,kme_cceip1_ob_in_mod
    ) ;
  _zz_strnp_22 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY19
      ,kme_cceip2_ob_in_mod
    ) ;
  _zz_strnp_23 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY20
      ,kme_cceip3_ob_in_mod
    ) ;
  _zz_strnp_24 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY21
      ,kme_cddip0_ob_in_mod
    ) ;
  _zz_strnp_25 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY22
      ,kme_cddip1_ob_in_mod
    ) ;
  _zz_strnp_26 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY23
      ,kme_cddip2_ob_in_mod
    ) ;
  _zz_strnp_27 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY24
      ,kme_cddip3_ob_in_mod
    ) ;
  _zz_strnp_28 : ixc_assign
    generic map(W => 38)
    port map (
       DUMMY25
      ,kim_dout
    ) ;
  _zz_strnp_29 : ixc_assign
    generic map(W => 2176)
    port map (
       DUMMY85
      ,DUMMY86
    ) ;
  _zy_simnet_tvar_20 <= $__unpack__(DUMMY85) ;
  DUMMY86 <= $__pack__(0,labels) ;
  _zz_strnp_30 : ixc_assign
    generic map(W => 9)
    port map (
       DUMMY26
      ,tready_override
    ) ;
  _zz_strnp_31 : ixc_assign
    generic map(W => 7)
    port map (
       DUMMY27
      ,cceip_encrypt_kop_fifo_override
    ) ;
  _zz_strnp_32 : ixc_assign
    generic map(W => 7)
    port map (
       DUMMY28
      ,cceip_validate_kop_fifo_override
    ) ;
  _zz_strnp_33 : ixc_assign
    generic map(W => 7)
    port map (
       DUMMY29
      ,cddip_decrypt_kop_fifo_override
    ) ;
  _zz_strnp_34 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY30
      ,sa_global_ctrl
    ) ;
  _zz_strnp_35 : ixc_assign
    generic map(W => 16)
    port map (
       rbus_ring_i(68+15 downto 68)
      ,DUMMY31
    ) ;
  _zz_strnp_36 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY87
      ,DUMMY32
    ) ;
  rbus_ring_i(67) <= it_conv_std_logic(DUMMY87) ;
  _zz_strnp_37 : ixc_assign
    generic map(W => 32)
    port map (
       rbus_ring_i(35+31 downto 35)
      ,DUMMY33
    ) ;
  _zz_strnp_38 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY88
      ,DUMMY34
    ) ;
  rbus_ring_i(34) <= it_conv_std_logic(DUMMY88) ;
  _zz_strnp_39 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY35
      ,rbus_ring_o(2+31 downto 2)
    ) ;
  _zz_strnp_40 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY36
      ,DUMMY89
    ) ;
  DUMMY89 <= ext(rbus_ring_o(1),1) ;
  _zz_strnp_41 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY37
      ,DUMMY90
    ) ;
  DUMMY90 <= ext(rbus_ring_o(0),1) ;
  _zz_strnp_42 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY38
      ,DUMMY91
    ) ;
  DUMMY91 <= ext(rbus_ring_o(67),1) ;
  _zz_strnp_43 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY39
      ,DUMMY92
    ) ;
  DUMMY92 <= ext(rbus_ring_o(34),1) ;
  _zz_strnp_44 : ixc_assign
    generic map(W => 84)
    port map (
       rbus_ring_o
      ,DUMMY40
    ) ;
  _zz_strnp_45 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cceip0_ob_out
      ,DUMMY41
    ) ;
  _zz_strnp_46 : ixc_assign
    generic map(W => 1)
    port map (
       kme_cceip0_ob_in_mod
      ,DUMMY42
    ) ;
  _zz_strnp_47 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cceip1_ob_out
      ,DUMMY43
    ) ;
  _zz_strnp_48 : ixc_assign
    generic map(W => 1)
    port map (
       kme_cceip1_ob_in_mod
      ,DUMMY44
    ) ;
  _zz_strnp_49 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cceip2_ob_out
      ,DUMMY45
    ) ;
  _zz_strnp_50 : ixc_assign
    generic map(W => 1)
    port map (
       kme_cceip2_ob_in_mod
      ,DUMMY46
    ) ;
  _zz_strnp_51 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cceip3_ob_out
      ,DUMMY47
    ) ;
  _zz_strnp_52 : ixc_assign
    generic map(W => 1)
    port map (
       kme_cceip3_ob_in_mod
      ,DUMMY48
    ) ;
  _zz_strnp_53 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cddip0_ob_out
      ,DUMMY49
    ) ;
  _zz_strnp_54 : ixc_assign
    generic map(W => 1)
    port map (
       kme_cddip0_ob_in_mod
      ,DUMMY50
    ) ;
  _zz_strnp_55 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cddip1_ob_out
      ,DUMMY51
    ) ;
  _zz_strnp_56 : ixc_assign
    generic map(W => 1)
    port map (
       kme_cddip1_ob_in_mod
      ,DUMMY52
    ) ;
  _zz_strnp_57 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cddip2_ob_out
      ,DUMMY53
    ) ;
  _zz_strnp_58 : ixc_assign
    generic map(W => 1)
    port map (
       kme_cddip2_ob_in_mod
      ,DUMMY54
    ) ;
  _zz_strnp_59 : ixc_assign
    generic map(W => 83)
    port map (
       kme_cddip3_ob_out
      ,DUMMY55
    ) ;
  _zz_strnp_60 : ixc_assign
    generic map(W => 1)
    port map (
       kme_cddip3_ob_in_mod
      ,DUMMY56
    ) ;
  _zz_strnp_61 : ixc_assign
    generic map(W => 38)
    port map (
       kim_dout
      ,DUMMY57
    ) ;
  _zz_strnp_62 : ixc_assign
    generic map(W => 2176)
    port map (
       DUMMY93
      ,DUMMY94
    ) ;
  labels <= $__unpack__(DUMMY93) ;
  DUMMY94 <= $__pack__(0,_zy_simnet_tvar_53) ;
  _zz_strnp_63 : ixc_assign
    generic map(W => 9)
    port map (
       tready_override
      ,DUMMY58
    ) ;
  _zz_strnp_64 : ixc_assign
    generic map(W => 7)
    port map (
       cceip_encrypt_kop_fifo_override
      ,DUMMY59
    ) ;
  _zz_strnp_65 : ixc_assign
    generic map(W => 7)
    port map (
       cceip_validate_kop_fifo_override
      ,DUMMY60
    ) ;
  _zz_strnp_66 : ixc_assign
    generic map(W => 7)
    port map (
       cddip_decrypt_kop_fifo_override
      ,DUMMY61
    ) ;
  _zz_strnp_67 : ixc_assign
    generic map(W => 32)
    port map (
       sa_global_ctrl
      ,DUMMY62
    ) ;
  _zz_strnp_68 : ixc_assign
    generic map(W => 84)
    port map (
       DUMMY63
      ,rbus_ring_i
    ) ;
  _zy_simnet_cio_60 <= "0000000000000000" ;
  _zy_simnet_cio_61 <= "0000010001011100" ;
  _zz_strnp_69 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY64
      ,kme_cceip0_ob_out_pre
    ) ;
  _zz_strnp_70 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY65
      ,kme_cceip0_ob_in
    ) ;
  _zz_strnp_71 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY66
      ,kme_cceip1_ob_out_pre
    ) ;
  _zz_strnp_72 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY67
      ,kme_cceip1_ob_in
    ) ;
  _zz_strnp_73 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY68
      ,kme_cceip2_ob_out_pre
    ) ;
  _zz_strnp_74 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY69
      ,kme_cceip2_ob_in
    ) ;
  _zz_strnp_75 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY70
      ,kme_cceip3_ob_out_pre
    ) ;
  _zz_strnp_76 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY71
      ,kme_cceip3_ob_in
    ) ;
  _zz_strnp_77 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY72
      ,kme_cddip0_ob_out_pre
    ) ;
  _zz_strnp_78 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY73
      ,kme_cddip0_ob_in
    ) ;
  _zz_strnp_79 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY74
      ,kme_cddip1_ob_out_pre
    ) ;
  _zz_strnp_80 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY75
      ,kme_cddip1_ob_in
    ) ;
  _zz_strnp_81 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY76
      ,kme_cddip2_ob_out_pre
    ) ;
  _zz_strnp_82 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY77
      ,kme_cddip2_ob_in
    ) ;
  _zz_strnp_83 : ixc_assign
    generic map(W => 83)
    port map (
       DUMMY78
      ,kme_cddip3_ob_out_pre
    ) ;
  _zz_strnp_84 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY79
      ,kme_cddip3_ob_in
    ) ;
  _zz_strnp_85 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY80
      ,idle_components
    ) ;
  DUMMY95 : ixc_expEv
    generic map(w => integer_to_std(1,32))
    port map (
       DUMMY81
      ,clock_1
    ) ;
  DUMMY96 : cr_rst_sync
    port map (
       clk => clk_DUMMY0
      ,async_rst_n => rst_n
      ,bypass_reset => scan_mode
      ,test_rst_n => scan_rst_n
      ,rst_n => rst_sync_n
    ) ;
  u_cr_kme_core : cr_kme_core
    port map (
       kme_ib_out => DUMMY6
      ,kme_cceip0_ob_out => DUMMY7
      ,kme_cceip1_ob_out => DUMMY8
      ,kme_cceip2_ob_out => DUMMY9
      ,kme_cceip3_ob_out => DUMMY10
      ,kme_cddip0_ob_out => DUMMY11
      ,kme_cddip1_ob_out => DUMMY12
      ,kme_cddip2_ob_out => DUMMY13
      ,kme_cddip3_ob_out => DUMMY14
      ,ckv_rd => ckv_rd
      ,ckv_addr => ckv_addr
      ,kim_rd => kim_rd
      ,kim_addr => kim_addr
      ,cceip_encrypt_bimc_osync => cceip_encrypt_bimc_osync
      ,cceip_encrypt_bimc_odat => cceip_encrypt_bimc_odat
      ,cceip_encrypt_mbe => cceip_encrypt_mbe
      ,cceip_validate_bimc_osync => cceip_validate_bimc_osync
      ,cceip_validate_bimc_odat => cceip_validate_bimc_odat
      ,cceip_validate_mbe => cceip_validate_mbe
      ,cddip_decrypt_bimc_osync => cddip_decrypt_bimc_osync
      ,cddip_decrypt_bimc_odat => cddip_decrypt_bimc_odat
      ,cddip_decrypt_mbe => cddip_decrypt_mbe
      ,axi_bimc_osync => axi_bimc_osync
      ,axi_bimc_odat => axi_bimc_odat
      ,axi_mbe => axi_mbe
      ,seed0_invalidate => seed0_invalidate
      ,seed1_invalidate => seed1_invalidate
      ,set_txc_bp_int => set_txc_bp_int
      ,set_gcm_tag_fail_int => set_gcm_tag_fail_int
      ,set_key_tlv_miscmp_int => set_key_tlv_miscmp_int
      ,set_tlv_bip2_error_int => set_tlv_bip2_error_int
      ,set_rsm_is_backpressuring => set_rsm_is_backpressuring
      ,idle_components => DUMMY15
      ,sa_snapshot => sa_snapshot
      ,sa_count => sa_count
      ,kme_idle => kme_idle
      ,clk => clk_DUMMY0
      ,rst_n => rst_sync_n
      ,scan_en => scan_en
      ,scan_mode => scan_mode
      ,scan_rst_n => scan_rst_n
      ,disable_debug_cmd => disable_debug_cmd
      ,disable_unencrypted_keys => disable_unencrypted_keys
      ,suppress_key_tlvs => suppress_key_tlvs
      ,always_validate_kim_ref => always_validate_kim_ref
      ,kme_ib_in => DUMMY16
      ,kme_cceip0_ob_in => DUMMY17
      ,kme_cceip1_ob_in => DUMMY18
      ,kme_cceip2_ob_in => DUMMY19
      ,kme_cceip3_ob_in => DUMMY20
      ,kme_cddip0_ob_in => DUMMY21
      ,kme_cddip1_ob_in => DUMMY22
      ,kme_cddip2_ob_in => DUMMY23
      ,kme_cddip3_ob_in => DUMMY24
      ,ckv_dout => ckv_dout
      ,ckv_mbe => ckv_mbe
      ,kim_dout => DUMMY25
      ,kim_mbe => kim_mbe
      ,bimc_rst_n => bimc_rst_n
      ,cceip_encrypt_bimc_isync => cceip_encrypt_bimc_isync
      ,cceip_encrypt_bimc_idat => cceip_encrypt_bimc_idat
      ,cceip_validate_bimc_isync => cceip_validate_bimc_isync
      ,cceip_validate_bimc_idat => cceip_validate_bimc_idat
      ,cddip_decrypt_bimc_isync => cddip_decrypt_bimc_isync
      ,cddip_decrypt_bimc_idat => cddip_decrypt_bimc_idat
      ,axi_bimc_isync => axi_bimc_isync
      ,axi_bimc_idat => axi_bimc_idat
      ,labels => _zy_simnet_tvar_20
      ,seed0_valid => seed0_valid
      ,seed0_internal_state_key => seed0_internal_state_key
      ,seed0_internal_state_value => seed0_internal_state_value
      ,seed0_reseed_interval => seed0_reseed_interval
      ,seed1_valid => seed1_valid
      ,seed1_internal_state_key => seed1_internal_state_key
      ,seed1_internal_state_value => seed1_internal_state_value
      ,seed1_reseed_interval => seed1_reseed_interval
      ,tready_override => DUMMY26
      ,cceip_encrypt_kop_fifo_override => DUMMY27
      ,cceip_validate_kop_fifo_override => DUMMY28
      ,cddip_decrypt_kop_fifo_override => DUMMY29
      ,kdf_test_key_size => kdf_test_key_size
      ,kdf_test_mode_en => kdf_test_mode_en
      ,sa_global_ctrl => DUMMY30
      ,sa_ctrl => sa_ctrl
    ) ;
  u_nx_rbus_apb : nx_rbus_apb
    port map (
       rbus_addr_o => DUMMY31
      ,rbus_wr_strb_o => DUMMY32
      ,rbus_wr_data_o => DUMMY33
      ,rbus_rd_strb_o => DUMMY34
      ,apb_prdata => apb_prdata
      ,apb_pready => apb_pready
      ,apb_pslverr => apb_pslverr
      ,clk => clk_DUMMY0
      ,rst_n => rst_sync_n
      ,rbus_rd_data_i => DUMMY35
      ,rbus_ack_i => DUMMY36
      ,rbus_err_ack_i => DUMMY37
      ,rbus_wr_strb_i => DUMMY38
      ,rbus_rd_strb_i => DUMMY39
      ,apb_paddr => apb_paddr
      ,apb_psel => apb_psel
      ,apb_penable => apb_penable
      ,apb_pwrite => apb_pwrite
      ,apb_pwdata => apb_pwdata
    ) ;
  u_cr_kme_regfile : cr_kme_regfile
    port map (
       suppress_key_tlvs => suppress_key_tlvs
      ,kme_interrupt => kme_interrupt
      ,rbus_ring_o => DUMMY40
      ,kme_cceip0_ob_out => DUMMY41
      ,kme_cceip0_ob_in_mod => DUMMY42
      ,kme_cceip1_ob_out => DUMMY43
      ,kme_cceip1_ob_in_mod => DUMMY44
      ,kme_cceip2_ob_out => DUMMY45
      ,kme_cceip2_ob_in_mod => DUMMY46
      ,kme_cceip3_ob_out => DUMMY47
      ,kme_cceip3_ob_in_mod => DUMMY48
      ,kme_cddip0_ob_out => DUMMY49
      ,kme_cddip0_ob_in_mod => DUMMY50
      ,kme_cddip1_ob_out => DUMMY51
      ,kme_cddip1_ob_in_mod => DUMMY52
      ,kme_cddip2_ob_out => DUMMY53
      ,kme_cddip2_ob_in_mod => DUMMY54
      ,kme_cddip3_ob_out => DUMMY55
      ,kme_cddip3_ob_in_mod => DUMMY56
      ,ckv_dout => ckv_dout
      ,ckv_mbe => ckv_mbe
      ,kim_dout => DUMMY57
      ,kim_mbe => kim_mbe
      ,bimc_rst_n => bimc_rst_n
      ,cceip_encrypt_bimc_isync => cceip_encrypt_bimc_isync
      ,cceip_encrypt_bimc_idat => cceip_encrypt_bimc_idat
      ,cceip_validate_bimc_isync => cceip_validate_bimc_isync
      ,cceip_validate_bimc_idat => cceip_validate_bimc_idat
      ,cddip_decrypt_bimc_isync => cddip_decrypt_bimc_isync
      ,cddip_decrypt_bimc_idat => cddip_decrypt_bimc_idat
      ,axi_bimc_isync => axi_bimc_isync
      ,axi_bimc_idat => axi_bimc_idat
      ,labels => _zy_simnet_tvar_53
      ,seed0_valid => seed0_valid
      ,seed0_internal_state_key => seed0_internal_state_key
      ,seed0_internal_state_value => seed0_internal_state_value
      ,seed0_reseed_interval => seed0_reseed_interval
      ,seed1_valid => seed1_valid
      ,seed1_internal_state_key => seed1_internal_state_key
      ,seed1_internal_state_value => seed1_internal_state_value
      ,seed1_reseed_interval => seed1_reseed_interval
      ,tready_override => DUMMY58
      ,cceip_encrypt_kop_fifo_override => DUMMY59
      ,cceip_validate_kop_fifo_override => DUMMY60
      ,cddip_decrypt_kop_fifo_override => DUMMY61
      ,manual_txc => manual_txc
      ,always_validate_kim_ref => always_validate_kim_ref
      ,kdf_test_mode_en => kdf_test_mode_en
      ,kdf_test_key_size => kdf_test_key_size
      ,sa_global_ctrl => DUMMY62
      ,sa_ctrl => sa_ctrl
      ,debug_kme_ib_tvalid => debug_kme_ib_tvalid
      ,debug_kme_ib_tlast => debug_kme_ib_tlast
      ,debug_kme_ib_tid => debug_kme_ib_tid
      ,debug_kme_ib_tstrb => debug_kme_ib_tstrb
      ,debug_kme_ib_tuser => debug_kme_ib_tuser
      ,debug_kme_ib_tdata => debug_kme_ib_tdata
      ,clk => clk_DUMMY0
      ,rst_n => rst_sync_n
      ,ovstb => ovstb
      ,lvm => lvm
      ,mlvm => mlvm
      ,rbus_ring_i => DUMMY63
      ,cfg_start_addr => _zy_simnet_cio_60
      ,cfg_end_addr => _zy_simnet_cio_61
      ,kme_cceip0_ob_out_pre => DUMMY64
      ,kme_cceip0_ob_in => DUMMY65
      ,kme_cceip1_ob_out_pre => DUMMY66
      ,kme_cceip1_ob_in => DUMMY67
      ,kme_cceip2_ob_out_pre => DUMMY68
      ,kme_cceip2_ob_in => DUMMY69
      ,kme_cceip3_ob_out_pre => DUMMY70
      ,kme_cceip3_ob_in => DUMMY71
      ,kme_cddip0_ob_out_pre => DUMMY72
      ,kme_cddip0_ob_in => DUMMY73
      ,kme_cddip1_ob_out_pre => DUMMY74
      ,kme_cddip1_ob_in => DUMMY75
      ,kme_cddip2_ob_out_pre => DUMMY76
      ,kme_cddip2_ob_in => DUMMY77
      ,kme_cddip3_ob_out_pre => DUMMY78
      ,kme_cddip3_ob_in => DUMMY79
      ,ckv_rd => ckv_rd
      ,ckv_addr => ckv_addr
      ,kim_rd => kim_rd
      ,kim_addr => kim_addr
      ,cceip_encrypt_bimc_osync => cceip_encrypt_bimc_osync
      ,cceip_encrypt_bimc_odat => cceip_encrypt_bimc_odat
      ,cceip_encrypt_mbe => cceip_encrypt_mbe
      ,cceip_validate_bimc_osync => cceip_validate_bimc_osync
      ,cceip_validate_bimc_odat => cceip_validate_bimc_odat
      ,cceip_validate_mbe => cceip_validate_mbe
      ,cddip_decrypt_bimc_osync => cddip_decrypt_bimc_osync
      ,cddip_decrypt_bimc_odat => cddip_decrypt_bimc_odat
      ,cddip_decrypt_mbe => cddip_decrypt_mbe
      ,axi_bimc_osync => axi_bimc_osync
      ,axi_bimc_odat => axi_bimc_odat
      ,axi_mbe => axi_mbe
      ,seed0_invalidate => seed0_invalidate
      ,seed1_invalidate => seed1_invalidate
      ,set_txc_bp_int => set_txc_bp_int
      ,set_gcm_tag_fail_int => set_gcm_tag_fail_int
      ,set_key_tlv_miscmp_int => set_key_tlv_miscmp_int
      ,set_tlv_bip2_error_int => set_tlv_bip2_error_int
      ,set_rsm_is_backpressuring => set_rsm_is_backpressuring
      ,idle_components => DUMMY80
      ,sa_snapshot => sa_snapshot
      ,sa_count => sa_count
      ,debug_kme_ib_tready => debug_kme_ib_tready
    ) ;
end module;
