architecture module of kme_tb is
  -- quickturn multiple_driver_resolution
  type DUMMY0 is array(integer range <>) of std_logic_vector(71 downto 0) ;
  type DUMMY1 is array(integer range <>) of std_logic_vector(135 downto 0) ;
  signal DUMMY2 : std_logic ;
  -- quickturn ext_drive_resolve DUMMY2
  signal DUMMY3 : std_logic ;
  -- quickturn ext_drive_resolve DUMMY3
  signal DUMMY4 : std_logic_vector(63 downto 0) ;
  -- quickturn ext_drive_resolve DUMMY4
  signal DUMMY5 : std_logic_vector(31 downto 0) ;
  -- quickturn ext_drive_resolve DUMMY5
  signal DUMMY6 : std_logic ;
  -- quickturn ext_drive_resolve DUMMY6
  signal DUMMY7 : std_logic ;
  -- quickturn ext_drive_resolve DUMMY7
  signal DUMMY8 : std_logic ;
  -- quickturn ext_drive_resolve DUMMY8
  signal DUMMY9 : std_logic_vector(63 downto 0) ;
  -- quickturn ext_drive_resolve DUMMY9
  signal DUMMY10 : std_logic_vector(31 downto 0) ;
  -- quickturn ext_drive_resolve DUMMY10
  signal DUMMY11 : std_logic ;
  -- quickturn ext_drive_resolve DUMMY11
  -- quickturn CVASTRPROP MODULE HDLICE PROP_RANOFF TRUE
  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  component ixc_assign
    generic (
      W : integer := 1
    ) ;
    port (
      L : out std_logic_vector((W - 1) downto 0) ;
    R : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component ixc_mem_call
    generic (
      S2HDW : std_logic_vector := signed(integer_to_std(1,32)) ;
      H2SDW : std_logic_vector := signed(integer_to_std(1,32)) ;
      MAIDW : std_logic_vector := signed(integer_to_std(0,32)) ;
      LTIDW : std_logic_vector := signed(integer_to_std(0,32)) ;
      ISSVA : integer := 0 ;
      constant S2HDW1 : std_logic_vector := it_cond_op(ext(S2HDW,$QKTN_MAX
      (S2HDW'length,32)) = integer_to_std(0,$QKTN_MAX(S2HDW'length,32)
      ),integer_to_std(0,$QKTN_MAX(S2HDW'length,32)),(ext(S2HDW,$QKTN_MAX
      (S2HDW'length,32)) - integer_to_std(1,$QKTN_MAX(S2HDW'length,32)))) ;
      constant H2SDW1 : std_logic_vector := it_cond_op(ext(H2SDW,$QKTN_MAX
      (H2SDW'length,32)) = integer_to_std(0,$QKTN_MAX(H2SDW'length,32)
      ),integer_to_std(0,$QKTN_MAX(H2SDW'length,32)),(ext(H2SDW,$QKTN_MAX
      (H2SDW'length,32)) - integer_to_std(1,$QKTN_MAX(H2SDW'length,32)))) ;
      constant MAIDW1 : std_logic_vector := it_cond_op(ext(MAIDW,$QKTN_MAX
      (MAIDW'length,32)) = integer_to_std(0,$QKTN_MAX(MAIDW'length,32)
      ),integer_to_std(0,$QKTN_MAX(MAIDW'length,32)),(ext(MAIDW,$QKTN_MAX
      (MAIDW'length,32)) - integer_to_std(1,$QKTN_MAX(MAIDW'length,32)))) ;
      constant LTIDW1 : std_logic_vector := it_cond_op(ext(LTIDW,$QKTN_MAX
      (LTIDW'length,32)) = integer_to_std(0,$QKTN_MAX(LTIDW'length,32)
      ),integer_to_std(0,$QKTN_MAX(LTIDW'length,32)),(ext(LTIDW,$QKTN_MAX
      (LTIDW'length,32)) - integer_to_std(1,$QKTN_MAX(LTIDW'length,32))))
    ) ;
    port (
      s2h_notify : out std_logic ;
      s2h_data : out std_logic_vector(conv_integer(S2HDW1) downto 0) ;
      from_isf : in std_logic := 'X' ;
      h2s_notify : in std_logic := 'X' ;
      h2s_data : in std_logic_vector(conv_integer(H2SDW1) downto 0) := (others
       => '0') ;
      to_osf : out std_logic ;
      maid : in std_logic_vector(conv_integer(MAIDW1) downto 0) := (others =>
       '0') ;
    ltid : in std_logic_vector(conv_integer(LTIDW1) downto 0) := (others => '0')
     ) ;
  end component ;

  component ixc_sfifo_port
    generic (
      IARGW : std_logic_vector := signed(integer_to_std(1,32)) ;
      OARGW : std_logic_vector := signed(integer_to_std(1,32)) ;
      constant IARGW1 : std_logic_vector := it_cond_op(ext(IARGW,$QKTN_MAX
      (IARGW'length,32)) = integer_to_std(0,$QKTN_MAX(IARGW'length,32)
      ),integer_to_std(0,$QKTN_MAX(IARGW'length,32)),(ext(IARGW,$QKTN_MAX
      (IARGW'length,32)) - integer_to_std(1,$QKTN_MAX(IARGW'length,32)))) ;
      constant OARGW1 : std_logic_vector := it_cond_op(ext(OARGW,$QKTN_MAX
      (OARGW'length,32)) = integer_to_std(0,$QKTN_MAX(OARGW'length,32)
      ),integer_to_std(0,$QKTN_MAX(OARGW'length,32)),(ext(OARGW,$QKTN_MAX
      (OARGW'length,32)) - integer_to_std(1,$QKTN_MAX(OARGW'length,32))))
    ) ;
    port (
      call : out std_logic ;
      iarg : out std_logic_vector(conv_integer(IARGW1) downto 0) ;
      oarg : in std_logic_vector(conv_integer(OARGW1) downto 0) := (others =>
       'X') ;
      tid : in std_logic_vector(21 downto 0) := (others => 'X') ;
      fen : out std_logic ;
      CiData : in std_logic_vector(511 downto 0) := (others => 'X') ;
      CtId : in std_logic_vector(21 downto 0) := (others => 'X') ;
      CoData : out std_logic_vector(511 downto 0) ;
      CoDataEn : out std_logic ;
    CoDataLen : out std_logic_vector(3 downto 0) ) ;
  end component ;

  component axis_tbcall
    generic (
      level : integer := 0 ;
      anyEdge : integer := 0 ;
      BP : integer := 0
    ) ;
    port (
      s : in std_logic := 'X' ;
      taskcall : in std_logic := 'X' ;
      so : out std_logic ;
    pui : in std_logic := 'X' ) ;
  end component ;

  component ixc_gfifo_port
    generic (
      DW : std_logic_vector := signed(integer_to_std(512,32)) ;
      SHARE : integer := 0 ;
      USETIME : std_logic_vector := signed(integer_to_std(1,32)) ;
      BUFL : std_logic_vector := signed(integer_to_std(4,32)) ;
      IS_SV_CHANNEL : integer := 1
    ) ;
    port (
      tkout : out std_logic ;
      tkin : in std_logic := 'X' ;
      ireq : in std_logic := 'X' ;
      cbid : in std_logic_vector(19 downto 0) := (others => 'X') ;
      len : in std_logic_vector(11 downto 0) := (others => 'X') ;
      idata : in std_logic_vector(conv_integer((ext(DW,$QKTN_MAX(DW'length,32))
       - integer_to_std(1,$QKTN_MAX(DW'length,32)))) downto 0) := (others => 'X'
      ) ;
      CGFtsReq : out std_logic ;
      CGFcbid : out std_logic_vector(19 downto 0) ;
      CGFlen : out std_logic_vector(11 downto 0) ;
      CGFidata : out std_logic_vector((512 - 1) downto 0) ;
      CGFfull : in std_logic := 'X' ;
      CLBreq : out std_logic ;
      CLBrd : in std_logic_vector(3 downto 0) := (others => 'X') ;
      CLBwr : in std_logic_vector(3 downto 0) := (others => 'X') ;
      CLBfull : in std_logic := 'X' ;
    Rtkin : in std_logic := 'X' ) ;
  end component ;

  component ixc_mevClk
    generic (
      WIDTH : std_logic_vector := signed(integer_to_std(4,32)) ;
      DUMMY3 : std_logic_vector := signed(integer_to_std(0,32)) ;
      HOLD : integer := 0 ;
      IS_EDGED : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
      (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto
       0) := integer_to_std(0,abs(conv_integer((ext(WIDTH,$QKTN_MAX
      (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) ;
      POLARITY : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
      (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto
       0) := integer_to_std(0,abs(conv_integer((ext(WIDTH,$QKTN_MAX
      (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) ;
      DS : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32))
       - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0) :=
       integer_to_std(0,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32))
       - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) ;
      DM : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32))
       - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0) :=
       integer_to_std(0,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32))
       - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) ;
      EVOUT : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32
      )) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0) :=
       integer_to_std(0,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32))
       - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) ;
      WAIT_EV : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
      (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto
       0) := integer_to_std(0,abs(conv_integer((ext(WIDTH,$QKTN_MAX
      (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1)
    ) ;
    port (
      xclk : out std_logic ;
      clks : in std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
      (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto
       0) := (others => 'X') ;
      ens : in std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
      (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto
       0) := (others => 'X') ;
      DUMMY5 : in std_logic := 'X' ;
      DUMMY7 : in std_logic := 'X' ;
      active : out std_logic ;
      busy : out std_logic ;
    bwOn : out std_logic ) ;
  end component ;

  component ixc_capLoopXp
    port (
      bClk : out std_logic ;
      en : in std_logic := 'X' ;
      bcLatchEn : out std_logic ;
    bpHalt : out std_logic ) ;
  end component ;

  component ixc_mdrOn
    generic (
      WIDTH : integer := 1
    ) ;
    port (
      drOn : out std_logic_vector((WIDTH - 1) downto 0) ;
      enNxt : out std_logic_vector((WIDTH - 1) downto 0) ;
    en : in std_logic_vector((WIDTH - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component ixc_sampleLT
    generic (
      WIDTH : integer := 1 ;
      ASYNC : integer := 0
    ) ;
    port (
      ov : out std_logic_vector((WIDTH - 1) downto 0) ;
    v : in std_logic_vector((WIDTH - 1) downto 0) := (others => 'X') ) ;
  end component ;

  component apb_xactor
    generic (
      ADDR_WIDTH : integer := 20 ;
      DATA_WIDTH : integer := 32
    ) ;
    port (
      psel : out std_logic ;
      penable : out std_logic ;
      paddr : out std_logic_vector(19 downto 0) ;
      pwdata : out std_logic_vector(31 downto 0) ;
      pwrite : out std_logic ;
      clk : in std_logic := 'X' ;
      reset_n : in std_logic := 'X' ;
      prdata : in std_logic_vector(31 downto 0) := (others => 'X') ;
      pready : in std_logic := 'X' ;
    pslverr : in std_logic := 'X' ) ;
  end component ;

  component cr_kme
    generic (
      KME_STUB : integer := 0
    ) ;
    port (
      kme_interrupt : out std_logic ;
      kme_ib_tready : out std_logic ;
      kme_cceip0_ob_tvalid : out std_logic ;
      kme_cceip0_ob_tlast : out std_logic ;
      kme_cceip0_ob_tid : out std_logic_vector(0 downto 0) ;
      kme_cceip0_ob_tstrb : out std_logic_vector(7 downto 0) ;
      kme_cceip0_ob_tuser : out std_logic_vector(7 downto 0) ;
      kme_cceip0_ob_tdata : out std_logic_vector(63 downto 0) ;
      apb_prdata : out std_logic_vector(31 downto 0) ;
      apb_pready : out std_logic ;
      apb_pslverr : out std_logic ;
      kme_idle : out std_logic ;
      clk : in std_logic := 'X' ;
      rst_n : in std_logic := 'X' ;
      scan_en : in std_logic := 'X' ;
      scan_mode : in std_logic := 'X' ;
      scan_rst_n : in std_logic := 'X' ;
      ovstb : in std_logic := 'X' ;
      lvm : in std_logic := 'X' ;
      mlvm : in std_logic := 'X' ;
      disable_debug_cmd : in std_logic := 'X' ;
      disable_unencrypted_keys : in std_logic := 'X' ;
      kme_ib_tvalid : in std_logic := 'X' ;
      kme_ib_tlast : in std_logic := 'X' ;
      kme_ib_tid : in std_logic_vector(0 downto 0) := (others => 'X') ;
      kme_ib_tstrb : in std_logic_vector(7 downto 0) := (others => 'X') ;
      kme_ib_tuser : in std_logic_vector(7 downto 0) := (others => 'X') ;
      kme_ib_tdata : in std_logic_vector(63 downto 0) := (others => 'X') ;
      kme_cceip0_ob_tready : in std_logic := 'X' ;
      apb_paddr : in std_logic_vector(15 downto 0) := (others => 'X') ;
      apb_psel : in std_logic := 'X' ;
      apb_penable : in std_logic := 'X' ;
      apb_pwrite : in std_logic := 'X' ;
    apb_pwdata : in std_logic_vector(31 downto 0) := (others => 'X') ) ;
  end component ;

  signal DUMMY12 : std_logic ;
  signal DUMMY13 : std_logic ;
  signal DUMMY14 : std_logic_vector(0 to 19) ;
  signal DUMMY15 : std_logic_vector(0 to 31) ;
  signal DUMMY16 : std_logic ;
  signal DUMMY17 : std_logic ;
  signal DUMMY18 : std_logic ;
  signal DUMMY19 : std_logic_vector(0 to 31) ;
  signal DUMMY20 : std_logic ;
  signal DUMMY21 : std_logic ;
  signal _zy_simnet_dio_10 : std_logic ;
  signal DUMMY22 : std_logic ;
  signal DUMMY23 : std_logic ;
  signal DUMMY24 : std_logic ;
  signal DUMMY25 : std_logic ;
  signal DUMMY26 : std_logic_vector(0 to 7) ;
  signal DUMMY27 : std_logic_vector(0 to 7) ;
  signal DUMMY28 : std_logic_vector(0 to 63) ;
  signal DUMMY29 : std_logic_vector(0 to 31) ;
  signal DUMMY30 : std_logic ;
  signal DUMMY31 : std_logic ;
  signal _zy_simnet_dio_21 : std_logic ;
  signal DUMMY32 : std_logic ;
  signal DUMMY33 : std_logic ;
  signal _zy_simnet_cio_24 : std_logic ;
  signal _zy_simnet_cio_25 : std_logic ;
  signal _zy_simnet_cio_26 : std_logic ;
  signal _zy_simnet_cio_27 : std_logic ;
  signal _zy_simnet_cio_28 : std_logic ;
  signal _zy_simnet_cio_29 : std_logic ;
  signal _zy_simnet_cio_30 : std_logic ;
  signal _zy_simnet_cio_31 : std_logic ;
  signal DUMMY34 : std_logic ;
  signal DUMMY35 : std_logic ;
  signal DUMMY36 : std_logic ;
  signal DUMMY37 : std_logic_vector(0 to 7) ;
  signal DUMMY38 : std_logic_vector(0 to 7) ;
  signal DUMMY39 : std_logic_vector(0 to 63) ;
  signal DUMMY40 : std_logic ;
  signal DUMMY41 : std_logic_vector(0 to 15) ;
  signal DUMMY42 : std_logic ;
  signal DUMMY43 : std_logic ;
  signal DUMMY44 : std_logic ;
  signal DUMMY45 : std_logic_vector(0 to 31) ;
  signal _zyixc_port_0_0_s2h : std_logic ;
  signal _zyixc_port_0_0_s2hW : std_logic ;
  signal _zySfifoF0_call : std_logic ;
  signal _zySfifoF0_fen : std_logic ;
  signal _zySfifoF0_iarg : std_logic_vector(31 downto 0) ;
  signal _zyGfifo_SiData : std_logic_vector(511 downto 0) ;
  signal _zyGfifo_StId : std_logic_vector(21 downto 0) ;
  signal _zyGfifo_SoData : std_logic_vector(511 downto 0) ;
  signal _zyGfifo_SoDataEn : std_logic ;
  signal _zyGfifo_SoDataLen : std_logic_vector(3 downto 0) ;
  signal _zySfifoF1_call : std_logic ;
  signal _zySfifoF1_fen : std_logic ;
  signal _zySfifoF1_iarg : std_logic_vector(71 downto 0) ;
  signal _zySfifoF2_call : std_logic ;
  signal _zySfifoF2_fen : std_logic ;
  signal _zySfifoF2_iarg : std_logic_vector(31 downto 0) ;
  signal _zySfifoF3_call : std_logic ;
  signal _zySfifoF3_fen : std_logic ;
  signal _zySfifoF3_iarg : std_logic_vector(135 downto 0) ;
  signal _zySfifoF4_call : std_logic ;
  signal _zySfifoF4_fen : std_logic ;
  signal _zySfifoF4_iarg : std_logic_vector(31 downto 0) ;
  signal _zySfifoF5_call : std_logic ;
  signal _zySfifoF5_fen : std_logic ;
  signal _zySfifoF5_iarg : std_logic_vector(135 downto 0) ;
  signal _zyL94_iscX1c0_f : std_logic ;
  signal _zyL94_iscX1c0_o1 : std_logic_vector(31 downto 0) ;
  signal _zyL94_iscX1c0_o2 : std_logic ;
  signal _zyL61_iscX2c0_f : std_logic ;
  signal _zyL61_iscX2c0_o2 : std_logic ;
  signal _zyictd_finish_mgr : std_logic ;
  -- quickturn external_ref _zyictd_finish_mgr
  signal _zyGfifo_mod2_dflt_ci : std_logic ;
  signal _zyGfifo_mod2_dflt_co : std_logic ;
  signal _zyGfifo_dflt_ci : std_logic_vector(26 downto 0) ;
  signal _zyGfifo_dflt_co : std_logic_vector(26 downto 0) ;
  signal _zyGfifo_SGFtsReq : std_logic ;
  signal _zyGfifo_SGFcbid : std_logic_vector(19 downto 0) ;
  signal _zyGfifo_SGFlen : std_logic_vector(11 downto 0) ;
  signal _zyGfifo_SGFidata : std_logic_vector(511 downto 0) ;
  signal _zyGfifo_SGFfull : std_logic ;
  signal _zyGfifo_SLBreq : std_logic ;
  signal _zyGfifo_SLBrd : std_logic_vector(3 downto 0) ;
  signal _zyGfifo_SLBwr : std_logic_vector(3 downto 0) ;
  signal _zyGfifo_SLBfull : std_logic ;
  signal _zyGfifo_SRtkin : std_logic ;
  signal _zyM2L324_pbcMevClk4 : std_logic ;
  signal _zyM2L324_pbcReq4 : std_logic ;
  signal _zyM2L324_pbcBusy4 : std_logic ;
  signal _zyM2L324_pbcWait4 : std_logic ;
  signal _zyM2L253_pbcMevClk12 : std_logic ;
  signal _zyM2L253_pbcReq12 : std_logic ;
  signal _zyM2L253_pbcBusy12 : std_logic ;
  signal _zyM2L253_pbcWait12 : std_logic ;
  signal _zzM2_bcBehEvalClk : std_logic ;
  signal _zzM2_bcBehHalt : std_logic ;
  signal _zzmdxOne : std_logic ;
  signal _zzM2L306_mdxP0_EnNxt : std_logic ;
  signal _zzM2L306_mdxP0_On : std_logic ;
  signal _zzM2L324_mdxP2_EnNxt : std_logic ;
  signal _zzM2L324_mdxP2_On : std_logic ;
  signal _zzM2L368_mdxP3_EnNxt : std_logic ;
  signal _zzM2L368_mdxP3_On : std_logic ;
  signal _zzM2L439_mdxP4_EnNxt : std_logic ;
  signal _zzM2L439_mdxP4_On : std_logic ;
  signal _zzM2L253_mdxP5_EnNxt : std_logic ;
  signal _zzM2L253_mdxP5_On : std_logic ;
  signal DUMMY46 : std_logic ;
  -- quickturn external_ref DUMMY46
  signal testname : std_logic_vector(279 downto 0) ;
  signal seed : std_logic_vector(279 downto 0) ;
  signal initial_seed : std_logic_vector(31 downto 0) ;
  signal error_cntr : integer ;
  attribute _2_state_ of error_cntr: signal is 1 ;
  signal clk : std_logic ;
  signal rst_n : std_logic ;
  signal kme_ib_tready : std_logic ;
  signal kme_ib_tid : std_logic_vector(0 downto 0) ;
  signal kme_ib_tdata : std_logic_vector(63 downto 0) ;
  signal kme_ib_tstrb : std_logic_vector(7 downto 0) ;
  signal kme_ib_tuser : std_logic_vector(7 downto 0) ;
  signal kme_ib_tvalid : std_logic ;
  signal kme_ib_tlast : std_logic ;
  signal kme_ob_tready : std_logic ;
  signal kme_ob_tid : std_logic_vector(0 downto 0) ;
  signal kme_ob_tdata : std_logic_vector(63 downto 0) ;
  signal kme_ob_tstrb : std_logic_vector(7 downto 0) ;
  signal kme_ob_tuser : std_logic_vector(7 downto 0) ;
  signal kme_ob_tvalid : std_logic ;
  signal kme_ob_tlast : std_logic ;
  signal kme_apb_paddr : std_logic_vector(19 downto 0) ;
  signal kme_apb_psel : std_logic ;
  signal kme_apb_penable : std_logic ;
  signal kme_apb_pwrite : std_logic ;
  signal kme_apb_pwdata : std_logic_vector(31 downto 0) ;
  signal kme_apb_prdata : std_logic_vector(31 downto 0) ;
  signal kme_apb_pready : std_logic ;
  signal kme_apb_pslverr : std_logic ;
  signal my_clk : std_logic ;
  -- quickturn external_ref my_clk
  signal config_done : std_logic := '0' ;
  signal tstrb_ib : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of tstrb_ib: signal is 1 ;
  signal tdata_ib : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of tdata_ib: signal is 1 ;
  signal tuser_string_ib : std_logic_vector(31 downto 0) ;
  attribute _2_state_ of tuser_string_ib: signal is 1 ;
  signal str_get_ib : std_logic_vector(31 downto 0) ;
  attribute _2_state_ of str_get_ib: signal is 1 ;
  signal user_string_ib : std_logic_vector(24 downto 0) := std_logic_vector'
  ("0000000000000000000000000") ;
  signal retval_ib : integer ;
  attribute _2_state_ of retval_ib: signal is 1 ;
  signal ready_ib : std_logic := '0' ;
  signal saw_mega : std_logic ;
  signal saw_guid_tlv : std_logic ;
  signal have_guid_tlv : std_logic ;
  signal mega_tlv_word_count : integer ;
  attribute _2_state_ of mega_tlv_word_count: signal is 1 ;
  signal tstrb_ob : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of tstrb_ob: signal is 1 ;
  signal tdata_ob : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of tdata_ob: signal is 1 ;
  signal tuser_string_ob : std_logic_vector(31 downto 0) ;
  attribute _2_state_ of tuser_string_ob: signal is 1 ;
  signal user_string_ob : std_logic_vector(24 downto 0) ;
  signal str_get_ob : std_logic_vector(31 downto 0) ;
  attribute _2_state_ of str_get_ob: signal is 1 ;
  signal retval_ob : integer ;
  attribute _2_state_ of retval_ob: signal is 1 ;
  signal ready_ob : std_logic := '0' ;
  signal tuser : std_logic_vector(7 downto 0) ;
  signal tlast : std_logic ;
  signal saw_cqe : std_logic ;
  signal saw_stats : std_logic ;
  signal ignore_compare_result : std_logic ;
  signal watchdog_timer : integer ;
  signal returned_data : std_logic_vector(31 downto 0) ;
  signal response : std_logic ;
  signal operation : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of operation: signal is 1 ;
  signal address : std_logic_vector(31 downto 0) ;
  attribute _2_state_ of address: signal is 1 ;
  signal data : std_logic_vector(31 downto 0) ;
  attribute _2_state_ of data: signal is 1 ;
  signal retval : integer ;
  attribute _2_state_ of retval: signal is 1 ;
  signal config_ready : std_logic := '0' ;
  signal _zz_58_258_2 : integer ;
  signal _zz_58_264_3 : integer ;
  signal _zygsfis_get_config_data_fifo : DUMMY0(0 to 31) ;
  attribute _2_state_ of _zygsfis_get_config_data_fifo: signal is 1 ;
  signal _zygsfis_get_config_data_wptr : std_logic_vector(4 downto 0) ;
  attribute _2_state_ of _zygsfis_get_config_data_wptr: signal is 1 ;
  signal _zygsfis_get_config_data_rptr : std_logic_vector(4 downto 0) ;
  attribute _2_state_ of _zygsfis_get_config_data_rptr: signal is 1 ;
  signal _zygsfis_get_config_data_req : std_logic_vector(4 downto 0) ;
  attribute _2_state_ of _zygsfis_get_config_data_req: signal is 1 ;
  signal _zygsfis_get_config_data_ack : std_logic_vector(4 downto 0) ;
  attribute _2_state_ of _zygsfis_get_config_data_ack: signal is 1 ;
  signal _zygsfis_get_config_data_eos : std_logic ;
  attribute _2_state_ of _zygsfis_get_config_data_eos: signal is 1 ;
  signal _zygsfis_get_config_data_space : std_logic_vector(4 downto 0) ;
  attribute _2_state_ of _zygsfis_get_config_data_space: signal is 1 ;
  signal _zygsfis_ib_service_data_fifo : DUMMY1(0 to 31) ;
  attribute _2_state_ of _zygsfis_ib_service_data_fifo: signal is 1 ;
  signal _zygsfis_ib_service_data_wptr : std_logic_vector(4 downto 0) ;
  attribute _2_state_ of _zygsfis_ib_service_data_wptr: signal is 1 ;
  signal _zygsfis_ib_service_data_rptr : std_logic_vector(4 downto 0) ;
  attribute _2_state_ of _zygsfis_ib_service_data_rptr: signal is 1 ;
  signal _zygsfis_ib_service_data_req : std_logic_vector(4 downto 0) ;
  attribute _2_state_ of _zygsfis_ib_service_data_req: signal is 1 ;
  signal _zygsfis_ib_service_data_ack : std_logic_vector(4 downto 0) ;
  attribute _2_state_ of _zygsfis_ib_service_data_ack: signal is 1 ;
  signal _zygsfis_ib_service_data_eos : std_logic ;
  attribute _2_state_ of _zygsfis_ib_service_data_eos: signal is 1 ;
  signal _zygsfis_ib_service_data_space : std_logic_vector(4 downto 0) ;
  attribute _2_state_ of _zygsfis_ib_service_data_space: signal is 1 ;
  signal _zygsfis_ob_service_data_fifo : DUMMY1(0 to 31) ;
  attribute _2_state_ of _zygsfis_ob_service_data_fifo: signal is 1 ;
  signal _zygsfis_ob_service_data_wptr : std_logic_vector(4 downto 0) ;
  attribute _2_state_ of _zygsfis_ob_service_data_wptr: signal is 1 ;
  signal _zygsfis_ob_service_data_rptr : std_logic_vector(4 downto 0) ;
  attribute _2_state_ of _zygsfis_ob_service_data_rptr: signal is 1 ;
  signal _zygsfis_ob_service_data_req : std_logic_vector(4 downto 0) ;
  attribute _2_state_ of _zygsfis_ob_service_data_req: signal is 1 ;
  signal _zygsfis_ob_service_data_ack : std_logic_vector(4 downto 0) ;
  attribute _2_state_ of _zygsfis_ob_service_data_ack: signal is 1 ;
  signal _zygsfis_ob_service_data_eos : std_logic ;
  attribute _2_state_ of _zygsfis_ob_service_data_eos: signal is 1 ;
  signal _zygsfis_ob_service_data_space : std_logic_vector(4 downto 0) ;
  attribute _2_state_ of _zygsfis_ob_service_data_space: signal is 1 ;
  signal _zyixc_port_0_0_req : std_logic ;
  attribute _2_state_ of _zyixc_port_0_0_req: signal is 1 ;
  signal _zyixc_port_0_0_ack : std_logic ;
  attribute _2_state_ of _zyixc_port_0_0_ack: signal is 1 ;
  signal _zyixc_port_0_0_isf : std_logic ;
  attribute _2_state_ of _zyixc_port_0_0_isf: signal is 1 ;
  signal _zyixc_port_0_0_osf : std_logic ;
  attribute _2_state_ of _zyixc_port_0_0_osf: signal is 1 ;
  signal _zySfifoF0_get_config_data_zyackf_tid : std_logic_vector(21 downto 0) ;
  attribute _2_state_ of _zySfifoF0_get_config_data_zyackf_tid: signal is 1 ;
  signal _zySfifoF1_get_config_data_zyputf_tid : std_logic_vector(21 downto 0) ;
  attribute _2_state_ of _zySfifoF1_get_config_data_zyputf_tid: signal is 1 ;
  signal _zySfifoF2_ib_service_data_zyackf_tid : std_logic_vector(21 downto 0) ;
  attribute _2_state_ of _zySfifoF2_ib_service_data_zyackf_tid: signal is 1 ;
  signal _zySfifoF3_ib_service_data_zyputf_tid : std_logic_vector(21 downto 0) ;
  attribute _2_state_ of _zySfifoF3_ib_service_data_zyputf_tid: signal is 1 ;
  signal _zySfifoF4_ob_service_data_zyackf_tid : std_logic_vector(21 downto 0) ;
  attribute _2_state_ of _zySfifoF4_ob_service_data_zyackf_tid: signal is 1 ;
  signal _zySfifoF5_ob_service_data_zyputf_tid : std_logic_vector(21 downto 0) ;
  attribute _2_state_ of _zySfifoF5_ob_service_data_zyputf_tid: signal is 1 ;
  signal _zyL94_iscX1c0_s : std_logic ;
  signal _zyL94_iscX1c0_n : std_logic ;
  signal _zyL94_iscX1c0_i0 : std_logic_vector(63 downto 0) ;
  signal _zyL61_iscX2c0_s : std_logic ;
  signal _zyL61_iscX2c0_n : std_logic ;
  signal _zyL61_iscX2c0_i0 : std_logic_vector(63 downto 0) ;
  signal _zyL61_iscX2c0_i1 : std_logic_vector(31 downto 0) ;
  signal _zyL372_tfiRv5 : std_logic_vector(24 downto 0) ;
  signal _zyL406_tfiRv6 : std_logic_vector(7 downto 0) ;
  signal _zyL443_tfiRv7 : std_logic_vector(24 downto 0) ;
  signal _zyL462_tfiRv8 : std_logic_vector(7 downto 0) ;
  signal _zyictd_sysfunc_36_L258_0 : std_logic_vector(279 downto 0) ;
  signal _zyictd_sysfunc_36_L258_1 : integer ;
  signal _zyictd_sysfunc_11_L257_2 : integer ;
  signal _zyictd_sysfunc_36_L264_3 : std_logic_vector(279 downto 0) ;
  signal _zyictd_sysfunc_36_L264_4 : integer ;
  signal _zyictd_sysfunc_11_L263_5 : integer ;
  signal _zyictd_finish_L320_0 : std_logic ;
  attribute _2_state_ of _zyictd_finish_L320_0: signal is 1 ;
  signal _zyictd_finish_L338_1 : std_logic ;
  attribute _2_state_ of _zyictd_finish_L338_1: signal is 1 ;
  signal _zyictd_finish_L454_2 : std_logic ;
  attribute _2_state_ of _zyictd_finish_L454_2: signal is 1 ;
  signal _zyL326_tfiRv17 : integer ;
  attribute _2_state_ of _zyL326_tfiRv17: signal is 1 ;
  signal _zyL370_tfiRv18 : integer ;
  attribute _2_state_ of _zyL370_tfiRv18: signal is 1 ;
  signal _zyL441_tfiRv19 : integer ;
  attribute _2_state_ of _zyL441_tfiRv19: signal is 1 ;
  signal _zyGfifo_mod2_simData : std_logic_vector(0 downto 0) ;
  attribute _2_state_ of _zyGfifo_mod2_simData: signal is 1 ;
  signal _zyGfifo__gfdL435_34_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL435_34_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL435_34_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL435_34_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL513_33_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL513_33_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL513_33_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL513_33_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL316_32_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL316_32_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL316_32_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL316_32_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL318_31_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL318_31_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL318_31_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL318_31_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo_get_config_data_2_zyprefetch_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo_get_config_data_2_zyprefetch_m2_gfOff: signal
   is 1 ;
  signal _zyGfifo_get_config_data_2_zyprefetch_m2_cbid : std_logic_vector(19
   downto 0) ;
  attribute _2_state_ of _zyGfifo_get_config_data_2_zyprefetch_m2_cbid: signal
   is 1 ;
  signal _zyGfifo__gfdL327_30_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL327_30_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL327_30_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL327_30_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL330_29_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL330_29_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL330_29_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL330_29_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL334_28_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL334_28_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL334_28_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL334_28_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL336_27_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL336_27_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL336_27_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL336_27_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL341_26_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL341_26_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL341_26_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL341_26_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL351_25_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL351_25_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL351_25_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL351_25_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo_ib_service_data_2_zyprefetch_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo_ib_service_data_2_zyprefetch_m2_gfOff: signal
   is 1 ;
  signal _zyGfifo_ib_service_data_2_zyprefetch_m2_cbid : std_logic_vector(19
   downto 0) ;
  attribute _2_state_ of _zyGfifo_ib_service_data_2_zyprefetch_m2_cbid: signal
   is 1 ;
  signal _zyGfifo__gfdL519_24_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL519_24_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL519_24_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL519_24_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL522_23_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL522_23_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL522_23_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL522_23_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL373_22_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL373_22_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL373_22_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL373_22_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL375_21_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL375_21_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL375_21_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL375_21_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL381_20_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL381_20_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL381_20_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL381_20_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL390_19_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL390_19_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL390_19_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL390_19_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL530_18_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL530_18_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL530_18_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL530_18_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL412_17_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL412_17_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL412_17_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL412_17_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo_ob_service_data_2_zyprefetch_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo_ob_service_data_2_zyprefetch_m2_gfOff: signal
   is 1 ;
  signal _zyGfifo_ob_service_data_2_zyprefetch_m2_cbid : std_logic_vector(19
   downto 0) ;
  attribute _2_state_ of _zyGfifo_ob_service_data_2_zyprefetch_m2_cbid: signal
   is 1 ;
  signal _zyGfifo__gfdL519_16_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL519_16_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL519_16_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL519_16_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL522_15_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL522_15_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL522_15_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL522_15_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL444_14_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL444_14_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL444_14_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL444_14_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL446_13_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL446_13_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL446_13_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL446_13_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL460_12_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL460_12_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL460_12_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL460_12_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL530_11_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL530_11_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL530_11_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL530_11_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL480_10_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL480_10_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL480_10_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL480_10_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL482_9_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL482_9_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL482_9_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL482_9_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL487_8_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL487_8_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL487_8_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL487_8_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL491_7_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL491_7_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL491_7_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL491_7_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL496_6_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL496_6_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL496_6_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL496_6_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL265_5_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL265_5_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL265_5_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL265_5_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL268_4_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL268_4_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL268_4_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL268_4_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL271_3_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL271_3_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL271_3_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL271_3_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL276_2_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL276_2_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL276_2_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL276_2_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL289_1_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL289_1_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL289_1_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL289_1_P0_m2_cbid: signal is 1 ;
  signal _zyGfifo__gfdL365_0_P0_m2_gfOff : std_logic ;
  attribute _2_state_ of _zyGfifo__gfdL365_0_P0_m2_gfOff: signal is 1 ;
  signal _zyGfifo__gfdL365_0_P0_m2_cbid : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifo__gfdL365_0_P0_m2_cbid: signal is 1 ;
  signal _zyGfifoF0_L435_req_0 : std_logic ;
  attribute _2_state_ of _zyGfifoF0_L435_req_0: signal is 1 ;
  signal _zyGfifoF1_L513_req_0 : std_logic ;
  attribute _2_state_ of _zyGfifoF1_L513_req_0: signal is 1 ;
  signal _zyGfifoF0_L312_s2_req_0 : std_logic ;
  attribute _2_state_ of _zyGfifoF0_L312_s2_req_0: signal is 1 ;
  signal _zyGfifoF0_L312_s2_data_0 : std_logic_vector(279 downto 0) ;
  attribute _2_state_ of _zyGfifoF0_L312_s2_data_0: signal is 1 ;
  signal _zyGfifoF0_L312_s2_cbid_0 : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifoF0_L312_s2_cbid_0: signal is 1 ;
  signal _zyGfifoF0_L324_s3_req_1 : std_logic ;
  attribute _2_state_ of _zyGfifoF0_L324_s3_req_1: signal is 1 ;
  signal _zyGfifoF0_L324_s3_data_1 : std_logic_vector(95 downto 0) ;
  attribute _2_state_ of _zyGfifoF0_L324_s3_data_1: signal is 1 ;
  signal _zyGfifoF0_L324_s3_cbid_1 : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifoF0_L324_s3_cbid_1: signal is 1 ;
  signal _zyGfifoF0_L324_s3_len_1 : std_logic_vector(11 downto 0) ;
  attribute _2_state_ of _zyGfifoF0_L324_s3_len_1: signal is 1 ;
  signal _zyGfifoF1_L324_s2_req_2 : std_logic ;
  attribute _2_state_ of _zyGfifoF1_L324_s2_req_2: signal is 1 ;
  signal _zyGfifoF1_L324_s2_data_2 : std_logic_vector(31 downto 0) ;
  attribute _2_state_ of _zyGfifoF1_L324_s2_data_2: signal is 1 ;
  signal _zyGfifoF1_L324_s2_cbid_2 : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifoF1_L324_s2_cbid_2: signal is 1 ;
  signal _zyGfifoF2_L324_s2_req_3 : std_logic ;
  attribute _2_state_ of _zyGfifoF2_L324_s2_req_3: signal is 1 ;
  signal _zyGfifoF2_L324_s2_data_3 : std_logic_vector(71 downto 0) ;
  attribute _2_state_ of _zyGfifoF2_L324_s2_data_3: signal is 1 ;
  signal _zyGfifoF2_L324_s2_cbid_3 : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifoF2_L324_s2_cbid_3: signal is 1 ;
  signal _zyGfifoF2_L324_s2_len_3 : std_logic_vector(11 downto 0) ;
  attribute _2_state_ of _zyGfifoF2_L324_s2_len_3: signal is 1 ;
  signal _zyGfifoF11_L207_req_0 : std_logic ;
  attribute _2_state_ of _zyGfifoF11_L207_req_0: signal is 1 ;
  signal _zyGfifoF11_L207_data_0 : std_logic_vector(31 downto 0) ;
  attribute _2_state_ of _zyGfifoF11_L207_data_0: signal is 1 ;
  signal _zyGfifoF0_L368_s2_req_4 : std_logic ;
  attribute _2_state_ of _zyGfifoF0_L368_s2_req_4: signal is 1 ;
  signal _zyGfifoF0_L368_s2_cbid_4 : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifoF0_L368_s2_cbid_4: signal is 1 ;
  signal _zyGfifoF14_L373_req_0 : std_logic ;
  attribute _2_state_ of _zyGfifoF14_L373_req_0: signal is 1 ;
  signal _zyGfifoF14_L373_data_0 : std_logic_vector(31 downto 0) ;
  attribute _2_state_ of _zyGfifoF14_L373_data_0: signal is 1 ;
  signal _zyGfifoF15_L375_req_0 : std_logic ;
  attribute _2_state_ of _zyGfifoF15_L375_req_0: signal is 1 ;
  signal _zyGfifoF15_L375_data_0 : std_logic_vector(135 downto 0) ;
  attribute _2_state_ of _zyGfifoF15_L375_data_0: signal is 1 ;
  signal _zyGfifoF16_L381_req_0 : std_logic ;
  attribute _2_state_ of _zyGfifoF16_L381_req_0: signal is 1 ;
  signal _zyGfifoF17_L390_req_0 : std_logic ;
  attribute _2_state_ of _zyGfifoF17_L390_req_0: signal is 1 ;
  signal _zyGfifoF17_L390_data_0 : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of _zyGfifoF17_L390_data_0: signal is 1 ;
  signal _zyGfifoF18_L530_req_0 : std_logic ;
  attribute _2_state_ of _zyGfifoF18_L530_req_0: signal is 1 ;
  signal _zyGfifoF18_L530_data_0 : std_logic_vector(31 downto 0) ;
  attribute _2_state_ of _zyGfifoF18_L530_data_0: signal is 1 ;
  signal _zyGfifoF19_L412_req_0 : std_logic ;
  attribute _2_state_ of _zyGfifoF19_L412_req_0: signal is 1 ;
  signal _zyGfifoF19_L412_data_0 : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of _zyGfifoF19_L412_data_0: signal is 1 ;
  signal _zyGfifoF20_L209_req_0 : std_logic ;
  attribute _2_state_ of _zyGfifoF20_L209_req_0: signal is 1 ;
  signal _zyGfifoF20_L209_data_0 : std_logic_vector(31 downto 0) ;
  attribute _2_state_ of _zyGfifoF20_L209_data_0: signal is 1 ;
  signal _zyGfifoF0_L439_s2_req_5 : std_logic ;
  attribute _2_state_ of _zyGfifoF0_L439_s2_req_5: signal is 1 ;
  signal _zyGfifoF0_L439_s2_cbid_5 : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifoF0_L439_s2_cbid_5: signal is 1 ;
  signal _zyGfifoF23_L444_req_0 : std_logic ;
  attribute _2_state_ of _zyGfifoF23_L444_req_0: signal is 1 ;
  signal _zyGfifoF23_L444_data_0 : std_logic_vector(31 downto 0) ;
  attribute _2_state_ of _zyGfifoF23_L444_data_0: signal is 1 ;
  signal _zyGfifoF24_L446_req_0 : std_logic ;
  attribute _2_state_ of _zyGfifoF24_L446_req_0: signal is 1 ;
  signal _zyGfifoF24_L446_data_0 : std_logic_vector(135 downto 0) ;
  attribute _2_state_ of _zyGfifoF24_L446_data_0: signal is 1 ;
  signal _zyGfifoF25_L460_req_0 : std_logic ;
  attribute _2_state_ of _zyGfifoF25_L460_req_0: signal is 1 ;
  signal _zyGfifoF25_L460_data_0 : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of _zyGfifoF25_L460_data_0: signal is 1 ;
  signal _zyGfifoF26_L530_req_0 : std_logic ;
  attribute _2_state_ of _zyGfifoF26_L530_req_0: signal is 1 ;
  signal _zyGfifoF26_L530_data_0 : std_logic_vector(31 downto 0) ;
  attribute _2_state_ of _zyGfifoF26_L530_data_0: signal is 1 ;
  signal _zyGfifoF27_L480_req_0 : std_logic ;
  attribute _2_state_ of _zyGfifoF27_L480_req_0: signal is 1 ;
  signal _zyGfifoF27_L480_data_0 : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of _zyGfifoF27_L480_data_0: signal is 1 ;
  signal _zyGfifoF28_L482_req_0 : std_logic ;
  attribute _2_state_ of _zyGfifoF28_L482_req_0: signal is 1 ;
  signal _zyGfifoF28_L482_data_0 : std_logic_vector(127 downto 0) ;
  attribute _2_state_ of _zyGfifoF28_L482_data_0: signal is 1 ;
  signal _zyGfifoF29_L487_req_0 : std_logic ;
  attribute _2_state_ of _zyGfifoF29_L487_req_0: signal is 1 ;
  signal _zyGfifoF29_L487_data_0 : std_logic_vector(15 downto 0) ;
  attribute _2_state_ of _zyGfifoF29_L487_data_0: signal is 1 ;
  signal _zyGfifoF30_L491_req_0 : std_logic ;
  attribute _2_state_ of _zyGfifoF30_L491_req_0: signal is 1 ;
  signal _zyGfifoF30_L491_data_0 : std_logic_vector(15 downto 0) ;
  attribute _2_state_ of _zyGfifoF30_L491_data_0: signal is 1 ;
  signal _zyGfifoF31_L496_req_0 : std_logic ;
  attribute _2_state_ of _zyGfifoF31_L496_req_0: signal is 1 ;
  signal _zyGfifoF31_L496_data_0 : std_logic_vector(15 downto 0) ;
  attribute _2_state_ of _zyGfifoF31_L496_data_0: signal is 1 ;
  signal _zyGfifoF0_L253_s4_req_6 : std_logic ;
  attribute _2_state_ of _zyGfifoF0_L253_s4_req_6: signal is 1 ;
  signal _zyGfifoF0_L253_s4_data_6 : std_logic_vector(559 downto 0) ;
  attribute _2_state_ of _zyGfifoF0_L253_s4_data_6: signal is 1 ;
  signal _zyGfifoF0_L253_s4_cbid_6 : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifoF0_L253_s4_cbid_6: signal is 1 ;
  signal _zyGfifoF0_L253_s4_len_6 : std_logic_vector(11 downto 0) ;
  attribute _2_state_ of _zyGfifoF0_L253_s4_len_6: signal is 1 ;
  signal _zyGfifoF1_L253_s2_req_7 : std_logic ;
  attribute _2_state_ of _zyGfifoF1_L253_s2_req_7: signal is 1 ;
  signal _zyGfifoF1_L253_s2_cbid_7 : std_logic_vector(19 downto 0) ;
  attribute _2_state_ of _zyGfifoF1_L253_s2_cbid_7: signal is 1 ;
  signal _zyoperation_L206_tfiV0_M2_pbcG0 : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of _zyoperation_L206_tfiV0_M2_pbcG0: signal is 1 ;
  signal _zyaddress_L206_tfiV1_M2_pbcG1 : std_logic_vector(31 downto 0) ;
  attribute _2_state_ of _zyaddress_L206_tfiV1_M2_pbcG1: signal is 1 ;
  signal _zydata_L206_tfiV2_M2_pbcG2 : std_logic_vector(31 downto 0) ;
  attribute _2_state_ of _zydata_L206_tfiV2_M2_pbcG2: signal is 1 ;
  signal _zyxr_L206_tfiV3_M2_pbcG3 : integer ;
  attribute _2_state_ of _zyxr_L206_tfiV3_M2_pbcG3: signal is 1 ;
  signal _zyM2L273_pbcT0 : std_logic_vector(31 downto 0) ;
  signal _zyM2L286_pbcT1 : std_logic_vector(31 downto 0) ;
  signal _zyM2L292_pbcT2 : std_logic_vector(31 downto 0) ;
  signal _zyM2L299_pbcT3 : std_logic_vector(31 downto 0) ;
  signal _zyM2L324_pbcCapEn0 : std_logic ;
  signal _zyM2L333_pbcCapEn1 : std_logic ;
  signal _zyM2L349_pbcCapEn2 : std_logic ;
  signal _zyM2L355_pbcCapEn3 : std_logic ;
  signal _zyM2L253_pbcCapEn5 : std_logic ;
  signal _zyM2L274_pbcCapEn6 : std_logic ;
  signal _zyM2L287_pbcCapEn7 : std_logic ;
  signal _zyM2L293_pbcCapEn8 : std_logic ;
  signal _zyM2L295_pbcCapEn9 : std_logic ;
  signal _zyM2L364_pbcCapEn10 : std_logic ;
  signal _zyM2L300_pbcCapEn11 : std_logic ;
  signal _zyM2L324_pbcFsm0_s : std_logic_vector(2 downto 0) ;
  signal _zyM2L324_pbcEn13 : std_logic ;
  signal _zyM2L253_pbcFsm2_s : std_logic_vector(2 downto 0) ;
  signal _zyM2L253_pbcEn14 : std_logic ;
  signal _zyL306_meState0 : std_logic_vector(0 downto 0) ;
  signal _zyL312_meState2 : std_logic_vector(0 downto 0) ;
  signal _zyL368_meState4 : std_logic_vector(0 downto 0) ;
  signal _zyL439_meState8 : std_logic_vector(1 downto 0) ;
  signal _zzM2_bcBehEval : std_logic_vector(31 downto 0) ;
  signal _zzM2L36_kme_ib_tvalid_mdxTmp0 : std_logic ;
  signal _zzM2L37_kme_ib_tlast_mdxTmp1 : std_logic ;
  signal _zzM2L306_mdxP0_En : std_logic ;
  signal _zzM2L306_mdxP0_kme_ib_tvalid_wr0 : std_logic ;
  signal _zzM2L306_mdxP0_kme_ib_tvalid_Dwen0 : std_logic ;
  signal _zzM2L306_mdxP0_kme_ib_tvalid_DwenOn0 : std_logic ;
  signal _zzM2L306_mdxP0_kme_ib_tlast_wr1 : std_logic ;
  signal _zzM2L306_mdxP0_kme_ib_tlast_Dwen1 : std_logic ;
  signal _zzM2L306_mdxP0_kme_ib_tlast_DwenOn1 : std_logic ;
  signal _zzM2L19_error_cntr_mdxTmp2 : integer ;
  attribute _2_state_ of _zzM2L19_error_cntr_mdxTmp2: signal is 1 ;
  signal _zzM2L324_mdxP2_En : std_logic ;
  signal _zzM2L324_mdxP2_error_cntr_wr0 : integer ;
  attribute _2_state_ of _zzM2L324_mdxP2_error_cntr_wr0: signal is 1 ;
  signal _zzM2L324_mdxP2_error_cntr_Dwen0 : std_logic ;
  signal _zzM2L324_mdxP2_error_cntr_DwenOn0 : std_logic ;
  signal _zzM2L33_kme_ib_tdata_mdxTmp3 : std_logic_vector(63 downto 0) ;
  signal _zzM2L34_kme_ib_tstrb_mdxTmp4 : std_logic_vector(7 downto 0) ;
  signal _zzM2L35_kme_ib_tuser_mdxTmp5 : std_logic_vector(7 downto 0) ;
  signal _zzM2L368_mdxP3_En : std_logic ;
  signal _zzM2L368_mdxP3_kme_ib_tvalid_wr0 : std_logic ;
  signal _zzM2L368_mdxP3_kme_ib_tvalid_Dwen0 : std_logic ;
  signal _zzM2L368_mdxP3_kme_ib_tvalid_DwenOn0 : std_logic ;
  signal _zzM2L368_mdxP3_kme_ib_tlast_wr1 : std_logic ;
  signal _zzM2L368_mdxP3_kme_ib_tlast_Dwen1 : std_logic ;
  signal _zzM2L368_mdxP3_kme_ib_tlast_DwenOn1 : std_logic ;
  signal _zzM2L368_mdxP3_kme_ib_tdata_wr2 : std_logic_vector(63 downto 0) ;
  signal _zzM2L368_mdxP3_kme_ib_tdata_Dwen2 : std_logic ;
  signal _zzM2L368_mdxP3_kme_ib_tdata_DwenOn2 : std_logic ;
  signal _zzM2L368_mdxP3_kme_ib_tstrb_wr3 : std_logic_vector(7 downto 0) ;
  signal _zzM2L368_mdxP3_kme_ib_tstrb_Dwen3 : std_logic ;
  signal _zzM2L368_mdxP3_kme_ib_tstrb_DwenOn3 : std_logic ;
  signal _zzM2L368_mdxP3_kme_ib_tuser_wr4 : std_logic_vector(7 downto 0) ;
  signal _zzM2L368_mdxP3_kme_ib_tuser_Dwen4 : std_logic ;
  signal _zzM2L368_mdxP3_kme_ib_tuser_DwenOn4 : std_logic ;
  signal _zzM2L439_mdxP4_En : std_logic ;
  signal _zzM2L439_mdxP4_error_cntr_wr0 : integer ;
  attribute _2_state_ of _zzM2L439_mdxP4_error_cntr_wr0: signal is 1 ;
  signal _zzM2L439_mdxP4_error_cntr_Dwen0 : std_logic ;
  signal _zzM2L439_mdxP4_error_cntr_DwenOn0 : std_logic ;
  signal _zzM2L253_mdxP5_En : std_logic ;
  signal _zzM2L253_mdxP5_error_cntr_wr0 : integer ;
  attribute _2_state_ of _zzM2L253_mdxP5_error_cntr_wr0: signal is 1 ;
  signal _zzM2L253_mdxP5_error_cntr_Dwen0 : std_logic ;
  signal _zzM2L253_mdxP5_error_cntr_DwenOn0 : std_logic ;
  signal _zzM2L253_mdxP5_kme_ib_tvalid_wr1 : std_logic ;
  signal _zzM2L253_mdxP5_kme_ib_tvalid_Dwen1 : std_logic ;
  signal _zzM2L253_mdxP5_kme_ib_tvalid_DwenOn1 : std_logic ;
  signal _zzM2L253_mdxP5_kme_ib_tlast_wr2 : std_logic ;
  signal _zzM2L253_mdxP5_kme_ib_tlast_Dwen2 : std_logic ;
  signal _zzM2L253_mdxP5_kme_ib_tlast_DwenOn2 : std_logic ;
  signal _zzM2L253_mdxP5_kme_ib_tdata_wr3 : std_logic_vector(63 downto 0) ;
  signal _zzM2L253_mdxP5_kme_ib_tdata_Dwen3 : std_logic ;
  signal _zzM2L253_mdxP5_kme_ib_tdata_DwenOn3 : std_logic ;
  signal _zzM2L253_mdxP5_kme_ib_tstrb_wr4 : std_logic_vector(7 downto 0) ;
  signal _zzM2L253_mdxP5_kme_ib_tstrb_Dwen4 : std_logic ;
  signal _zzM2L253_mdxP5_kme_ib_tstrb_DwenOn4 : std_logic ;
  signal _zzM2L253_mdxP5_kme_ib_tuser_wr5 : std_logic_vector(7 downto 0) ;
  signal _zzM2L253_mdxP5_kme_ib_tuser_Dwen5 : std_logic ;
  signal _zzM2L253_mdxP5_kme_ib_tuser_DwenOn5 : std_logic ;
  signal _zzerror_cntr_M2L19_mdxSvLt6 : integer ;
  attribute _2_state_ of _zzerror_cntr_M2L19_mdxSvLt6: signal is 1 ;
  signal _zzkme_ib_tvalid_M2L36_mdxSvLt7 : std_logic ;
  signal _zzkme_ib_tlast_M2L37_mdxSvLt8 : std_logic ;
  signal _zzkme_ib_tdata_M2L33_mdxSvLt9 : std_logic_vector(63 downto 0) ;
  signal _zzkme_ib_tstrb_M2L34_mdxSvLt10 : std_logic_vector(7 downto 0) ;
  signal _zzkme_ib_tuser_M2L35_mdxSvLt11 : std_logic_vector(7 downto 0) ;
  signal DUMMY47 : std_logic_vector(0 downto 0) ;
  signal DUMMY48 : std_logic_vector(0 downto 0) ;
  signal DUMMY49 : std_logic_vector(0 downto 0) ;
  signal DUMMY50 : std_logic_vector(0 downto 0) ;
  signal DUMMY51 : std_logic_vector(0 downto 0) ;
  signal DUMMY52 : std_logic_vector(0 downto 0) ;
  signal DUMMY53 : std_logic_vector(0 downto 0) ;
  signal DUMMY54 : std_logic_vector(0 downto 0) ;
  signal DUMMY55 : std_logic_vector(0 downto 0) ;
  signal DUMMY56 :  std_logic ;
  signal DUMMY57 :  std_logic ;
  signal DUMMY58 : std_logic_vector(0 downto 0) ;
  signal DUMMY59 : std_logic_vector(0 downto 0) ;
  signal DUMMY60 : std_logic_vector(0 downto 0) ;
  signal DUMMY61 : std_logic_vector(0 downto 0) ;
  signal DUMMY62 : std_logic_vector(0 downto 0) ;
  signal DUMMY63 : std_logic_vector(0 downto 0) ;
  signal DUMMY64 : std_logic_vector(0 downto 0) ;
  signal DUMMY65 : std_logic_vector(2 downto 0) ;
  signal DUMMY66 : std_logic_vector(2 downto 0) ;
  signal DUMMY67 : std_logic_vector(1 downto 0) ;
  signal DUMMY68 : std_logic_vector(1 downto 0) ;
  signal DUMMY69 : std_logic_vector(31 downto 0) ;
  signal DUMMY70 : std_logic_vector(31 downto 0) ;
  signal DUMMY71 : std_logic_vector(0 downto 0) ;
  -- quickturn keep_net error_cntr
  -- quickturn keep_net kme_ib_tdata
  -- quickturn keep_net kme_ib_tstrb
  -- quickturn keep_net kme_ib_tuser
  -- quickturn keep_net kme_ib_tvalid
  -- quickturn keep_net kme_ib_tlast
  -- quickturn keep_net config_done
  -- quickturn keep_net user_string_ib
  -- quickturn keep_net ready_ib
  -- quickturn keep_net ready_ob
  -- quickturn keep_net config_ready
  -- quickturn keep_net _zySfifoF0_get_config_data_zyackf_tid
  -- quickturn keep_net _zySfifoF1_get_config_data_zyputf_tid
  -- quickturn keep_net _zySfifoF2_ib_service_data_zyackf_tid
  -- quickturn keep_net _zySfifoF3_ib_service_data_zyputf_tid
  -- quickturn keep_net _zySfifoF4_ob_service_data_zyackf_tid
  -- quickturn keep_net _zySfifoF5_ob_service_data_zyputf_tid
  -- quickturn keep_net _zyL94_iscX1c0_s
  -- quickturn keep_net _zyL94_iscX1c0_n
  -- quickturn keep_net _zyL61_iscX2c0_s
  -- quickturn keep_net _zyL61_iscX2c0_n
  -- quickturn keep_net _zyictd_sysfunc_36_L258_0
  -- quickturn keep_net _zyictd_sysfunc_36_L258_1
  -- quickturn keep_net _zyictd_sysfunc_11_L257_2
  -- quickturn keep_net _zyictd_sysfunc_36_L264_3
  -- quickturn keep_net _zyictd_sysfunc_36_L264_4
  -- quickturn keep_net _zyictd_sysfunc_11_L263_5
  -- quickturn preserve _zyictd_finish_mgr
  -- quickturn keep_net _zyGfifo__gfdL435_34_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL435_34_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL513_33_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL513_33_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL316_32_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL316_32_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL318_31_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL318_31_P0_m2_cbid
  -- quickturn keep_net _zyGfifo_get_config_data_2_zyprefetch_m2_gfOff
  -- quickturn keep_net _zyGfifo_get_config_data_2_zyprefetch_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL327_30_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL327_30_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL330_29_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL330_29_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL334_28_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL334_28_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL336_27_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL336_27_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL341_26_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL341_26_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL351_25_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL351_25_P0_m2_cbid
  -- quickturn keep_net _zyGfifo_ib_service_data_2_zyprefetch_m2_gfOff
  -- quickturn keep_net _zyGfifo_ib_service_data_2_zyprefetch_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL519_24_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL519_24_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL522_23_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL522_23_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL373_22_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL373_22_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL375_21_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL375_21_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL381_20_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL381_20_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL390_19_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL390_19_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL530_18_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL530_18_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL412_17_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL412_17_P0_m2_cbid
  -- quickturn keep_net _zyGfifo_ob_service_data_2_zyprefetch_m2_gfOff
  -- quickturn keep_net _zyGfifo_ob_service_data_2_zyprefetch_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL519_16_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL519_16_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL522_15_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL522_15_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL444_14_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL444_14_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL446_13_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL446_13_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL460_12_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL460_12_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL530_11_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL530_11_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL480_10_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL480_10_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL482_9_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL482_9_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL487_8_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL487_8_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL491_7_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL491_7_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL496_6_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL496_6_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL265_5_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL265_5_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL268_4_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL268_4_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL271_3_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL271_3_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL276_2_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL276_2_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL289_1_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL289_1_P0_m2_cbid
  -- quickturn keep_net _zyGfifo__gfdL365_0_P0_m2_gfOff
  -- quickturn keep_net _zyGfifo__gfdL365_0_P0_m2_cbid
  -- quickturn keep_net _zyM2L324_pbcCapEn0
  -- quickturn keep_net _zyM2L333_pbcCapEn1
  -- quickturn keep_net _zyM2L349_pbcCapEn2
  -- quickturn keep_net _zyM2L355_pbcCapEn3
  -- quickturn keep_net _zyM2L253_pbcCapEn5
  -- quickturn keep_net _zyM2L274_pbcCapEn6
  -- quickturn keep_net _zyM2L287_pbcCapEn7
  -- quickturn keep_net _zyM2L293_pbcCapEn8
  -- quickturn keep_net _zyM2L295_pbcCapEn9
  -- quickturn keep_net _zyM2L364_pbcCapEn10
  -- quickturn keep_net _zyM2L300_pbcCapEn11
  -- quickturn keep_net _zyM2L324_pbcFsm0_s
  -- quickturn keep_net _zyM2L253_pbcFsm2_s
  -- quickturn keep_net _zyL306_meState0
  -- quickturn keep_net _zyL312_meState2
  -- quickturn keep_net _zyL368_meState4
  -- quickturn keep_net _zyL439_meState8
  -- quickturn keep_net _zzM2_bcBehEval
  -- quickturn preserve DUMMY46

begin
  _zzqnt : Q_NOT_TOUCH
     ;
  _zz_strnp_0 : ixc_assign
    generic map(W => 1)
    port map (
       clk
      ,my_clk
    ) ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 1)
    port map (
       kme_apb_psel
      ,DUMMY12
    ) ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 1)
    port map (
       kme_apb_penable
      ,DUMMY13
    ) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 20)
    port map (
       kme_apb_paddr
      ,DUMMY14
    ) ;
  _zz_strnp_4 : ixc_assign
    generic map(W => 32)
    port map (
       kme_apb_pwdata
      ,DUMMY15
    ) ;
  _zz_strnp_5 : ixc_assign
    generic map(W => 1)
    port map (
       kme_apb_pwrite
      ,DUMMY16
    ) ;
  _zz_strnp_6 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY17
      ,clk
    ) ;
  _zz_strnp_7 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY18
      ,rst_n
    ) ;
  _zz_strnp_8 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY19
      ,kme_apb_prdata
    ) ;
  _zz_strnp_9 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY20
      ,kme_apb_pready
    ) ;
  _zz_strnp_10 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY21
      ,kme_apb_pslverr
    ) ;
  _zz_strnp_11 : ixc_assign
    generic map(W => 1)
    port map (
       kme_ib_tready
      ,DUMMY22
    ) ;
  _zz_strnp_12 : ixc_assign
    generic map(W => 1)
    port map (
       kme_ob_tvalid
      ,DUMMY23
    ) ;
  _zz_strnp_13 : ixc_assign
    generic map(W => 1)
    port map (
       kme_ob_tlast
      ,DUMMY24
    ) ;
  _zz_strnp_14 : ixc_assign
    generic map(W => 1)
    port map (
       kme_ob_tid
      ,DUMMY25
    ) ;
  _zz_strnp_15 : ixc_assign
    generic map(W => 8)
    port map (
       kme_ob_tstrb
      ,DUMMY26
    ) ;
  _zz_strnp_16 : ixc_assign
    generic map(W => 8)
    port map (
       kme_ob_tuser
      ,DUMMY27
    ) ;
  _zz_strnp_17 : ixc_assign
    generic map(W => 64)
    port map (
       kme_ob_tdata
      ,DUMMY28
    ) ;
  _zz_strnp_18 : ixc_assign
    generic map(W => 32)
    port map (
       kme_apb_prdata
      ,DUMMY29
    ) ;
  _zz_strnp_19 : ixc_assign
    generic map(W => 1)
    port map (
       kme_apb_pready
      ,DUMMY30
    ) ;
  _zz_strnp_20 : ixc_assign
    generic map(W => 1)
    port map (
       kme_apb_pslverr
      ,DUMMY31
    ) ;
  _zz_strnp_21 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY32
      ,clk
    ) ;
  _zz_strnp_22 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY33
      ,rst_n
    ) ;
  _zy_simnet_cio_24 <= '0' ;
  _zy_simnet_cio_25 <= '0' ;
  _zy_simnet_cio_26 <= '0' ;
  _zy_simnet_cio_27 <= '1' ;
  _zy_simnet_cio_28 <= '0' ;
  _zy_simnet_cio_29 <= '0' ;
  _zy_simnet_cio_30 <= '0' ;
  _zy_simnet_cio_31 <= '0' ;
  _zz_strnp_23 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY34
      ,kme_ib_tvalid
    ) ;
  _zz_strnp_24 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY35
      ,kme_ib_tlast
    ) ;
  _zz_strnp_25 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY36
      ,kme_ib_tid
    ) ;
  _zz_strnp_26 : ixc_assign
    generic map(W => 8)
    port map (
       DUMMY37
      ,kme_ib_tstrb
    ) ;
  _zz_strnp_27 : ixc_assign
    generic map(W => 8)
    port map (
       DUMMY38
      ,kme_ib_tuser
    ) ;
  _zz_strnp_28 : ixc_assign
    generic map(W => 64)
    port map (
       DUMMY39
      ,kme_ib_tdata
    ) ;
  _zz_strnp_29 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY40
      ,kme_ob_tready
    ) ;
  _zz_strnp_30 : ixc_assign
    generic map(W => 16)
    port map (
       DUMMY41
      ,kme_apb_paddr(15 downto 0)
    ) ;
  _zz_strnp_31 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY42
      ,kme_apb_psel
    ) ;
  _zz_strnp_32 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY43
      ,kme_apb_penable
    ) ;
  _zz_strnp_33 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY44
      ,kme_apb_pwrite
    ) ;
  _zz_strnp_34 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY45
      ,kme_apb_pwdata
    ) ;
  _zzixc_tfport_0_0 : ixc_mem_call
    generic map(S2HDW => integer_to_std(0,32),H2SDW => integer_to_std(0,32
    ),MAIDW => integer_to_std(0,32),LTIDW => integer_to_std(0,32))
    port map (
       _zyixc_port_0_0_req
      ,_zyixc_port_0_0_s2h
      ,_zyixc_port_0_0_isf
      ,_zyixc_port_0_0_ack
      ,DUMMY47
      ,_zyixc_port_0_0_osf
      ,DUMMY48
      ,DUMMY49
    ) ;
  DUMMY47 <= std_logic_vector'("0") ;
  DUMMY48 <= std_logic_vector'("0") ;
  DUMMY49 <= std_logic_vector'("0") ;
  _zzSfifoF0_L206_p : ixc_sfifo_port
    generic map(IARGW => integer_to_std(32,32),OARGW => integer_to_std(0,32))
    port map (
       _zySfifoF0_call
      ,_zySfifoF0_iarg
      ,DUMMY50
      ,_zySfifoF0_get_config_data_zyackf_tid
      ,_zySfifoF0_fen
      ,_zyGfifo_SiData
      ,_zyGfifo_StId
      ,_zyGfifo_SoData
      ,_zyGfifo_SoDataEn
      ,_zyGfifo_SoDataLen
    ) ;
  DUMMY50 <= std_logic_vector'("0") ;
  _zzSfifoF1_L206_p : ixc_sfifo_port
    generic map(IARGW => integer_to_std(72,32),OARGW => integer_to_std(0,32))
    port map (
       _zySfifoF1_call
      ,_zySfifoF1_iarg
      ,DUMMY51
      ,_zySfifoF1_get_config_data_zyputf_tid
      ,_zySfifoF1_fen
      ,_zyGfifo_SiData
      ,_zyGfifo_StId
      ,_zyGfifo_SoData
      ,_zyGfifo_SoDataEn
      ,_zyGfifo_SoDataLen
    ) ;
  DUMMY51 <= std_logic_vector'("0") ;
  _zzSfifoF2_L207_p : ixc_sfifo_port
    generic map(IARGW => integer_to_std(32,32),OARGW => integer_to_std(0,32))
    port map (
       _zySfifoF2_call
      ,_zySfifoF2_iarg
      ,DUMMY52
      ,_zySfifoF2_ib_service_data_zyackf_tid
      ,_zySfifoF2_fen
      ,_zyGfifo_SiData
      ,_zyGfifo_StId
      ,_zyGfifo_SoData
      ,_zyGfifo_SoDataEn
      ,_zyGfifo_SoDataLen
    ) ;
  DUMMY52 <= std_logic_vector'("0") ;
  _zzSfifoF3_L207_p : ixc_sfifo_port
    generic map(IARGW => integer_to_std(136,32),OARGW => integer_to_std(0,32))
    port map (
       _zySfifoF3_call
      ,_zySfifoF3_iarg
      ,DUMMY53
      ,_zySfifoF3_ib_service_data_zyputf_tid
      ,_zySfifoF3_fen
      ,_zyGfifo_SiData
      ,_zyGfifo_StId
      ,_zyGfifo_SoData
      ,_zyGfifo_SoDataEn
      ,_zyGfifo_SoDataLen
    ) ;
  DUMMY53 <= std_logic_vector'("0") ;
  _zzSfifoF4_L209_p : ixc_sfifo_port
    generic map(IARGW => integer_to_std(32,32),OARGW => integer_to_std(0,32))
    port map (
       _zySfifoF4_call
      ,_zySfifoF4_iarg
      ,DUMMY54
      ,_zySfifoF4_ob_service_data_zyackf_tid
      ,_zySfifoF4_fen
      ,_zyGfifo_SiData
      ,_zyGfifo_StId
      ,_zyGfifo_SoData
      ,_zyGfifo_SoDataEn
      ,_zyGfifo_SoDataLen
    ) ;
  DUMMY54 <= std_logic_vector'("0") ;
  _zzSfifoF5_L209_p : ixc_sfifo_port
    generic map(IARGW => integer_to_std(136,32),OARGW => integer_to_std(0,32))
    port map (
       _zySfifoF5_call
      ,_zySfifoF5_iarg
      ,DUMMY55
      ,_zySfifoF5_ob_service_data_zyputf_tid
      ,_zySfifoF5_fen
      ,_zyGfifo_SiData
      ,_zyGfifo_StId
      ,_zyGfifo_SoData
      ,_zyGfifo_SoDataEn
      ,_zyGfifo_SoDataLen
    ) ;
  DUMMY55 <= std_logic_vector'("0") ;
  _zz_strnp_35 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY2
      ,_zyL94_iscX1c0_s
    ) ;
  _zz_strnp_36 : ixc_assign
    generic map(W => 1)
    port map (
       _zyL94_iscX1c0_f
      ,DUMMY3
    ) ;
  _zz_strnp_37 : ixc_assign
    generic map(W => 64)
    port map (
       DUMMY4(63 downto 0)
      ,_zyL94_iscX1c0_i0
    ) ;
  _zz_strnp_38 : ixc_assign
    generic map(W => 32)
    port map (
       _zyL94_iscX1c0_o1
      ,DUMMY5(31 downto 0)
    ) ;
  _zz_strnp_39 : ixc_assign
    generic map(W => 1)
    port map (
       _zyL94_iscX1c0_o2
      ,DUMMY6
    ) ;
  _zz_strnp_40 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY7
      ,_zyL61_iscX2c0_s
    ) ;
  _zz_strnp_41 : ixc_assign
    generic map(W => 1)
    port map (
       _zyL61_iscX2c0_f
      ,DUMMY8
    ) ;
  _zz_strnp_42 : ixc_assign
    generic map(W => 64)
    port map (
       DUMMY9(63 downto 0)
      ,_zyL61_iscX2c0_i0
    ) ;
  _zz_strnp_43 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY10(31 downto 0)
      ,_zyL61_iscX2c0_i1
    ) ;
  _zz_strnp_44 : ixc_assign
    generic map(W => 1)
    port map (
       _zyL61_iscX2c0_o2
      ,DUMMY11
    ) ;
  _zz_zzictd_finishT_L10_0TbcP_L10 : axis_tbcall
    generic map(level => 2,anyEdge => 0,BP => 0)
    port map (
       _zyictd_finish_mgr
      ,DUMMY56
      ,DUMMY46
      ,DUMMY57
    ) ;
  DUMMY56 <= it_conv_std_logic(X"5F7A7A696374645F66696E697368545F4C31305F30") ;
  DUMMY57 <= '0' ;
  _zyictd_finish_mgr <= ((_zyictd_finish_L454_2 or _zyictd_finish_L320_0) or
   _zyictd_finish_L338_1) ;
  _zzGfifoF0_L435_p_0 : ixc_gfifo_port
    generic map(DW => integer_to_std(1,32),SHARE => 0,USETIME => integer_to_std
    (1,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(0)
      ,_zyGfifo_dflt_ci(0)
      ,_zyGfifoF0_L435_req_0
      ,_zyGfifo__gfdL435_34_P0_m2_cbid
      ,std_logic_vector'("000000000000")
      ,DUMMY58
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  DUMMY58 <= std_logic_vector'("0") ;
  _zzGfifoF1_L513_p_0 : ixc_gfifo_port
    generic map(DW => integer_to_std(1,32),SHARE => 0,USETIME => integer_to_std
    (1,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(1)
      ,_zyGfifo_dflt_ci(1)
      ,_zyGfifoF1_L513_req_0
      ,_zyGfifo__gfdL513_33_P0_m2_cbid
      ,std_logic_vector'("000000000000")
      ,DUMMY59
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  DUMMY59 <= std_logic_vector'("0") ;
  _zzGfifoF0_L312_s2_p_0 : ixc_gfifo_port
    generic map(DW => integer_to_std(280,32),SHARE => 2,USETIME =>
     integer_to_std(0,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(2)
      ,_zyGfifo_dflt_ci(2)
      ,_zyGfifoF0_L312_s2_req_0
      ,_zyGfifoF0_L312_s2_cbid_0
      ,std_logic_vector'("000000001001")
      ,_zyGfifoF0_L312_s2_data_0
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  _zzGfifoF0_L324_s3_p_1 : ixc_gfifo_port
    generic map(DW => integer_to_std(96,32),SHARE => 3,USETIME => integer_to_std
    (1,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(3)
      ,_zyGfifo_dflt_ci(3)
      ,_zyGfifoF0_L324_s3_req_1
      ,_zyGfifoF0_L324_s3_cbid_1
      ,_zyGfifoF0_L324_s3_len_1
      ,_zyGfifoF0_L324_s3_data_1
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  _zzGfifoF1_L324_s2_p_2 : ixc_gfifo_port
    generic map(DW => integer_to_std(32,32),SHARE => 2,USETIME => integer_to_std
    (1,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(4)
      ,_zyGfifo_dflt_ci(4)
      ,_zyGfifoF1_L324_s2_req_2
      ,_zyGfifoF1_L324_s2_cbid_2
      ,std_logic_vector'("000000000001")
      ,_zyGfifoF1_L324_s2_data_2
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  _zzGfifoF2_L324_s2_p_3 : ixc_gfifo_port
    generic map(DW => integer_to_std(72,32),SHARE => 3,USETIME => integer_to_std
    (1,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(5)
      ,_zyGfifo_dflt_ci(5)
      ,_zyGfifoF2_L324_s2_req_3
      ,_zyGfifoF2_L324_s2_cbid_3
      ,_zyGfifoF2_L324_s2_len_3
      ,_zyGfifoF2_L324_s2_data_3
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  _zzGfifoF11_L207_p_0 : ixc_gfifo_port
    generic map(DW => integer_to_std(32,32),SHARE => 0,USETIME => integer_to_std
    (0,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(6)
      ,_zyGfifo_dflt_ci(6)
      ,_zyGfifoF11_L207_req_0
      ,_zyGfifo_ib_service_data_2_zyprefetch_m2_cbid
      ,std_logic_vector'("000000000001")
      ,_zyGfifoF11_L207_data_0
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  _zzGfifoF0_L368_s2_p_4 : ixc_gfifo_port
    generic map(DW => integer_to_std(1,32),SHARE => 2,USETIME => integer_to_std
    (0,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(7)
      ,_zyGfifo_dflt_ci(7)
      ,_zyGfifoF0_L368_s2_req_4
      ,_zyGfifoF0_L368_s2_cbid_4
      ,std_logic_vector'("000000000000")
      ,DUMMY60
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  DUMMY60 <= std_logic_vector'("0") ;
  _zzGfifoF14_L373_p_0 : ixc_gfifo_port
    generic map(DW => integer_to_std(32,32),SHARE => 0,USETIME => integer_to_std
    (0,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(8)
      ,_zyGfifo_dflt_ci(8)
      ,_zyGfifoF14_L373_req_0
      ,_zyGfifo__gfdL373_22_P0_m2_cbid
      ,std_logic_vector'("000000000001")
      ,_zyGfifoF14_L373_data_0
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  _zzGfifoF15_L375_p_0 : ixc_gfifo_port
    generic map(DW => integer_to_std(136,32),SHARE => 0,USETIME =>
     integer_to_std(0,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(9)
      ,_zyGfifo_dflt_ci(9)
      ,_zyGfifoF15_L375_req_0
      ,_zyGfifo__gfdL375_21_P0_m2_cbid
      ,std_logic_vector'("000000000101")
      ,_zyGfifoF15_L375_data_0
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  _zzGfifoF16_L381_p_0 : ixc_gfifo_port
    generic map(DW => integer_to_std(1,32),SHARE => 0,USETIME => integer_to_std
    (0,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(10)
      ,_zyGfifo_dflt_ci(10)
      ,_zyGfifoF16_L381_req_0
      ,_zyGfifo__gfdL381_20_P0_m2_cbid
      ,std_logic_vector'("000000000000")
      ,DUMMY61
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  DUMMY61 <= std_logic_vector'("0") ;
  _zzGfifoF17_L390_p_0 : ixc_gfifo_port
    generic map(DW => integer_to_std(64,32),SHARE => 0,USETIME => integer_to_std
    (0,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(11)
      ,_zyGfifo_dflt_ci(11)
      ,_zyGfifoF17_L390_req_0
      ,_zyGfifo__gfdL390_19_P0_m2_cbid
      ,std_logic_vector'("000000000010")
      ,_zyGfifoF17_L390_data_0
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  _zzGfifoF18_L530_p_0 : ixc_gfifo_port
    generic map(DW => integer_to_std(32,32),SHARE => 0,USETIME => integer_to_std
    (0,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(12)
      ,_zyGfifo_dflt_ci(12)
      ,_zyGfifoF18_L530_req_0
      ,_zyGfifo__gfdL530_18_P0_m2_cbid
      ,std_logic_vector'("000000000001")
      ,_zyGfifoF18_L530_data_0
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  _zzGfifoF19_L412_p_0 : ixc_gfifo_port
    generic map(DW => integer_to_std(8,32),SHARE => 0,USETIME => integer_to_std
    (0,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(13)
      ,_zyGfifo_dflt_ci(13)
      ,_zyGfifoF19_L412_req_0
      ,_zyGfifo__gfdL412_17_P0_m2_cbid
      ,std_logic_vector'("000000000001")
      ,_zyGfifoF19_L412_data_0
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  _zzGfifoF20_L209_p_0 : ixc_gfifo_port
    generic map(DW => integer_to_std(32,32),SHARE => 0,USETIME => integer_to_std
    (0,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(14)
      ,_zyGfifo_dflt_ci(14)
      ,_zyGfifoF20_L209_req_0
      ,_zyGfifo_ob_service_data_2_zyprefetch_m2_cbid
      ,std_logic_vector'("000000000001")
      ,_zyGfifoF20_L209_data_0
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  _zzGfifoF0_L439_s2_p_5 : ixc_gfifo_port
    generic map(DW => integer_to_std(1,32),SHARE => 2,USETIME => integer_to_std
    (0,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(15)
      ,_zyGfifo_dflt_ci(15)
      ,_zyGfifoF0_L439_s2_req_5
      ,_zyGfifoF0_L439_s2_cbid_5
      ,std_logic_vector'("000000000000")
      ,DUMMY62
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  DUMMY62 <= std_logic_vector'("0") ;
  _zzGfifoF23_L444_p_0 : ixc_gfifo_port
    generic map(DW => integer_to_std(32,32),SHARE => 0,USETIME => integer_to_std
    (0,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(16)
      ,_zyGfifo_dflt_ci(16)
      ,_zyGfifoF23_L444_req_0
      ,_zyGfifo__gfdL444_14_P0_m2_cbid
      ,std_logic_vector'("000000000001")
      ,_zyGfifoF23_L444_data_0
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  _zzGfifoF24_L446_p_0 : ixc_gfifo_port
    generic map(DW => integer_to_std(136,32),SHARE => 0,USETIME =>
     integer_to_std(0,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(17)
      ,_zyGfifo_dflt_ci(17)
      ,_zyGfifoF24_L446_req_0
      ,_zyGfifo__gfdL446_13_P0_m2_cbid
      ,std_logic_vector'("000000000101")
      ,_zyGfifoF24_L446_data_0
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  _zzGfifoF25_L460_p_0 : ixc_gfifo_port
    generic map(DW => integer_to_std(64,32),SHARE => 0,USETIME => integer_to_std
    (1,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(18)
      ,_zyGfifo_dflt_ci(18)
      ,_zyGfifoF25_L460_req_0
      ,_zyGfifo__gfdL460_12_P0_m2_cbid
      ,std_logic_vector'("000000000010")
      ,_zyGfifoF25_L460_data_0
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  _zzGfifoF26_L530_p_0 : ixc_gfifo_port
    generic map(DW => integer_to_std(32,32),SHARE => 0,USETIME => integer_to_std
    (0,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(19)
      ,_zyGfifo_dflt_ci(19)
      ,_zyGfifoF26_L530_req_0
      ,_zyGfifo__gfdL530_11_P0_m2_cbid
      ,std_logic_vector'("000000000001")
      ,_zyGfifoF26_L530_data_0
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  _zzGfifoF27_L480_p_0 : ixc_gfifo_port
    generic map(DW => integer_to_std(8,32),SHARE => 0,USETIME => integer_to_std
    (0,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(20)
      ,_zyGfifo_dflt_ci(20)
      ,_zyGfifoF27_L480_req_0
      ,_zyGfifo__gfdL480_10_P0_m2_cbid
      ,std_logic_vector'("000000000001")
      ,_zyGfifoF27_L480_data_0
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  _zzGfifoF28_L482_p_0 : ixc_gfifo_port
    generic map(DW => integer_to_std(128,32),SHARE => 0,USETIME =>
     integer_to_std(1,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(21)
      ,_zyGfifo_dflt_ci(21)
      ,_zyGfifoF28_L482_req_0
      ,_zyGfifo__gfdL482_9_P0_m2_cbid
      ,std_logic_vector'("000000000100")
      ,_zyGfifoF28_L482_data_0
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  _zzGfifoF29_L487_p_0 : ixc_gfifo_port
    generic map(DW => integer_to_std(16,32),SHARE => 0,USETIME => integer_to_std
    (1,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(22)
      ,_zyGfifo_dflt_ci(22)
      ,_zyGfifoF29_L487_req_0
      ,_zyGfifo__gfdL487_8_P0_m2_cbid
      ,std_logic_vector'("000000000001")
      ,_zyGfifoF29_L487_data_0
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  _zzGfifoF30_L491_p_0 : ixc_gfifo_port
    generic map(DW => integer_to_std(16,32),SHARE => 0,USETIME => integer_to_std
    (1,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(23)
      ,_zyGfifo_dflt_ci(23)
      ,_zyGfifoF30_L491_req_0
      ,_zyGfifo__gfdL491_7_P0_m2_cbid
      ,std_logic_vector'("000000000001")
      ,_zyGfifoF30_L491_data_0
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  _zzGfifoF31_L496_p_0 : ixc_gfifo_port
    generic map(DW => integer_to_std(16,32),SHARE => 0,USETIME => integer_to_std
    (1,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(24)
      ,_zyGfifo_dflt_ci(24)
      ,_zyGfifoF31_L496_req_0
      ,_zyGfifo__gfdL496_6_P0_m2_cbid
      ,std_logic_vector'("000000000001")
      ,_zyGfifoF31_L496_data_0
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  _zzGfifoF0_L253_s4_p_6 : ixc_gfifo_port
    generic map(DW => integer_to_std(560,32),SHARE => 3,USETIME =>
     integer_to_std(1,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(25)
      ,_zyGfifo_dflt_ci(25)
      ,_zyGfifoF0_L253_s4_req_6
      ,_zyGfifoF0_L253_s4_cbid_6
      ,_zyGfifoF0_L253_s4_len_6
      ,_zyGfifoF0_L253_s4_data_6
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  _zzGfifoF1_L253_s2_p_7 : ixc_gfifo_port
    generic map(DW => integer_to_std(1,32),SHARE => 2,USETIME => integer_to_std
    (0,32),BUFL => integer_to_std(4,32),IS_SV_CHANNEL => 1)
    port map (
       _zyGfifo_dflt_co(26)
      ,_zyGfifo_dflt_ci(26)
      ,_zyGfifoF1_L253_s2_req_7
      ,_zyGfifoF1_L253_s2_cbid_7
      ,std_logic_vector'("000000000000")
      ,DUMMY63
      ,_zyGfifo_SGFtsReq
      ,_zyGfifo_SGFcbid
      ,_zyGfifo_SGFlen
      ,_zyGfifo_SGFidata
      ,_zyGfifo_SGFfull
      ,_zyGfifo_SLBreq
      ,_zyGfifo_SLBrd
      ,_zyGfifo_SLBwr
      ,_zyGfifo_SLBfull
      ,_zyGfifo_SRtkin
    ) ;
  DUMMY63 <= std_logic_vector'("0") ;
  _zz_strnp_45 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY64
      ,_zyGfifo_mod2_dflt_ci
    ) ;
  _zyGfifo_dflt_ci(0) <= it_conv_std_logic(DUMMY64) ;
  _zyGfifo_dflt_ci(1) <= (_zyGfifo_dflt_co(0) or _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(2) <= (or_reduce(_zyGfifo_dflt_co(1 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(3) <= (or_reduce(_zyGfifo_dflt_co(2 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(4) <= (or_reduce(_zyGfifo_dflt_co(3 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(5) <= (or_reduce(_zyGfifo_dflt_co(4 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(6) <= (or_reduce(_zyGfifo_dflt_co(5 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(7) <= (or_reduce(_zyGfifo_dflt_co(6 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(8) <= (or_reduce(_zyGfifo_dflt_co(7 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(9) <= (or_reduce(_zyGfifo_dflt_co(8 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(10) <= (or_reduce(_zyGfifo_dflt_co(9 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(11) <= (or_reduce(_zyGfifo_dflt_co(10 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(12) <= (or_reduce(_zyGfifo_dflt_co(11 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(13) <= (or_reduce(_zyGfifo_dflt_co(12 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(14) <= (or_reduce(_zyGfifo_dflt_co(13 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(15) <= (or_reduce(_zyGfifo_dflt_co(14 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(16) <= (or_reduce(_zyGfifo_dflt_co(15 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(17) <= (or_reduce(_zyGfifo_dflt_co(16 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(18) <= (or_reduce(_zyGfifo_dflt_co(17 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(19) <= (or_reduce(_zyGfifo_dflt_co(18 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(20) <= (or_reduce(_zyGfifo_dflt_co(19 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(21) <= (or_reduce(_zyGfifo_dflt_co(20 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(22) <= (or_reduce(_zyGfifo_dflt_co(21 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(23) <= (or_reduce(_zyGfifo_dflt_co(22 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(24) <= (or_reduce(_zyGfifo_dflt_co(23 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(25) <= (or_reduce(_zyGfifo_dflt_co(24 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_dflt_ci(26) <= (or_reduce(_zyGfifo_dflt_co(25 downto 0)) or
   _zyGfifo_mod2_dflt_ci) ;
  _zyGfifo_mod2_dflt_co <= or_reduce(_zyGfifo_dflt_co) ;
  _zzM2L324_pbcMevClk4 : ixc_mevClk
    generic map(WIDTH => integer_to_std(3,32),DUMMY3 => integer_to_std(0,32
    ),HOLD => 0,IS_EDGED => std_logic_vector'("100"),POLARITY =>
     std_logic_vector'("000"),DS => std_logic_vector'("011"),DM =>
     std_logic_vector'("000"),EVOUT => std_logic_vector'("000"),WAIT_EV =>
     std_logic_vector'("000"))
    port map (
       _zyM2L324_pbcMevClk4
      ,DUMMY65
      ,DUMMY66
      ,std_logic'('0')
      ,std_logic'('0')
      ,_zyM2L324_pbcReq4
      ,_zyM2L324_pbcBusy4
      ,_zyM2L324_pbcWait4
    ) ;
  DUMMY65 <= std_logic_vector'(clk & _zyL94_iscX1c0_f & _zyL61_iscX2c0_f) ;
  DUMMY66 <= std_logic_vector'((_zyM2L324_pbcCapEn0 or _zyM2L355_pbcCapEn3) &
   _zyM2L333_pbcCapEn1 & _zyM2L349_pbcCapEn2) ;
  _zzM2L253_pbcMevClk12 : ixc_mevClk
    generic map(WIDTH => integer_to_std(2,32),DUMMY3 => integer_to_std(0,32
    ),HOLD => 0,IS_EDGED => std_logic_vector'("01"),POLARITY =>
     std_logic_vector'("00"),DS => std_logic_vector'("00"),DM =>
     std_logic_vector'("00"),EVOUT => std_logic_vector'("00"),WAIT_EV =>
     std_logic_vector'("00"))
    port map (
       _zyM2L253_pbcMevClk12
      ,DUMMY67
      ,DUMMY68
      ,std_logic'('0')
      ,std_logic'('0')
      ,_zyM2L253_pbcReq12
      ,_zyM2L253_pbcBusy12
      ,_zyM2L253_pbcWait12
    ) ;
  DUMMY67 <= std_logic_vector'(_zyixc_port_0_0_req & clk) ;
  DUMMY68 <= std_logic_vector'(_zyM2L253_pbcCapEn5 & (((((_zyM2L274_pbcCapEn6 or
   _zyM2L287_pbcCapEn7) or _zyM2L293_pbcCapEn8) or _zyM2L295_pbcCapEn9) or
   _zyM2L364_pbcCapEn10) or _zyM2L300_pbcCapEn11)) ;
  _zzM2L10_bcBehEvalP0 : ixc_capLoopXp
    port map (
       _zzM2_bcBehEvalClk
      ,std_logic'('0')
      ,open
      ,_zzM2_bcBehHalt
    ) ;
  _zzM2L306_mdxP0_OnP : ixc_mdrOn
    port map (
       _zzM2L306_mdxP0_On
      ,_zzM2L306_mdxP0_EnNxt
      ,_zzM2L306_mdxP0_En
    ) ;
  _zzM2L324_mdxP2_OnP : ixc_mdrOn
    port map (
       _zzM2L324_mdxP2_On
      ,_zzM2L324_mdxP2_EnNxt
      ,_zzM2L324_mdxP2_En
    ) ;
  _zzM2L368_mdxP3_OnP : ixc_mdrOn
    port map (
       _zzM2L368_mdxP3_On
      ,_zzM2L368_mdxP3_EnNxt
      ,_zzM2L368_mdxP3_En
    ) ;
  _zzM2L439_mdxP4_OnP : ixc_mdrOn
    port map (
       _zzM2L439_mdxP4_On
      ,_zzM2L439_mdxP4_EnNxt
      ,_zzM2L439_mdxP4_En
    ) ;
  _zzM2L253_mdxP5_OnP : ixc_mdrOn
    port map (
       _zzM2L253_mdxP5_On
      ,_zzM2L253_mdxP5_EnNxt
      ,_zzM2L253_mdxP5_En
    ) ;
  _zzerror_cntr_M2L19_mdxSpLt6 : ixc_sampleLT
    generic map(WIDTH => 32)
    port map (
       DUMMY69
      ,DUMMY70
    ) ;
  _zzerror_cntr_M2L19_mdxSvLt6 <= conv_integer(DUMMY69) ;
  DUMMY70 <= integer_to_std(error_cntr,32) ;
  _zzkme_ib_tvalid_M2L36_mdxSpLt7 : ixc_sampleLT
    generic map(WIDTH => 1)
    port map (
       _zzkme_ib_tvalid_M2L36_mdxSvLt7
      ,kme_ib_tvalid
    ) ;
  _zzkme_ib_tlast_M2L37_mdxSpLt8 : ixc_sampleLT
    generic map(WIDTH => 1)
    port map (
       _zzkme_ib_tlast_M2L37_mdxSvLt8
      ,kme_ib_tlast
    ) ;
  _zzkme_ib_tdata_M2L33_mdxSpLt9 : ixc_sampleLT
    generic map(WIDTH => 64)
    port map (
       _zzkme_ib_tdata_M2L33_mdxSvLt9
      ,kme_ib_tdata
    ) ;
  _zzkme_ib_tstrb_M2L34_mdxSpLt10 : ixc_sampleLT
    generic map(WIDTH => 8)
    port map (
       _zzkme_ib_tstrb_M2L34_mdxSvLt10
      ,kme_ib_tstrb
    ) ;
  _zzkme_ib_tuser_M2L35_mdxSpLt11 : ixc_sampleLT
    generic map(WIDTH => 8)
    port map (
       _zzkme_ib_tuser_M2L35_mdxSvLt11
      ,kme_ib_tuser
    ) ;
  DUMMY72 : apb_xactor
    port map (
       psel => DUMMY12
      ,penable => DUMMY13
      ,paddr => DUMMY14
      ,pwdata => DUMMY15
      ,pwrite => DUMMY16
      ,clk => DUMMY17
      ,reset_n => DUMMY18
      ,prdata => DUMMY19
      ,pready => DUMMY20
      ,pslverr => DUMMY21
    ) ;
  kme_dut : cr_kme
    port map (
       kme_interrupt => _zy_simnet_dio_10
      ,kme_ib_tready => DUMMY22
      ,kme_cceip0_ob_tvalid => DUMMY23
      ,kme_cceip0_ob_tlast => DUMMY24
      ,kme_cceip0_ob_tid => DUMMY25
      ,kme_cceip0_ob_tstrb => DUMMY26
      ,kme_cceip0_ob_tuser => DUMMY27
      ,kme_cceip0_ob_tdata => DUMMY28
      ,apb_prdata => DUMMY29
      ,apb_pready => DUMMY30
      ,apb_pslverr => DUMMY31
      ,kme_idle => _zy_simnet_dio_21
      ,clk => DUMMY32
      ,rst_n => DUMMY33
      ,scan_en => _zy_simnet_cio_24
      ,scan_mode => _zy_simnet_cio_25
      ,scan_rst_n => _zy_simnet_cio_26
      ,ovstb => _zy_simnet_cio_27
      ,lvm => _zy_simnet_cio_28
      ,mlvm => _zy_simnet_cio_29
      ,disable_debug_cmd => _zy_simnet_cio_30
      ,disable_unencrypted_keys => _zy_simnet_cio_31
      ,kme_ib_tvalid => DUMMY34
      ,kme_ib_tlast => DUMMY35
      ,kme_ib_tid => DUMMY36
      ,kme_ib_tstrb => DUMMY37
      ,kme_ib_tuser => DUMMY38
      ,kme_ib_tdata => DUMMY39
      ,kme_cceip0_ob_tready => DUMMY40
      ,apb_paddr => DUMMY41
      ,apb_psel => DUMMY42
      ,apb_penable => DUMMY43
      ,apb_pwrite => DUMMY44
      ,apb_pwdata => DUMMY45
    ) ;
  _zzmdx1 : ixc_assign
    port map (
       _zzmdxOne
      ,DUMMY71
    ) ;
  DUMMY71 <= std_logic_vector'("1") ;

  process --:o956
  (clk)
    variable DUMMY73 : integer ;
    variable DUMMY74 : std_logic ;
  begin
    if (clk'event and clk = '1') then
      _zzM2L306_mdxP0_kme_ib_tvalid_Dwen0 <= '0' ;
      _zzM2L306_mdxP0_kme_ib_tlast_Dwen1 <= '0' ;
      DUMMY74 := '1' ;

      case _zyL306_meState0 is
        when  "0"  =>
          if (config_done = '1') then
            DUMMY73 := 1000 ;
            saw_mega <= '0' ;
            saw_guid_tlv <= '0' ;
            mega_tlv_word_count <= 0 ;
            have_guid_tlv <= '0' ;
            ready_ib <= '1' ;
            _zzM2L306_mdxP0_kme_ib_tvalid_wr0 <= '0' ;
            _zzM2L306_mdxP0_kme_ib_tvalid_Dwen0 <= '1' ;
            _zzM2L306_mdxP0_En <= _zzM2L306_mdxP0_EnNxt ;
            _zzM2L306_mdxP0_kme_ib_tlast_wr1 <= '0' ;
            _zzM2L306_mdxP0_kme_ib_tlast_Dwen1 <= '1' ;
            _zzM2L306_mdxP0_En <= _zzM2L306_mdxP0_EnNxt ;
            _zyL306_meState0 <= "1" ;
            DUMMY74 := '0' ;
          end if;
          if (DUMMY74 = '1') then
            _zyL306_meState0 <= "0" ;
          end if;
        when  "1"  =>
          _zyGfifoF0_L435_req_0 <= boolean_to_std
          (_zyGfifo__gfdL435_34_P0_m2_gfOff = _zyGfifoF0_L435_req_0) ;
          _zyL306_meState0 <= "0" ;
        when others => null ;
      end case;
    end if ;
  end process ;

  process --:o1039
  (clk)
    variable DUMMY75 : std_logic ;
    variable _zyGfifoF0_L312_s2_req_0_DUMMY0 : std_logic ;
  begin
    if (clk'event and clk = '1') then
      DUMMY75 := '1' ;

      case _zyL312_meState2 is
        when  "0"  =>
          if (config_done = '1') then
            saw_cqe <= '0' ;
            saw_stats <= '0' ;
            watchdog_timer <= 0 ;
            ready_ob <= '1' ;
            _zyL312_meState2 <= "1" ;
            DUMMY75 := '0' ;
          end if;
          if (DUMMY75 = '1') then
            _zyL312_meState2 <= "0" ;
          end if;
        when  "1"  =>
          _zyGfifoF1_L513_req_0 <= boolean_to_std
          (_zyGfifo__gfdL513_33_P0_m2_gfOff = _zyGfifoF1_L513_req_0) ;
          if (error_cntr /= 0) then
            _zyGfifoF0_L312_s2_cbid_0 <= _zyGfifo__gfdL316_32_P0_m2_cbid ;
            _zyGfifoF0_L312_s2_data_0 <= it_multiple_concat(std_logic'('0'),280)
             ;
            _zyGfifoF0_L312_s2_data_0 <= testname ;
            _zyGfifoF0_L312_s2_req_0_DUMMY0 := boolean_to_std
            (_zyGfifo__gfdL316_32_P0_m2_gfOff = _zyGfifoF0_L312_s2_req_0_DUMMY0)
             ;
          else
            _zyGfifoF0_L312_s2_cbid_0 <= _zyGfifo__gfdL318_31_P0_m2_cbid ;
            _zyGfifoF0_L312_s2_data_0 <= it_multiple_concat(std_logic'('0'),280)
             ;
            _zyGfifoF0_L312_s2_data_0 <= testname ;
            _zyGfifoF0_L312_s2_req_0_DUMMY0 := boolean_to_std
            (_zyGfifo__gfdL318_31_P0_m2_gfOff = _zyGfifoF0_L312_s2_req_0_DUMMY0)
             ;
          end if;
          _zyictd_finish_L320_0 <= '1' ;
          _zyL312_meState2 <= "0" ;
        when others => null ;
      end case;
    end if ;
    _zyGfifoF0_L312_s2_req_0 <= transport _zyGfifoF0_L312_s2_req_0_DUMMY0;
  end process ;

  process --:o1120
  (_zyM2L324_pbcMevClk4)
    variable _zzM2L324_mdxP2_error_cntr_wr0_DUMMY1 : integer ;
    variable _zyM2L324_pbcEn13_DUMMY2 : std_logic ;
    variable _zyxr_L206_tfiV3_M2_pbcG3_DUMMY3 : std_logic_vector(31 downto 0) ;
    variable DUMMY76 : std_logic_vector(1 to 72) ;
    variable _zyoperation_L206_tfiV0_M2_pbcG0_DUMMY4 : std_logic_vector(7 downto
     0) ;
    variable _zyaddress_L206_tfiV1_M2_pbcG1_DUMMY5 : std_logic_vector(31 downto
     0) ;
    variable _zydata_L206_tfiV2_M2_pbcG2_DUMMY6 : std_logic_vector(31 downto 0)
     ;
    variable _zygsfis_get_config_data_rptr_DUMMY7 : std_logic_vector(4 downto 0)
     ;
    variable _zygsfis_get_config_data_space_DUMMY8 : std_logic_vector(4 downto 0
    ) ;
    variable _zyGfifoF0_L324_s3_req_1_DUMMY9 : std_logic ;
    variable _zyL326_tfiRv17_DUMMY10 : integer ;
    variable operation_DUMMY11 : std_logic_vector(7 downto 0) ;
    variable address_DUMMY12 : std_logic_vector(31 downto 0) ;
    variable data_DUMMY13 : std_logic_vector(31 downto 0) ;
    variable retval_DUMMY14 : integer ;
    variable _zyGfifoF1_L324_s2_req_2_DUMMY15 : std_logic ;
    variable _zyGfifoF2_L324_s2_req_3_DUMMY16 : std_logic ;
    variable returned_data_DUMMY17 : std_logic_vector(31 downto 0) ;
    variable response_DUMMY18 : std_logic ;
  begin
    if (_zyM2L324_pbcMevClk4'event and _zyM2L324_pbcMevClk4 = '1') then
      _zzM2L324_mdxP2_error_cntr_Dwen0 <= '0' ;
      _zzM2L324_mdxP2_error_cntr_wr0_DUMMY1 := error_cntr ;

      case _zyM2L324_pbcFsm0_s is
        when  "000"  =>
          _zyM2L324_pbcEn13_DUMMY2 := '1' ;
          _zyM2L324_pbcCapEn0 <= '0' ;
          if (config_ready = '1') then
            _zyxr_L206_tfiV3_M2_pbcG3_DUMMY3 :=
             "00000000000000000000000000000000" ;
            if (_zygsfis_get_config_data_rptr_DUMMY7 /=
             _zygsfis_get_config_data_wptr) then
              _zyxr_L206_tfiV3_M2_pbcG3_DUMMY3(0) := '1' ;
              DUMMY76 := _zygsfis_get_config_data_fifo(conv_integer
              (_zygsfis_get_config_data_rptr_DUMMY7)) ;
              _zydata_L206_tfiV2_M2_pbcG2_DUMMY6 := DUMMY76(41 to 72) ;
              _zyaddress_L206_tfiV1_M2_pbcG1_DUMMY5 := DUMMY76(9 to 40) ;
              _zyoperation_L206_tfiV0_M2_pbcG0_DUMMY4 := DUMMY76(1 to 8) ;
              _zygsfis_get_config_data_rptr_DUMMY7 := ext((ext
              (_zygsfis_get_config_data_rptr_DUMMY7,32) + std_logic_vector'
              ("00000000000000000000000000000001")),5) ;
              _zygsfis_get_config_data_space_DUMMY8 := ext((ext
              (_zygsfis_get_config_data_space_DUMMY8,32) + std_logic_vector'
              ("00000000000000000000000000000001")),5) ;
            end if;
            _zyxr_L206_tfiV3_M2_pbcG3_DUMMY3(1) := (boolean_to_std
            (_zygsfis_get_config_data_rptr_DUMMY7 =
             _zygsfis_get_config_data_wptr) and _zygsfis_get_config_data_eos) ;
            if (not(_zyxr_L206_tfiV3_M2_pbcG3_DUMMY3(1)) = '1') then
              if (_zygsfis_get_config_data_req = _zygsfis_get_config_data_ack)
               then
                _zygsfis_get_config_data_space_DUMMY8 := not(
                (_zygsfis_get_config_data_wptr -
                 _zygsfis_get_config_data_rptr_DUMMY7)) ;
              end if;
              if (ext(_zygsfis_get_config_data_space_DUMMY8,32) >=
               std_logic_vector'("00000000000000000000000000001000")) then
                _zygsfis_get_config_data_req <= ext((ext
                (_zygsfis_get_config_data_req,32) + std_logic_vector'
                ("00000000000000000000000000000001")),5) ;
                _zyGfifoF0_L324_s3_cbid_1 <=
                 _zyGfifo_get_config_data_2_zyprefetch_m2_cbid ;
                _zyGfifoF0_L324_s3_len_1 <= std_logic_vector'("000000000001") ;
                _zyGfifoF0_L324_s3_data_1 <= std_logic_vector'
                ("000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
                ) ;
                _zyGfifoF0_L324_s3_data_1(31 downto 0) <= ext
                (_zygsfis_get_config_data_space_DUMMY8,32) ;
                _zyGfifoF0_L324_s3_req_1_DUMMY9 := boolean_to_std
                (_zyGfifo_get_config_data_2_zyprefetch_m2_gfOff =
                 _zyGfifoF0_L324_s3_req_1_DUMMY9) ;
                _zygsfis_get_config_data_space_DUMMY8 := std_logic_vector'
                ("00000") ;
              end if;
            end if;
            _zyL326_tfiRv17_DUMMY10 := conv_integer
            (_zyxr_L206_tfiV3_M2_pbcG3_DUMMY3) ;
            operation_DUMMY11 := _zyoperation_L206_tfiV0_M2_pbcG0_DUMMY4 ;
            address_DUMMY12 := _zyaddress_L206_tfiV1_M2_pbcG1_DUMMY5 ;
            data_DUMMY13 := _zydata_L206_tfiV2_M2_pbcG2_DUMMY6 ;
            retval_DUMMY14 := _zyL326_tfiRv17_DUMMY10 ;
            _zyGfifoF1_L324_s2_cbid_2 <= _zyGfifo__gfdL327_30_P0_m2_cbid ;
            _zyGfifoF1_L324_s2_data_2 <= std_logic_vector'
            ("00000000000000000000000000000000") ;
            _zyGfifoF1_L324_s2_data_2 <= integer_to_std(retval_DUMMY14,32) ;
            _zyGfifoF1_L324_s2_req_2_DUMMY15 := boolean_to_std
            (_zyGfifo__gfdL327_30_P0_m2_gfOff = _zyGfifoF1_L324_s2_req_2_DUMMY15
            ) ;
            if (retval_DUMMY14 = 1) then
              _zyGfifoF2_L324_s2_cbid_3 <= _zyGfifo__gfdL330_29_P0_m2_cbid ;
              _zyGfifoF2_L324_s2_len_3 <= std_logic_vector'("000000000011") ;
              _zyGfifoF2_L324_s2_data_3 <= std_logic_vector'
              ("000000000000000000000000000000000000000000000000000000000000000000000000"
              ) ;
              _zyGfifoF2_L324_s2_data_3(71 downto 64) <= operation_DUMMY11 ;
              _zyGfifoF2_L324_s2_data_3(63 downto 32) <= address_DUMMY12 ;
              _zyGfifoF2_L324_s2_data_3(31 downto 0) <= data_DUMMY13 ;
              _zyGfifoF2_L324_s2_req_3_DUMMY16 := boolean_to_std
              (_zyGfifo__gfdL330_29_P0_m2_gfOff =
               _zyGfifoF2_L324_s2_req_3_DUMMY16) ;
              if ((operation_DUMMY11 = std_logic_vector'("01110010") or
               operation_DUMMY11 = std_logic_vector'("01010010") or
               operation_DUMMY11 = std_logic_vector'("01110111") or
               operation_DUMMY11 = std_logic_vector'("01010111"))) then
                if ((operation_DUMMY11 = std_logic_vector'("01110010") or
                 operation_DUMMY11 = std_logic_vector'("01010010"))) then
                  _zyL94_iscX1c0_i0 <= ext(address_DUMMY12,64) ;
                  _zyL94_iscX1c0_s <= _zyL94_iscX1c0_n ;
                  _zyL94_iscX1c0_n <= not(_zyL94_iscX1c0_n) ;
                  _zyM2L333_pbcCapEn1 <= '1' ;
                  _zyM2L324_pbcFsm0_s <= "001" ;
                  _zyM2L324_pbcEn13_DUMMY2 := '0' ;
                elsif ((operation_DUMMY11 = std_logic_vector'("01110111") or
                 operation_DUMMY11 = std_logic_vector'("01010111"))) then
                  _zyL61_iscX2c0_i0 <= ext(address_DUMMY12,64) ;
                  _zyL61_iscX2c0_i1 <= data_DUMMY13 ;
                  _zyL61_iscX2c0_s <= _zyL61_iscX2c0_n ;
                  _zyL61_iscX2c0_n <= not(_zyL61_iscX2c0_n) ;
                  _zyM2L349_pbcCapEn2 <= '1' ;
                  _zyM2L324_pbcFsm0_s <= "010" ;
                  _zyM2L324_pbcEn13_DUMMY2 := '0' ;
                end if;
                if (_zyM2L324_pbcEn13_DUMMY2 = '1') then
                  _zyM2L355_pbcCapEn3 <= '1' ;
                  _zyM2L324_pbcFsm0_s <= "011" ;
                  _zyM2L324_pbcEn13_DUMMY2 := '0' ;
                end if;
              end if;
            end if;
          end if;
          if (_zyM2L324_pbcEn13_DUMMY2 = '1') then
            _zyM2L324_pbcCapEn0 <= '1' ;
            _zyM2L324_pbcFsm0_s <= "000" ;
          end if;
        when  "001"  =>
          _zyM2L333_pbcCapEn1 <= '0' ;
          returned_data_DUMMY17 := _zyL94_iscX1c0_o1 ;
          response_DUMMY18 := _zyL94_iscX1c0_o2 ;
          _zyGfifoF0_L324_s3_cbid_1 <= _zyGfifo__gfdL334_28_P0_m2_cbid ;
          _zyGfifoF0_L324_s3_len_1 <= std_logic_vector'("000000000011") ;
          _zyGfifoF0_L324_s3_data_1 <= std_logic_vector'
          ("000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
          ) ;
          _zyGfifoF0_L324_s3_data_1(95 downto 64) <= address_DUMMY12 ;
          _zyGfifoF0_L324_s3_data_1(63 downto 32) <= data_DUMMY13 ;
          _zyGfifoF0_L324_s3_data_1(31 downto 0) <= returned_data_DUMMY17 ;
          _zyGfifoF0_L324_s3_req_1_DUMMY9 := boolean_to_std
          (_zyGfifo__gfdL334_28_P0_m2_gfOff = _zyGfifoF0_L324_s3_req_1_DUMMY9) ;
          if (ext(response_DUMMY18,32) /= std_logic_vector'
          ("00000000000000000000000000000000")) then
            _zyGfifoF1_L324_s2_cbid_2 <= _zyGfifo__gfdL336_27_P0_m2_cbid ;
            _zyGfifoF1_L324_s2_data_2 <= std_logic_vector'
            ("00000000000000000000000000000000") ;
            _zyGfifoF1_L324_s2_data_2 <= address_DUMMY12 ;
            _zyGfifoF1_L324_s2_req_2_DUMMY15 := boolean_to_std
            (_zyGfifo__gfdL336_27_P0_m2_gfOff = _zyGfifoF1_L324_s2_req_2_DUMMY15
            ) ;
            _zyictd_finish_L338_1 <= '1' ;
          end if;
          if (returned_data_DUMMY17 /= data_DUMMY13) then
            _zyGfifoF2_L324_s2_cbid_3 <= _zyGfifo__gfdL341_26_P0_m2_cbid ;
            _zyGfifoF2_L324_s2_len_3 <= std_logic_vector'("000000000010") ;
            _zyGfifoF2_L324_s2_data_3 <= std_logic_vector'
            ("000000000000000000000000000000000000000000000000000000000000000000000000"
            ) ;
            _zyGfifoF2_L324_s2_data_3(63 downto 32) <= returned_data_DUMMY17 ;
            _zyGfifoF2_L324_s2_data_3(31 downto 0) <= data_DUMMY13 ;
            _zyGfifoF2_L324_s2_req_3_DUMMY16 := boolean_to_std
            (_zyGfifo__gfdL341_26_P0_m2_gfOff = _zyGfifoF2_L324_s2_req_3_DUMMY16
            ) ;
            _zzM2L324_mdxP2_error_cntr_wr0_DUMMY1 := 
            (_zzM2L324_mdxP2_error_cntr_wr0_DUMMY1 + 1) ;
            _zzM2L324_mdxP2_error_cntr_Dwen0 <= '1' ;
            _zzM2L324_mdxP2_En <= _zzM2L324_mdxP2_EnNxt ;
            if (_zzM2L324_mdxP2_error_cntr_wr0_DUMMY1 > 10) then
              _zyictd_finish_L338_1 <= '1' ;
            end if;
          end if;
          _zyM2L355_pbcCapEn3 <= '1' ;
          _zyM2L324_pbcFsm0_s <= "011" ;
        when  "010"  =>
          _zyM2L349_pbcCapEn2 <= '0' ;
          response_DUMMY18 := _zyL61_iscX2c0_o2 ;
          if (ext(response_DUMMY18,32) /= std_logic_vector'
          ("00000000000000000000000000000000")) then
            _zyGfifoF0_L324_s3_cbid_1 <= _zyGfifo__gfdL351_25_P0_m2_cbid ;
            _zyGfifoF0_L324_s3_len_1 <= std_logic_vector'("000000000001") ;
            _zyGfifoF0_L324_s3_data_1 <= std_logic_vector'
            ("000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
            ) ;
            _zyGfifoF0_L324_s3_data_1(31 downto 0) <= address_DUMMY12 ;
            _zyGfifoF0_L324_s3_req_1_DUMMY9 := boolean_to_std
            (_zyGfifo__gfdL351_25_P0_m2_gfOff = _zyGfifoF0_L324_s3_req_1_DUMMY9)
             ;
            _zyictd_finish_L338_1 <= '1' ;
          end if;
          _zyM2L355_pbcCapEn3 <= '1' ;
          _zyM2L324_pbcFsm0_s <= "011" ;
        when  "011"  =>
          _zyM2L355_pbcCapEn3 <= '0' ;
          _zyM2L324_pbcCapEn0 <= '1' ;
          _zyM2L324_pbcFsm0_s <= "000" ;
        when others => null ;
      end case;
    end if ;
    _zzM2L324_mdxP2_error_cntr_wr0 <= transport
     _zzM2L324_mdxP2_error_cntr_wr0_DUMMY1;
    _zyM2L324_pbcEn13 <= _zyM2L324_pbcEn13_DUMMY2;
    _zyxr_L206_tfiV3_M2_pbcG3 <= conv_integer(_zyxr_L206_tfiV3_M2_pbcG3_DUMMY3);
    _zyoperation_L206_tfiV0_M2_pbcG0 <= _zyoperation_L206_tfiV0_M2_pbcG0_DUMMY4;
    _zyaddress_L206_tfiV1_M2_pbcG1 <= _zyaddress_L206_tfiV1_M2_pbcG1_DUMMY5;
    _zydata_L206_tfiV2_M2_pbcG2 <= _zydata_L206_tfiV2_M2_pbcG2_DUMMY6;
    _zygsfis_get_config_data_rptr <= _zygsfis_get_config_data_rptr_DUMMY7;
    _zygsfis_get_config_data_space <= _zygsfis_get_config_data_space_DUMMY8;
    _zyGfifoF0_L324_s3_req_1 <= _zyGfifoF0_L324_s3_req_1_DUMMY9;
    _zyL326_tfiRv17 <= _zyL326_tfiRv17_DUMMY10;
    operation <= operation_DUMMY11;
    address <= address_DUMMY12;
    data <= data_DUMMY13;
    retval <= retval_DUMMY14;
    _zyGfifoF1_L324_s2_req_2 <= _zyGfifoF1_L324_s2_req_2_DUMMY15;
    _zyGfifoF2_L324_s2_req_3 <= _zyGfifoF2_L324_s2_req_3_DUMMY16;
    returned_data <= returned_data_DUMMY17;
    response <= response_DUMMY18;
  end process ;

  process --:o1329
  (clk)
    variable DUMMY77 : std_logic ;
    variable DUMMY78 : std_logic_vector(63 downto 0) ;
    variable DUMMY79 : std_logic_vector(31 downto 0) ;
    variable DUMMY80 : std_logic_vector(7 downto 0) ;
    variable DUMMY81 : std_logic_vector(31 downto 0) ;
    variable DUMMY82 : std_logic_vector(31 downto 0) ;
    variable DUMMY83 : std_logic_vector(1 to 136) ;
    variable _zygsfis_ib_service_data_rptr_DUMMY19 : std_logic_vector(4 downto 0
    ) ;
    variable _zygsfis_ib_service_data_space_DUMMY20 : std_logic_vector(4 downto
     0) ;
    variable _zyL370_tfiRv18_DUMMY21 : integer ;
    variable tdata_ib_DUMMY22 : std_logic_vector(63 downto 0) ;
    variable tuser_string_ib_DUMMY23 : std_logic_vector(31 downto 0) ;
    variable tstrb_ib_DUMMY24 : std_logic_vector(7 downto 0) ;
    variable str_get_ib_DUMMY25 : std_logic_vector(31 downto 0) ;
    variable retval_ib_DUMMY26 : integer ;
    variable DUMMY84 : std_logic_vector(31 downto 0) ;
    variable _zyGfifoF0_L368_s2_req_4_DUMMY27 : std_logic ;
    variable _zyL372_tfiRv5_DUMMY28 : std_logic_vector(24 downto 0) ;
    variable user_string_ib_DUMMY29 : std_logic_vector(24 downto 0) ;
    variable saw_mega_DUMMY30 : std_logic ;
    variable saw_guid_tlv_DUMMY31 : std_logic ;
    variable mega_tlv_word_count_DUMMY32 : integer ;
    variable have_guid_tlv_DUMMY33 : std_logic ;
    variable DUMMY85 : std_logic_vector(24 downto 0) ;
    variable _zyL406_tfiRv6_DUMMY34 : std_logic_vector(7 downto 0) ;
  begin
    if (clk'event and clk = '1') then
      _zzM2L368_mdxP3_kme_ib_tvalid_Dwen0 <= '0' ;
      _zzM2L368_mdxP3_kme_ib_tlast_Dwen1 <= '0' ;
      _zzM2L368_mdxP3_kme_ib_tdata_Dwen2 <= '0' ;
      _zzM2L368_mdxP3_kme_ib_tstrb_Dwen3 <= '0' ;
      _zzM2L368_mdxP3_kme_ib_tuser_Dwen4 <= '0' ;
      DUMMY77 := '1' ;

      case _zyL368_meState4 is
        when  "0"  =>
          if (ready_ib = '1') then
            DUMMY82 := "00000000000000000000000000000000" ;
            if (_zygsfis_ib_service_data_rptr_DUMMY19 /=
             _zygsfis_ib_service_data_wptr) then
              DUMMY82(0) := '1' ;
              DUMMY83 := _zygsfis_ib_service_data_fifo(conv_integer
              (_zygsfis_ib_service_data_rptr_DUMMY19)) ;
              DUMMY81 := DUMMY83(105 to 136) ;
              DUMMY80 := DUMMY83(97 to 104) ;
              DUMMY79 := DUMMY83(65 to 96) ;
              DUMMY78 := DUMMY83(1 to 64) ;
              _zygsfis_ib_service_data_rptr_DUMMY19 := ext((ext
              (_zygsfis_ib_service_data_rptr_DUMMY19,32) + std_logic_vector'
              ("00000000000000000000000000000001")),5) ;
              _zygsfis_ib_service_data_space_DUMMY20 := ext((ext
              (_zygsfis_ib_service_data_space_DUMMY20,32) + std_logic_vector'
              ("00000000000000000000000000000001")),5) ;
            end if;
            DUMMY82(1) := (boolean_to_std(_zygsfis_ib_service_data_rptr_DUMMY19
             = _zygsfis_ib_service_data_wptr) and _zygsfis_ib_service_data_eos)
             ;
            if (not(DUMMY82(1)) = '1') then
              if (_zygsfis_ib_service_data_req = _zygsfis_ib_service_data_ack)
               then
                _zygsfis_ib_service_data_space_DUMMY20 := not(
                (_zygsfis_ib_service_data_wptr -
                 _zygsfis_ib_service_data_rptr_DUMMY19)) ;
              end if;
              if (ext(_zygsfis_ib_service_data_space_DUMMY20,32) >=
               std_logic_vector'("00000000000000000000000000001000")) then
                _zygsfis_ib_service_data_req <= ext((ext
                (_zygsfis_ib_service_data_req,32) + std_logic_vector'
                ("00000000000000000000000000000001")),5) ;
                _zyGfifoF11_L207_data_0 <= ext
                (_zygsfis_ib_service_data_space_DUMMY20,32) ;
                _zyGfifoF11_L207_req_0 <= boolean_to_std
                (_zyGfifo_ib_service_data_2_zyprefetch_m2_gfOff =
                 _zyGfifoF11_L207_req_0) ;
                _zygsfis_ib_service_data_space_DUMMY20 := std_logic_vector'
                ("00000") ;
              end if;
            end if;
            _zyL370_tfiRv18_DUMMY21 := conv_integer(DUMMY82) ;
            tdata_ib_DUMMY22 := DUMMY78 ;
            tuser_string_ib_DUMMY23 := DUMMY79 ;
            tstrb_ib_DUMMY24 := DUMMY80 ;
            str_get_ib_DUMMY25 := DUMMY81 ;
            retval_ib_DUMMY26 := _zyL370_tfiRv18_DUMMY21 ;
            DUMMY84 := tuser_string_ib_DUMMY23 ;
            if (DUMMY84 = std_logic_vector'("00000000000000000000000000001011"))
             then
              _zyGfifoF0_L368_s2_cbid_4 <= _zyGfifo__gfdL519_24_P0_m2_cbid ;
              _zyGfifoF0_L368_s2_req_4_DUMMY27 := boolean_to_std
              (_zyGfifo__gfdL519_24_P0_m2_gfOff =
               _zyGfifoF0_L368_s2_req_4_DUMMY27) ;
              _zyL372_tfiRv5_DUMMY28 := "0010100110110111101010100" ;
            elsif (DUMMY84 = std_logic_vector'
            ("00000000000000000000000000001010")) then
              _zyGfifoF0_L368_s2_cbid_4 <= _zyGfifo__gfdL522_23_P0_m2_cbid ;
              _zyGfifoF0_L368_s2_req_4_DUMMY27 := boolean_to_std
              (_zyGfifo__gfdL522_23_P0_m2_gfOff =
               _zyGfifoF0_L368_s2_req_4_DUMMY27) ;
              _zyL372_tfiRv5_DUMMY28 := "0010001010110111101010100" ;
            else
              _zyL372_tfiRv5_DUMMY28 := "0000000000000000000000000" ;
            end if;
            user_string_ib_DUMMY29 := _zyL372_tfiRv5_DUMMY28 ;
            _zyGfifoF14_L373_data_0 <= ext(user_string_ib_DUMMY29,32) ;
            _zyGfifoF14_L373_req_0 <= boolean_to_std
            (_zyGfifo__gfdL373_22_P0_m2_gfOff = _zyGfifoF14_L373_req_0) ;
            if (retval_ib_DUMMY26 = 1) then
              _zyGfifoF15_L375_data_0(135 downto 72) <= tdata_ib_DUMMY22 ;
              _zyGfifoF15_L375_data_0(71 downto 40) <= tuser_string_ib_DUMMY23 ;
              _zyGfifoF15_L375_data_0(39 downto 32) <= tstrb_ib_DUMMY24 ;
              _zyGfifoF15_L375_data_0(31 downto 0) <= str_get_ib_DUMMY25 ;
              _zyGfifoF15_L375_req_0 <= boolean_to_std
              (_zyGfifo__gfdL375_21_P0_m2_gfOff = _zyGfifoF15_L375_req_0) ;
              if (kme_ib_tready = '1') then
                _zzM2L368_mdxP3_kme_ib_tlast_wr1 <= '0' ;
                _zzM2L368_mdxP3_kme_ib_tlast_Dwen1 <= '1' ;
                _zzM2L368_mdxP3_En <= _zzM2L368_mdxP3_EnNxt ;
                _zzM2L368_mdxP3_kme_ib_tvalid_wr0 <= '0' ;
                _zzM2L368_mdxP3_kme_ib_tvalid_Dwen0 <= '1' ;
                _zzM2L368_mdxP3_En <= _zzM2L368_mdxP3_EnNxt ;
                if (str_get_ib_DUMMY25 = std_logic_vector'
                ("00000000000000000000000000000011")) then
                  if ((user_string_ib_DUMMY29 = std_logic_vector'
                  ("0010100110110111101010100") and tdata_ib_DUMMY22(7 downto 0)
                   >= std_logic_vector'("00010101"))) then
                    _zyGfifoF16_L381_req_0 <= boolean_to_std
                    (_zyGfifo__gfdL381_20_P0_m2_gfOff = _zyGfifoF16_L381_req_0)
                     ;
                    saw_mega_DUMMY30 := '1' ;
                  elsif (tdata_ib_DUMMY22(7 downto 0) = std_logic_vector'
                  ("00001010")) then
                    saw_guid_tlv_DUMMY31 := '1' ;
                  end if;
                  if (saw_mega_DUMMY30 = '1') then
                    mega_tlv_word_count_DUMMY32 := (mega_tlv_word_count_DUMMY32
                     + 1) ;
                    if (mega_tlv_word_count_DUMMY32 = 2) then
                      _zyGfifoF17_L390_data_0 <= tdata_ib_DUMMY22 ;
                      _zyGfifoF17_L390_req_0 <= boolean_to_std
                      (_zyGfifo__gfdL390_19_P0_m2_gfOff = _zyGfifoF17_L390_req_0
                      ) ;
                      if (tdata_ib_DUMMY22(4) = '1') then
                        have_guid_tlv_DUMMY33 := '1' ;
                      end if;
                    end if;
                  end if;
                  if ((user_string_ib_DUMMY29 = std_logic_vector'
                  ("0010001010110111101010100") and saw_mega_DUMMY30 = '1'))
                   then
                    if (have_guid_tlv_DUMMY33 = '0') then
                      _zzM2L368_mdxP3_kme_ib_tlast_wr1 <= '1' ;
                      _zzM2L368_mdxP3_kme_ib_tlast_Dwen1 <= '1' ;
                      _zzM2L368_mdxP3_En <= _zzM2L368_mdxP3_EnNxt ;
                    end if;
                    saw_mega_DUMMY30 := '0' ;
                  elsif ((user_string_ib_DUMMY29 = std_logic_vector'
                  ("0010001010110111101010100") and saw_guid_tlv_DUMMY31 = '1'))
                   then
                    _zzM2L368_mdxP3_kme_ib_tlast_wr1 <= '1' ;
                    _zzM2L368_mdxP3_kme_ib_tlast_Dwen1 <= '1' ;
                    _zzM2L368_mdxP3_En <= _zzM2L368_mdxP3_EnNxt ;
                    saw_guid_tlv_DUMMY31 := '0' ;
                  end if;
                  DUMMY85 := user_string_ib_DUMMY29 ;
                  _zyGfifoF18_L530_data_0 <= ext(DUMMY85,32) ;
                  _zyGfifoF18_L530_req_0 <= boolean_to_std
                  (_zyGfifo__gfdL530_18_P0_m2_gfOff = _zyGfifoF18_L530_req_0) ;
                  if (DUMMY85 = std_logic_vector'("0010100110110111101010100"))
                   then
                    _zyL406_tfiRv6_DUMMY34 := "00000001" ;
                  elsif (DUMMY85 = std_logic_vector'("0010001010110111101010100"
                  )) then
                    _zyL406_tfiRv6_DUMMY34 := "00000010" ;
                  else
                    _zyL406_tfiRv6_DUMMY34 := "00000011" ;
                  end if;
                  _zzM2L368_mdxP3_kme_ib_tuser_wr4 <= _zyL406_tfiRv6_DUMMY34 ;
                  _zzM2L368_mdxP3_kme_ib_tuser_Dwen4 <= '1' ;
                  _zzM2L368_mdxP3_En <= _zzM2L368_mdxP3_EnNxt ;
                else
                  _zzM2L368_mdxP3_kme_ib_tuser_wr4 <= "00000000" ;
                  _zzM2L368_mdxP3_kme_ib_tuser_Dwen4 <= '1' ;
                  _zzM2L368_mdxP3_En <= _zzM2L368_mdxP3_EnNxt ;
                end if;
                _zzM2L368_mdxP3_kme_ib_tvalid_wr0 <= '1' ;
                _zzM2L368_mdxP3_kme_ib_tvalid_Dwen0 <= '1' ;
                _zzM2L368_mdxP3_En <= _zzM2L368_mdxP3_EnNxt ;
                _zzM2L368_mdxP3_kme_ib_tdata_wr2 <= tdata_ib_DUMMY22 ;
                _zzM2L368_mdxP3_kme_ib_tdata_Dwen2 <= '1' ;
                _zzM2L368_mdxP3_En <= _zzM2L368_mdxP3_EnNxt ;
                _zyGfifoF19_L412_data_0 <= tstrb_ib_DUMMY24 ;
                _zyGfifoF19_L412_req_0 <= boolean_to_std
                (_zyGfifo__gfdL412_17_P0_m2_gfOff = _zyGfifoF19_L412_req_0) ;
                _zzM2L368_mdxP3_kme_ib_tstrb_wr3 <= tstrb_ib_DUMMY24 ;
                _zzM2L368_mdxP3_kme_ib_tstrb_Dwen3 <= '1' ;
                _zzM2L368_mdxP3_En <= _zzM2L368_mdxP3_EnNxt ;
              end if;
              _zyL368_meState4 <= "1" ;
              DUMMY77 := '0' ;
            end if;
          end if;
          if (DUMMY77 = '1') then
            _zyL368_meState4 <= "0" ;
          end if;
        when  "1"  =>
          _zyL368_meState4 <= "0" ;
        when others => null ;
      end case;
    end if ;
    _zygsfis_ib_service_data_rptr <= transport
     _zygsfis_ib_service_data_rptr_DUMMY19;
    _zygsfis_ib_service_data_space <= _zygsfis_ib_service_data_space_DUMMY20;
    _zyL370_tfiRv18 <= _zyL370_tfiRv18_DUMMY21;
    tdata_ib <= tdata_ib_DUMMY22;
    tuser_string_ib <= tuser_string_ib_DUMMY23;
    tstrb_ib <= tstrb_ib_DUMMY24;
    str_get_ib <= str_get_ib_DUMMY25;
    retval_ib <= retval_ib_DUMMY26;
    _zyGfifoF0_L368_s2_req_4 <= _zyGfifoF0_L368_s2_req_4_DUMMY27;
    _zyL372_tfiRv5 <= _zyL372_tfiRv5_DUMMY28;
    user_string_ib <= user_string_ib_DUMMY29;
    saw_mega <= saw_mega_DUMMY30;
    saw_guid_tlv <= saw_guid_tlv_DUMMY31;
    mega_tlv_word_count <= mega_tlv_word_count_DUMMY32;
    have_guid_tlv <= have_guid_tlv_DUMMY33;
    _zyL406_tfiRv6 <= _zyL406_tfiRv6_DUMMY34;
  end process ;

  process --:o1627
  (clk)
    variable _zzM2L439_mdxP4_error_cntr_wr0_DUMMY35 : integer ;
    variable DUMMY86 : std_logic ;
    variable DUMMY87 : std_logic_vector(63 downto 0) ;
    variable DUMMY88 : std_logic_vector(31 downto 0) ;
    variable DUMMY89 : std_logic_vector(7 downto 0) ;
    variable DUMMY90 : std_logic_vector(31 downto 0) ;
    variable DUMMY91 : std_logic_vector(31 downto 0) ;
    variable DUMMY92 : std_logic_vector(1 to 136) ;
    variable _zygsfis_ob_service_data_rptr_DUMMY36 : std_logic_vector(4 downto 0
    ) ;
    variable _zygsfis_ob_service_data_space_DUMMY37 : std_logic_vector(4 downto
     0) ;
    variable _zyL441_tfiRv19_DUMMY38 : integer ;
    variable tdata_ob_DUMMY39 : std_logic_vector(63 downto 0) ;
    variable tuser_string_ob_DUMMY40 : std_logic_vector(31 downto 0) ;
    variable tstrb_ob_DUMMY41 : std_logic_vector(7 downto 0) ;
    variable str_get_ob_DUMMY42 : std_logic_vector(31 downto 0) ;
    variable retval_ob_DUMMY43 : integer ;
    variable DUMMY93 : std_logic_vector(31 downto 0) ;
    variable _zyGfifoF0_L439_s2_req_5_DUMMY44 : std_logic ;
    variable _zyL443_tfiRv7_DUMMY45 : std_logic_vector(24 downto 0) ;
    variable user_string_ob_DUMMY46 : std_logic_vector(24 downto 0) ;
    variable watchdog_timer_DUMMY47 : integer ;
    variable tlast_DUMMY48 : std_logic ;
    variable ignore_compare_result_DUMMY49 : std_logic ;
    variable _zyGfifoF25_L460_req_0_DUMMY50 : std_logic ;
    variable DUMMY94 : std_logic_vector(24 downto 0) ;
    variable _zyGfifoF26_L530_req_0_DUMMY51 : std_logic ;
    variable _zyL462_tfiRv8_DUMMY52 : std_logic_vector(7 downto 0) ;
    variable tuser_DUMMY53 : std_logic_vector(7 downto 0) ;
    variable saw_stats_DUMMY54 : std_logic ;
    variable _zyGfifoF27_L480_req_0_DUMMY55 : std_logic ;
    variable _zyGfifoF28_L482_req_0_DUMMY56 : std_logic ;
    variable _zyGfifoF29_L487_req_0_DUMMY57 : std_logic ;
    variable _zyGfifoF30_L491_req_0_DUMMY58 : std_logic ;
    variable _zyGfifoF31_L496_req_0_DUMMY59 : std_logic ;
    variable DUMMY95 : std_logic_vector(24 downto 0) ;
  begin
    if (clk'event and clk = '1') then
      _zzM2L439_mdxP4_error_cntr_Dwen0 <= '0' ;
      _zzM2L439_mdxP4_error_cntr_wr0_DUMMY35 := error_cntr ;
      DUMMY86 := '1' ;

      case _zyL439_meState8 is
        when  "00"  =>
          if (ready_ob = '1') then
            DUMMY91 := "00000000000000000000000000000000" ;
            if (_zygsfis_ob_service_data_rptr_DUMMY36 /=
             _zygsfis_ob_service_data_wptr) then
              DUMMY91(0) := '1' ;
              DUMMY92 := _zygsfis_ob_service_data_fifo(conv_integer
              (_zygsfis_ob_service_data_rptr_DUMMY36)) ;
              DUMMY90 := DUMMY92(105 to 136) ;
              DUMMY89 := DUMMY92(97 to 104) ;
              DUMMY88 := DUMMY92(65 to 96) ;
              DUMMY87 := DUMMY92(1 to 64) ;
              _zygsfis_ob_service_data_rptr_DUMMY36 := ext((ext
              (_zygsfis_ob_service_data_rptr_DUMMY36,32) + std_logic_vector'
              ("00000000000000000000000000000001")),5) ;
              _zygsfis_ob_service_data_space_DUMMY37 := ext((ext
              (_zygsfis_ob_service_data_space_DUMMY37,32) + std_logic_vector'
              ("00000000000000000000000000000001")),5) ;
            end if;
            DUMMY91(1) := (boolean_to_std(_zygsfis_ob_service_data_rptr_DUMMY36
             = _zygsfis_ob_service_data_wptr) and _zygsfis_ob_service_data_eos)
             ;
            if (not(DUMMY91(1)) = '1') then
              if (_zygsfis_ob_service_data_req = _zygsfis_ob_service_data_ack)
               then
                _zygsfis_ob_service_data_space_DUMMY37 := not(
                (_zygsfis_ob_service_data_wptr -
                 _zygsfis_ob_service_data_rptr_DUMMY36)) ;
              end if;
              if (ext(_zygsfis_ob_service_data_space_DUMMY37,32) >=
               std_logic_vector'("00000000000000000000000000001000")) then
                _zygsfis_ob_service_data_req <= ext((ext
                (_zygsfis_ob_service_data_req,32) + std_logic_vector'
                ("00000000000000000000000000000001")),5) ;
                _zyGfifoF20_L209_data_0 <= ext
                (_zygsfis_ob_service_data_space_DUMMY37,32) ;
                _zyGfifoF20_L209_req_0 <= boolean_to_std
                (_zyGfifo_ob_service_data_2_zyprefetch_m2_gfOff =
                 _zyGfifoF20_L209_req_0) ;
                _zygsfis_ob_service_data_space_DUMMY37 := std_logic_vector'
                ("00000") ;
              end if;
            end if;
            _zyL441_tfiRv19_DUMMY38 := conv_integer(DUMMY91) ;
            tdata_ob_DUMMY39 := DUMMY87 ;
            tuser_string_ob_DUMMY40 := DUMMY88 ;
            tstrb_ob_DUMMY41 := DUMMY89 ;
            str_get_ob_DUMMY42 := DUMMY90 ;
            retval_ob_DUMMY43 := _zyL441_tfiRv19_DUMMY38 ;
            DUMMY93 := tuser_string_ob_DUMMY40 ;
            if (DUMMY93 = std_logic_vector'("00000000000000000000000000001011"))
             then
              _zyGfifoF0_L439_s2_cbid_5 <= _zyGfifo__gfdL519_16_P0_m2_cbid ;
              _zyGfifoF0_L439_s2_req_5_DUMMY44 := boolean_to_std
              (_zyGfifo__gfdL519_16_P0_m2_gfOff =
               _zyGfifoF0_L439_s2_req_5_DUMMY44) ;
              _zyL443_tfiRv7_DUMMY45 := "0010100110110111101010100" ;
            elsif (DUMMY93 = std_logic_vector'
            ("00000000000000000000000000001010")) then
              _zyGfifoF0_L439_s2_cbid_5 <= _zyGfifo__gfdL522_15_P0_m2_cbid ;
              _zyGfifoF0_L439_s2_req_5_DUMMY44 := boolean_to_std
              (_zyGfifo__gfdL522_15_P0_m2_gfOff =
               _zyGfifoF0_L439_s2_req_5_DUMMY44) ;
              _zyL443_tfiRv7_DUMMY45 := "0010001010110111101010100" ;
            else
              _zyL443_tfiRv7_DUMMY45 := "0000000000000000000000000" ;
            end if;
            user_string_ob_DUMMY46 := _zyL443_tfiRv7_DUMMY45 ;
            _zyGfifoF23_L444_data_0 <= ext(user_string_ob_DUMMY46,32) ;
            _zyGfifoF23_L444_req_0 <= boolean_to_std
            (_zyGfifo__gfdL444_14_P0_m2_gfOff = _zyGfifoF23_L444_req_0) ;
            if (retval_ob_DUMMY43 = 1) then
              _zyGfifoF24_L446_data_0(135 downto 72) <= tdata_ob_DUMMY39 ;
              _zyGfifoF24_L446_data_0(71 downto 40) <= tuser_string_ob_DUMMY40 ;
              _zyGfifoF24_L446_data_0(39 downto 32) <= tstrb_ob_DUMMY41 ;
              _zyGfifoF24_L446_data_0(31 downto 0) <= str_get_ob_DUMMY42 ;
              _zyGfifoF24_L446_req_0 <= boolean_to_std
              (_zyGfifo__gfdL446_13_P0_m2_gfOff = _zyGfifoF24_L446_req_0) ;
              if (kme_ob_tvalid = '0') then
                _zyL439_meState8 <= "01" ;
                DUMMY86 := '0' ;
              end if;
              if (DUMMY86 = '1') then
                watchdog_timer_DUMMY47 := 0 ;
                tlast_DUMMY48 := '0' ;
                ignore_compare_result_DUMMY49 := '0' ;
                _zyGfifoF25_L460_data_0 <= kme_ob_tdata ;
                _zyGfifoF25_L460_req_0_DUMMY50 := boolean_to_std
                (_zyGfifo__gfdL460_12_P0_m2_gfOff =
                 _zyGfifoF25_L460_req_0_DUMMY50) ;
                if (str_get_ob_DUMMY42 = std_logic_vector'
                ("00000000000000000000000000000011")) then
                  DUMMY94 := user_string_ob_DUMMY46 ;
                  _zyGfifoF26_L530_data_0 <= ext(DUMMY94,32) ;
                  _zyGfifoF26_L530_req_0_DUMMY51 := boolean_to_std
                  (_zyGfifo__gfdL530_11_P0_m2_gfOff =
                   _zyGfifoF26_L530_req_0_DUMMY51) ;
                  if (DUMMY94 = std_logic_vector'("0010100110110111101010100"))
                   then
                    _zyL462_tfiRv8_DUMMY52 := "00000001" ;
                  elsif (DUMMY94 = std_logic_vector'("0010001010110111101010100"
                  )) then
                    _zyL462_tfiRv8_DUMMY52 := "00000010" ;
                  else
                    _zyL462_tfiRv8_DUMMY52 := "00000011" ;
                  end if;
                  tuser_DUMMY53 := _zyL462_tfiRv8_DUMMY52 ;
                  if ((user_string_ob_DUMMY46 = std_logic_vector'
                  ("0010100110110111101010100") and tdata_ob_DUMMY39(7 downto 0)
                   = std_logic_vector'("00001001"))) then
                    saw_cqe <= '1' ;
                  end if;
                  if (user_string_ob_DUMMY46 = std_logic_vector'
                  ("0010001010110111101010100")) then
                    tlast_DUMMY48 := '1' ;
                    saw_cqe <= '0' ;
                  end if;
                  if ((user_string_ob_DUMMY46 = std_logic_vector'
                  ("0010100110110111101010100") and tdata_ob_DUMMY39(7 downto 0)
                   = std_logic_vector'("00001000"))) then
                    saw_stats_DUMMY54 := '1' ;
                  end if;
                  if ((user_string_ob_DUMMY46 = std_logic_vector'
                  ("0010001010110111101010100") and saw_stats_DUMMY54 = '1'))
                   then
                    ignore_compare_result_DUMMY49 := '1' ;
                    saw_stats_DUMMY54 := '0' ;
                  end if;
                else
                  tuser_DUMMY53 := "00000000" ;
                end if;
                _zyGfifoF27_L480_data_0 <= tuser_DUMMY53 ;
                _zyGfifoF27_L480_req_0_DUMMY55 := boolean_to_std
                (_zyGfifo__gfdL480_10_P0_m2_gfOff =
                 _zyGfifoF27_L480_req_0_DUMMY55) ;
                if ((kme_ob_tdata /= tdata_ob_DUMMY39 and
                 ignore_compare_result_DUMMY49 = '0')) then
                  _zyGfifoF28_L482_data_0(127 downto 64) <= kme_ob_tdata ;
                  _zyGfifoF28_L482_data_0(63 downto 0) <= tdata_ob_DUMMY39 ;
                  _zyGfifoF28_L482_req_0_DUMMY56 := boolean_to_std
                  (_zyGfifo__gfdL482_9_P0_m2_gfOff =
                   _zyGfifoF28_L482_req_0_DUMMY56) ;
                  _zzM2L439_mdxP4_error_cntr_wr0_DUMMY35 := 
                  (_zzM2L439_mdxP4_error_cntr_wr0_DUMMY35 + 1) ;
                  _zzM2L439_mdxP4_error_cntr_Dwen0 <= '1' ;
                  _zzM2L439_mdxP4_En <= _zzM2L439_mdxP4_EnNxt ;
                end if;
                if (kme_ob_tuser /= tuser_DUMMY53) then
                  _zyGfifoF29_L487_data_0(15 downto 8) <= kme_ob_tuser ;
                  _zyGfifoF29_L487_data_0(7 downto 0) <= tuser_DUMMY53 ;
                  _zyGfifoF29_L487_req_0_DUMMY57 := boolean_to_std
                  (_zyGfifo__gfdL487_8_P0_m2_gfOff =
                   _zyGfifoF29_L487_req_0_DUMMY57) ;
                  _zzM2L439_mdxP4_error_cntr_wr0_DUMMY35 := 
                  (_zzM2L439_mdxP4_error_cntr_wr0_DUMMY35 + 1) ;
                  _zzM2L439_mdxP4_error_cntr_Dwen0 <= '1' ;
                  _zzM2L439_mdxP4_En <= _zzM2L439_mdxP4_EnNxt ;
                end if;
                if (kme_ob_tstrb /= tstrb_ob_DUMMY41) then
                  _zyGfifoF30_L491_data_0(15 downto 8) <= kme_ob_tstrb ;
                  _zyGfifoF30_L491_data_0(7 downto 0) <= tstrb_ob_DUMMY41 ;
                  _zyGfifoF30_L491_req_0_DUMMY58 := boolean_to_std
                  (_zyGfifo__gfdL491_7_P0_m2_gfOff =
                   _zyGfifoF30_L491_req_0_DUMMY58) ;
                  _zzM2L439_mdxP4_error_cntr_wr0_DUMMY35 := 
                  (_zzM2L439_mdxP4_error_cntr_wr0_DUMMY35 + 1) ;
                  _zzM2L439_mdxP4_error_cntr_Dwen0 <= '1' ;
                  _zzM2L439_mdxP4_En <= _zzM2L439_mdxP4_EnNxt ;
                end if;
                if (kme_ob_tlast /= tlast_DUMMY48) then
                  _zyGfifoF31_L496_data_0(8) <= kme_ob_tlast ;
                  _zyGfifoF31_L496_data_0(0) <= tlast_DUMMY48 ;
                  _zyGfifoF31_L496_req_0_DUMMY59 := boolean_to_std
                  (_zyGfifo__gfdL496_6_P0_m2_gfOff =
                   _zyGfifoF31_L496_req_0_DUMMY59) ;
                  _zzM2L439_mdxP4_error_cntr_wr0_DUMMY35 := 
                  (_zzM2L439_mdxP4_error_cntr_wr0_DUMMY35 + 1) ;
                  _zzM2L439_mdxP4_error_cntr_Dwen0 <= '1' ;
                  _zzM2L439_mdxP4_En <= _zzM2L439_mdxP4_EnNxt ;
                end if;
              end if;
            end if;
            if (DUMMY86 = '1') then
              _zyL439_meState8 <= "10" ;
              DUMMY86 := '0' ;
            end if;
          end if;
          if (DUMMY86 = '1') then
            _zyL439_meState8 <= "00" ;
          end if;
        when  "01"  =>
          watchdog_timer_DUMMY47 := (watchdog_timer_DUMMY47 + 1) ;
          if (watchdog_timer_DUMMY47 > 10000) then
            _zzM2L439_mdxP4_error_cntr_wr0_DUMMY35 := 
            (_zzM2L439_mdxP4_error_cntr_wr0_DUMMY35 + 1) ;
            _zzM2L439_mdxP4_error_cntr_Dwen0 <= '1' ;
            _zzM2L439_mdxP4_En <= _zzM2L439_mdxP4_EnNxt ;
            _zyictd_finish_L454_2 <= '1' ;
          end if;
          if (kme_ob_tvalid = '0') then
            _zyL439_meState8 <= "01" ;
            DUMMY86 := '0' ;
          end if;
          if (DUMMY86 = '1') then
            watchdog_timer_DUMMY47 := 0 ;
            tlast_DUMMY48 := '0' ;
            ignore_compare_result_DUMMY49 := '0' ;
            _zyGfifoF25_L460_data_0 <= kme_ob_tdata ;
            _zyGfifoF25_L460_req_0_DUMMY50 := boolean_to_std
            (_zyGfifo__gfdL460_12_P0_m2_gfOff = _zyGfifoF25_L460_req_0_DUMMY50)
             ;
            if (str_get_ob_DUMMY42 = std_logic_vector'
            ("00000000000000000000000000000011")) then
              DUMMY95 := user_string_ob_DUMMY46 ;
              _zyGfifoF26_L530_data_0 <= ext(DUMMY95,32) ;
              _zyGfifoF26_L530_req_0_DUMMY51 := boolean_to_std
              (_zyGfifo__gfdL530_11_P0_m2_gfOff = _zyGfifoF26_L530_req_0_DUMMY51
              ) ;
              if (DUMMY95 = std_logic_vector'("0010100110110111101010100")) then
                _zyL462_tfiRv8_DUMMY52 := "00000001" ;
              elsif (DUMMY95 = std_logic_vector'("0010001010110111101010100"))
               then
                _zyL462_tfiRv8_DUMMY52 := "00000010" ;
              else
                _zyL462_tfiRv8_DUMMY52 := "00000011" ;
              end if;
              tuser_DUMMY53 := _zyL462_tfiRv8_DUMMY52 ;
              if ((user_string_ob_DUMMY46 = std_logic_vector'
              ("0010100110110111101010100") and tdata_ob_DUMMY39(7 downto 0) =
               std_logic_vector'("00001001"))) then
                saw_cqe <= '1' ;
              end if;
              if (user_string_ob_DUMMY46 = std_logic_vector'
              ("0010001010110111101010100")) then
                tlast_DUMMY48 := '1' ;
                saw_cqe <= '0' ;
              end if;
              if ((user_string_ob_DUMMY46 = std_logic_vector'
              ("0010100110110111101010100") and tdata_ob_DUMMY39(7 downto 0) =
               std_logic_vector'("00001000"))) then
                saw_stats_DUMMY54 := '1' ;
              end if;
              if ((user_string_ob_DUMMY46 = std_logic_vector'
              ("0010001010110111101010100") and saw_stats_DUMMY54 = '1')) then
                ignore_compare_result_DUMMY49 := '1' ;
                saw_stats_DUMMY54 := '0' ;
              end if;
            else
              tuser_DUMMY53 := "00000000" ;
            end if;
            _zyGfifoF27_L480_data_0 <= tuser_DUMMY53 ;
            _zyGfifoF27_L480_req_0_DUMMY55 := boolean_to_std
            (_zyGfifo__gfdL480_10_P0_m2_gfOff = _zyGfifoF27_L480_req_0_DUMMY55)
             ;
            if ((kme_ob_tdata /= tdata_ob_DUMMY39 and
             ignore_compare_result_DUMMY49 = '0')) then
              _zyGfifoF28_L482_data_0(127 downto 64) <= kme_ob_tdata ;
              _zyGfifoF28_L482_data_0(63 downto 0) <= tdata_ob_DUMMY39 ;
              _zyGfifoF28_L482_req_0_DUMMY56 := boolean_to_std
              (_zyGfifo__gfdL482_9_P0_m2_gfOff = _zyGfifoF28_L482_req_0_DUMMY56)
               ;
              _zzM2L439_mdxP4_error_cntr_wr0_DUMMY35 := 
              (_zzM2L439_mdxP4_error_cntr_wr0_DUMMY35 + 1) ;
              _zzM2L439_mdxP4_error_cntr_Dwen0 <= '1' ;
              _zzM2L439_mdxP4_En <= _zzM2L439_mdxP4_EnNxt ;
            end if;
            if (kme_ob_tuser /= tuser_DUMMY53) then
              _zyGfifoF29_L487_data_0(15 downto 8) <= kme_ob_tuser ;
              _zyGfifoF29_L487_data_0(7 downto 0) <= tuser_DUMMY53 ;
              _zyGfifoF29_L487_req_0_DUMMY57 := boolean_to_std
              (_zyGfifo__gfdL487_8_P0_m2_gfOff = _zyGfifoF29_L487_req_0_DUMMY57)
               ;
              _zzM2L439_mdxP4_error_cntr_wr0_DUMMY35 := 
              (_zzM2L439_mdxP4_error_cntr_wr0_DUMMY35 + 1) ;
              _zzM2L439_mdxP4_error_cntr_Dwen0 <= '1' ;
              _zzM2L439_mdxP4_En <= _zzM2L439_mdxP4_EnNxt ;
            end if;
            if (kme_ob_tstrb /= tstrb_ob_DUMMY41) then
              _zyGfifoF30_L491_data_0(15 downto 8) <= kme_ob_tstrb ;
              _zyGfifoF30_L491_data_0(7 downto 0) <= tstrb_ob_DUMMY41 ;
              _zyGfifoF30_L491_req_0_DUMMY58 := boolean_to_std
              (_zyGfifo__gfdL491_7_P0_m2_gfOff = _zyGfifoF30_L491_req_0_DUMMY58)
               ;
              _zzM2L439_mdxP4_error_cntr_wr0_DUMMY35 := 
              (_zzM2L439_mdxP4_error_cntr_wr0_DUMMY35 + 1) ;
              _zzM2L439_mdxP4_error_cntr_Dwen0 <= '1' ;
              _zzM2L439_mdxP4_En <= _zzM2L439_mdxP4_EnNxt ;
            end if;
            if (kme_ob_tlast /= tlast_DUMMY48) then
              _zyGfifoF31_L496_data_0(8) <= kme_ob_tlast ;
              _zyGfifoF31_L496_data_0(0) <= tlast_DUMMY48 ;
              _zyGfifoF31_L496_req_0_DUMMY59 := boolean_to_std
              (_zyGfifo__gfdL496_6_P0_m2_gfOff = _zyGfifoF31_L496_req_0_DUMMY59)
               ;
              _zzM2L439_mdxP4_error_cntr_wr0_DUMMY35 := 
              (_zzM2L439_mdxP4_error_cntr_wr0_DUMMY35 + 1) ;
              _zzM2L439_mdxP4_error_cntr_Dwen0 <= '1' ;
              _zzM2L439_mdxP4_En <= _zzM2L439_mdxP4_EnNxt ;
            end if;
            _zyL439_meState8 <= "10" ;
          end if;
        when  "10"  =>
          _zyL439_meState8 <= "00" ;
        when others => null ;
      end case;
    end if ;
    _zzM2L439_mdxP4_error_cntr_wr0 <= transport
     _zzM2L439_mdxP4_error_cntr_wr0_DUMMY35;
    _zygsfis_ob_service_data_rptr <= _zygsfis_ob_service_data_rptr_DUMMY36;
    _zygsfis_ob_service_data_space <= _zygsfis_ob_service_data_space_DUMMY37;
    _zyL441_tfiRv19 <= _zyL441_tfiRv19_DUMMY38;
    tdata_ob <= tdata_ob_DUMMY39;
    tuser_string_ob <= tuser_string_ob_DUMMY40;
    tstrb_ob <= tstrb_ob_DUMMY41;
    str_get_ob <= str_get_ob_DUMMY42;
    retval_ob <= retval_ob_DUMMY43;
    _zyGfifoF0_L439_s2_req_5 <= _zyGfifoF0_L439_s2_req_5_DUMMY44;
    _zyL443_tfiRv7 <= _zyL443_tfiRv7_DUMMY45;
    user_string_ob <= user_string_ob_DUMMY46;
    watchdog_timer <= watchdog_timer_DUMMY47;
    tlast <= tlast_DUMMY48;
    ignore_compare_result <= ignore_compare_result_DUMMY49;
    _zyGfifoF25_L460_req_0 <= _zyGfifoF25_L460_req_0_DUMMY50;
    _zyGfifoF26_L530_req_0 <= _zyGfifoF26_L530_req_0_DUMMY51;
    _zyL462_tfiRv8 <= _zyL462_tfiRv8_DUMMY52;
    tuser <= tuser_DUMMY53;
    saw_stats <= saw_stats_DUMMY54;
    _zyGfifoF27_L480_req_0 <= _zyGfifoF27_L480_req_0_DUMMY55;
    _zyGfifoF28_L482_req_0 <= _zyGfifoF28_L482_req_0_DUMMY56;
    _zyGfifoF29_L487_req_0 <= _zyGfifoF29_L487_req_0_DUMMY57;
    _zyGfifoF30_L491_req_0 <= _zyGfifoF30_L491_req_0_DUMMY58;
    _zyGfifoF31_L496_req_0 <= _zyGfifoF31_L496_req_0_DUMMY59;
  end process ;

  process --:o2077
  (_zyM2L253_pbcMevClk12)
    variable seed_DUMMY60 : std_logic_vector(279 downto 0) ;
    variable testname_DUMMY61 : std_logic_vector(279 downto 0) ;
    variable _zyGfifoF0_L253_s4_req_6_DUMMY62 : std_logic ;
    variable _zyGfifoF1_L253_s2_req_7_DUMMY63 : std_logic ;
    variable _zyM2L273_pbcT0_DUMMY64 : std_logic_vector(31 downto 0) ;
    variable _zyM2L253_pbcEn14_DUMMY65 : std_logic ;
    variable _zyM2L286_pbcT1_DUMMY66 : std_logic_vector(31 downto 0) ;
    variable _zyM2L292_pbcT2_DUMMY67 : std_logic_vector(31 downto 0) ;
    variable _zyM2L299_pbcT3_DUMMY68 : std_logic_vector(31 downto 0) ;
  begin
    if (_zyM2L253_pbcMevClk12'event and _zyM2L253_pbcMevClk12 = '1') then
      _zzM2L253_mdxP5_error_cntr_Dwen0 <= '0' ;
      _zzM2L253_mdxP5_kme_ib_tvalid_Dwen1 <= '0' ;
      _zzM2L253_mdxP5_kme_ib_tlast_Dwen2 <= '0' ;
      _zzM2L253_mdxP5_kme_ib_tdata_Dwen3 <= '0' ;
      _zzM2L253_mdxP5_kme_ib_tstrb_Dwen4 <= '0' ;
      _zzM2L253_mdxP5_kme_ib_tuser_Dwen5 <= '0' ;

      case _zyM2L253_pbcFsm2_s is
        when  "000"  =>
          _zyM2L253_pbcCapEn5 <= '0' ;
          _zzM2L253_mdxP5_error_cntr_wr0 <= 0 ;
          _zzM2L253_mdxP5_error_cntr_Dwen0 <= '1' ;
          _zzM2L253_mdxP5_En <= _zzM2L253_mdxP5_EnNxt ;
          rst_n <= '0' ;
          if (_zyictd_sysfunc_11_L257_2 /= 0) then
            seed_DUMMY60 := _zyictd_sysfunc_36_L258_0 ;
            _zz_58_258_2 <= _zyictd_sysfunc_36_L258_1 ;
          else
            seed_DUMMY60 :=
             "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000110001"
             ;
          end if;
          if (_zyictd_sysfunc_11_L263_5 /= 0) then
            testname_DUMMY61 := _zyictd_sysfunc_36_L264_3 ;
            _zz_58_264_3 <= _zyictd_sysfunc_36_L264_4 ;
            _zyGfifoF0_L253_s4_cbid_6 <= _zyGfifo__gfdL265_5_P0_m2_cbid ;
            _zyGfifoF0_L253_s4_len_6 <= std_logic_vector'("000000010010") ;
            _zyGfifoF0_L253_s4_data_6 <= it_multiple_concat(std_logic'('0'),560)
             ;
            _zyGfifoF0_L253_s4_data_6(559 downto 280) <= testname_DUMMY61 ;
            _zyGfifoF0_L253_s4_data_6(279 downto 0) <= seed_DUMMY60 ;
            _zyGfifoF0_L253_s4_req_6_DUMMY62 := boolean_to_std
            (_zyGfifo__gfdL265_5_P0_m2_gfOff = _zyGfifoF0_L253_s4_req_6_DUMMY62)
             ;
          else
            testname_DUMMY61 :=
             "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001110101011011100110101101101110011011110111011101101110"
             ;
            _zyGfifoF0_L253_s4_cbid_6 <= _zyGfifo__gfdL268_4_P0_m2_cbid ;
            _zyGfifoF0_L253_s4_len_6 <= std_logic_vector'("000000010010") ;
            _zyGfifoF0_L253_s4_data_6 <= it_multiple_concat(std_logic'('0'),560)
             ;
            _zyGfifoF0_L253_s4_data_6(559 downto 280) <=
             "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001110101011011100110101101101110011011110111011101101110"
             ;
            _zyGfifoF0_L253_s4_data_6(279 downto 0) <= seed_DUMMY60 ;
            _zyGfifoF0_L253_s4_req_6_DUMMY62 := boolean_to_std
            (_zyGfifo__gfdL268_4_P0_m2_gfOff = _zyGfifoF0_L253_s4_req_6_DUMMY62)
             ;
          end if;
          _zyGfifoF1_L253_s2_cbid_7 <= _zyGfifo__gfdL271_3_P0_m2_cbid ;
          _zyGfifoF1_L253_s2_req_7_DUMMY63 := boolean_to_std
          (_zyGfifo__gfdL271_3_P0_m2_gfOff = _zyGfifoF1_L253_s2_req_7_DUMMY63) ;
          _zyM2L273_pbcT0_DUMMY64 := "00000000000000000000000001111101" ;
          _zyM2L274_pbcCapEn6 <= '1' ;
          _zyM2L253_pbcFsm2_s <= "001" ;
        when  "001"  =>
          _zyM2L253_pbcEn14_DUMMY65 := '1' ;
          _zyM2L274_pbcCapEn6 <= '0' ;
          _zyM2L273_pbcT0_DUMMY64 := (unsigned(_zyM2L273_pbcT0_DUMMY64) -
           std_logic_vector'("00000000000000000000000000000001")) ;
          if (unsigned(_zyM2L273_pbcT0_DUMMY64) > std_logic_vector'
          ("00000000000000000000000000000000")) then
            _zyM2L274_pbcCapEn6 <= '1' ;
            _zyM2L253_pbcFsm2_s <= "001" ;
            _zyM2L253_pbcEn14_DUMMY65 := '0' ;
          end if;
          if (_zyM2L253_pbcEn14_DUMMY65 = '1') then
            _zyGfifoF0_L253_s4_cbid_6 <= _zyGfifo__gfdL276_2_P0_m2_cbid ;
            _zyGfifoF0_L253_s4_len_6 <= std_logic_vector'("000000000000") ;
            _zyGfifoF0_L253_s4_data_6 <= it_multiple_concat(std_logic'('0'),560)
             ;
            _zyGfifoF0_L253_s4_req_6_DUMMY62 := boolean_to_std
            (_zyGfifo__gfdL276_2_P0_m2_gfOff = _zyGfifoF0_L253_s4_req_6_DUMMY62)
             ;
            kme_ib_tid <= "0" ;
            _zzM2L253_mdxP5_kme_ib_tvalid_wr1 <= '0' ;
            _zzM2L253_mdxP5_kme_ib_tvalid_Dwen1 <= '1' ;
            _zzM2L253_mdxP5_En <= _zzM2L253_mdxP5_EnNxt ;
            _zzM2L253_mdxP5_kme_ib_tlast_wr2 <= '0' ;
            _zzM2L253_mdxP5_kme_ib_tlast_Dwen2 <= '1' ;
            _zzM2L253_mdxP5_En <= _zzM2L253_mdxP5_EnNxt ;
            _zzM2L253_mdxP5_kme_ib_tdata_wr3 <=
             "0000000000000000000000000000000000000000000000000000000000000000"
             ;
            _zzM2L253_mdxP5_kme_ib_tdata_Dwen3 <= '1' ;
            _zzM2L253_mdxP5_En <= _zzM2L253_mdxP5_EnNxt ;
            _zzM2L253_mdxP5_kme_ib_tstrb_wr4 <= "00000000" ;
            _zzM2L253_mdxP5_kme_ib_tstrb_Dwen4 <= '1' ;
            _zzM2L253_mdxP5_En <= _zzM2L253_mdxP5_EnNxt ;
            _zzM2L253_mdxP5_kme_ib_tuser_wr5 <= "00000000" ;
            _zzM2L253_mdxP5_kme_ib_tuser_Dwen5 <= '1' ;
            _zzM2L253_mdxP5_En <= _zzM2L253_mdxP5_EnNxt ;
            kme_ob_tready <= '1' ;
            _zyM2L286_pbcT1_DUMMY66 := "00000000000000000000000000111111" ;
            _zyM2L287_pbcCapEn7 <= '1' ;
            _zyM2L253_pbcFsm2_s <= "010" ;
          end if;
        when  "010"  =>
          _zyM2L253_pbcEn14_DUMMY65 := '1' ;
          _zyM2L287_pbcCapEn7 <= '0' ;
          _zyM2L286_pbcT1_DUMMY66 := (unsigned(_zyM2L286_pbcT1_DUMMY66) -
           std_logic_vector'("00000000000000000000000000000001")) ;
          if (unsigned(_zyM2L286_pbcT1_DUMMY66) > std_logic_vector'
          ("00000000000000000000000000000000")) then
            _zyM2L287_pbcCapEn7 <= '1' ;
            _zyM2L253_pbcFsm2_s <= "010" ;
            _zyM2L253_pbcEn14_DUMMY65 := '0' ;
          end if;
          if (_zyM2L253_pbcEn14_DUMMY65 = '1') then
            _zyGfifoF1_L253_s2_cbid_7 <= _zyGfifo__gfdL289_1_P0_m2_cbid ;
            _zyGfifoF1_L253_s2_req_7_DUMMY63 := boolean_to_std
            (_zyGfifo__gfdL289_1_P0_m2_gfOff = _zyGfifoF1_L253_s2_req_7_DUMMY63)
             ;
            rst_n <= '1' ;
            _zyM2L292_pbcT2_DUMMY67 := "00000000000000000000000001111101" ;
            _zyM2L293_pbcCapEn8 <= '1' ;
            _zyM2L253_pbcFsm2_s <= "011" ;
          end if;
        when  "011"  =>
          _zyM2L253_pbcEn14_DUMMY65 := '1' ;
          _zyM2L293_pbcCapEn8 <= '0' ;
          _zyM2L292_pbcT2_DUMMY67 := (unsigned(_zyM2L292_pbcT2_DUMMY67) -
           std_logic_vector'("00000000000000000000000000000001")) ;
          if (unsigned(_zyM2L292_pbcT2_DUMMY67) > std_logic_vector'
          ("00000000000000000000000000000000")) then
            _zyM2L293_pbcCapEn8 <= '1' ;
            _zyM2L253_pbcFsm2_s <= "011" ;
            _zyM2L253_pbcEn14_DUMMY65 := '0' ;
          end if;
          if (_zyM2L253_pbcEn14_DUMMY65 = '1') then
            _zyM2L295_pbcCapEn9 <= '1' ;
            _zyM2L253_pbcFsm2_s <= "100" ;
          end if;
        when  "100"  =>
          _zyM2L295_pbcCapEn9 <= '0' ;
          config_ready <= '1' ;
          _zyM2L364_pbcCapEn10 <= '1' ;
          _zyM2L253_pbcFsm2_s <= "101" ;
        when  "101"  =>
          _zyM2L364_pbcCapEn10 <= '0' ;
          _zyGfifoF0_L253_s4_cbid_6 <= _zyGfifo__gfdL365_0_P0_m2_cbid ;
          _zyGfifoF0_L253_s4_len_6 <= std_logic_vector'("000000000000") ;
          _zyGfifoF0_L253_s4_data_6 <= it_multiple_concat(std_logic'('0'),560) ;
          _zyGfifoF0_L253_s4_req_6_DUMMY62 := boolean_to_std
          (_zyGfifo__gfdL365_0_P0_m2_gfOff = _zyGfifoF0_L253_s4_req_6_DUMMY62) ;
          config_done <= '1' ;
          _zyM2L299_pbcT3_DUMMY68 := "00000000000000000000000000001101" ;
          _zyM2L300_pbcCapEn11 <= '1' ;
          _zyM2L253_pbcFsm2_s <= "110" ;
        when  "110"  =>
          _zyM2L253_pbcEn14_DUMMY65 := '1' ;
          _zyM2L300_pbcCapEn11 <= '0' ;
          _zyM2L299_pbcT3_DUMMY68 := (unsigned(_zyM2L299_pbcT3_DUMMY68) -
           std_logic_vector'("00000000000000000000000000000001")) ;
          if (unsigned(_zyM2L299_pbcT3_DUMMY68) > std_logic_vector'
          ("00000000000000000000000000000000")) then
            _zyM2L300_pbcCapEn11 <= '1' ;
            _zyM2L253_pbcFsm2_s <= "110" ;
            _zyM2L253_pbcEn14_DUMMY65 := '0' ;
          end if;
          if (_zyM2L253_pbcEn14_DUMMY65 = '1') then
            _zyixc_port_0_0_ack <= not(_zyixc_port_0_0_ack) ;
            _zyM2L253_pbcCapEn5 <= '1' ;
            _zyM2L253_pbcFsm2_s <= "000" ;
          end if;
        when others => null ;
      end case;
    end if ;
    seed <= transport seed_DUMMY60;
    testname <= testname_DUMMY61;
    _zyGfifoF0_L253_s4_req_6 <= _zyGfifoF0_L253_s4_req_6_DUMMY62;
    _zyGfifoF1_L253_s2_req_7 <= _zyGfifoF1_L253_s2_req_7_DUMMY63;
    _zyM2L273_pbcT0 <= _zyM2L273_pbcT0_DUMMY64;
    _zyM2L253_pbcEn14 <= _zyM2L253_pbcEn14_DUMMY65;
    _zyM2L286_pbcT1 <= _zyM2L286_pbcT1_DUMMY66;
    _zyM2L292_pbcT2 <= _zyM2L292_pbcT2_DUMMY67;
    _zyM2L299_pbcT3 <= _zyM2L299_pbcT3_DUMMY68;
  end process ;

  process --:o2331
  (_zySfifoF0_call)
    variable DUMMY96 : integer ;
  begin
    if (_zySfifoF0_call'event and _zySfifoF0_call = '1') then
      DUMMY96 := conv_integer(_zySfifoF0_iarg) ;
      _zygsfis_get_config_data_ack <= ext((ext(_zygsfis_get_config_data_ack,32)
       + std_logic_vector'("00000000000000000000000000000001")),5) ;
      _zygsfis_get_config_data_eos <= integer_to_std(DUMMY96) ;
    end if ;
  end process ;

  process --:o2346
  (_zySfifoF1_call)
    variable DUMMY97 : std_logic_vector(7 downto 0) ;
    variable DUMMY98 : std_logic_vector(31 downto 0) ;
    variable DUMMY99 : std_logic_vector(31 downto 0) ;
  begin
    if (_zySfifoF1_call'event and _zySfifoF1_call = '1') then
      DUMMY97 := _zySfifoF1_iarg(7 downto 0) ;
      DUMMY98 := _zySfifoF1_iarg(39 downto 8) ;
      DUMMY99 := _zySfifoF1_iarg(71 downto 40) ;
      _zygsfis_get_config_data_fifo(conv_integer(_zygsfis_get_config_data_wptr))
       <= std_logic_vector'(DUMMY97 & DUMMY98 & DUMMY99) ;
      _zygsfis_get_config_data_wptr <= ext((ext(_zygsfis_get_config_data_wptr,32
      ) + std_logic_vector'("00000000000000000000000000000001")),5) ;
    end if ;
  end process ;

  process --:o2365
  (_zySfifoF2_call)
    variable DUMMY100 : integer ;
  begin
    if (_zySfifoF2_call'event and _zySfifoF2_call = '1') then
      DUMMY100 := conv_integer(_zySfifoF2_iarg) ;
      _zygsfis_ib_service_data_ack <= ext((ext(_zygsfis_ib_service_data_ack,32)
       + std_logic_vector'("00000000000000000000000000000001")),5) ;
      _zygsfis_ib_service_data_eos <= integer_to_std(DUMMY100) ;
    end if ;
  end process ;

  process --:o2380
  (_zySfifoF3_call)
    variable DUMMY101 : std_logic_vector(63 downto 0) ;
    variable DUMMY102 : std_logic_vector(31 downto 0) ;
    variable DUMMY103 : std_logic_vector(7 downto 0) ;
    variable DUMMY104 : std_logic_vector(31 downto 0) ;
  begin
    if (_zySfifoF3_call'event and _zySfifoF3_call = '1') then
      DUMMY101 := _zySfifoF3_iarg(63 downto 0) ;
      DUMMY102 := _zySfifoF3_iarg(95 downto 64) ;
      DUMMY103 := _zySfifoF3_iarg(103 downto 96) ;
      DUMMY104 := _zySfifoF3_iarg(135 downto 104) ;
      _zygsfis_ib_service_data_fifo(conv_integer(_zygsfis_ib_service_data_wptr))
       <= std_logic_vector'(DUMMY101 & DUMMY102 & DUMMY103 & DUMMY104) ;
      _zygsfis_ib_service_data_wptr <= ext((ext(_zygsfis_ib_service_data_wptr,32
      ) + std_logic_vector'("00000000000000000000000000000001")),5) ;
    end if ;
  end process ;

  process --:o2401
  (_zySfifoF4_call)
    variable DUMMY105 : integer ;
  begin
    if (_zySfifoF4_call'event and _zySfifoF4_call = '1') then
      DUMMY105 := conv_integer(_zySfifoF4_iarg) ;
      _zygsfis_ob_service_data_ack <= ext((ext(_zygsfis_ob_service_data_ack,32)
       + std_logic_vector'("00000000000000000000000000000001")),5) ;
      _zygsfis_ob_service_data_eos <= integer_to_std(DUMMY105) ;
    end if ;
  end process ;

  process --:o2416
  (_zySfifoF5_call)
    variable DUMMY106 : std_logic_vector(63 downto 0) ;
    variable DUMMY107 : std_logic_vector(31 downto 0) ;
    variable DUMMY108 : std_logic_vector(7 downto 0) ;
    variable DUMMY109 : std_logic_vector(31 downto 0) ;
  begin
    if (_zySfifoF5_call'event and _zySfifoF5_call = '1') then
      DUMMY106 := _zySfifoF5_iarg(63 downto 0) ;
      DUMMY107 := _zySfifoF5_iarg(95 downto 64) ;
      DUMMY108 := _zySfifoF5_iarg(103 downto 96) ;
      DUMMY109 := _zySfifoF5_iarg(135 downto 104) ;
      _zygsfis_ob_service_data_fifo(conv_integer(_zygsfis_ob_service_data_wptr))
       <= std_logic_vector'(DUMMY106 & DUMMY107 & DUMMY108 & DUMMY109) ;
      _zygsfis_ob_service_data_wptr <= ext((ext(_zygsfis_ob_service_data_wptr,32
      ) + std_logic_vector'("00000000000000000000000000000001")),5) ;
    end if ;
  end process ;

  process --:o2437
  (_zzM2_bcBehEvalClk)
  begin
    if (_zzM2_bcBehEvalClk'event and _zzM2_bcBehEvalClk = '1') then
      if (((_zyM2L324_pbcWait4)='1' or (_zyM2L253_pbcWait12)='1')) then
        if (nand_reduce(_zzM2_bcBehEval(30 downto 0)) = '1') then
          _zzM2_bcBehEval(30 downto 0) <= (_zzM2_bcBehEval(30 downto 0) +
           std_logic_vector'("0000000000000000000000000000001")) ;
        end if;
        _zzM2_bcBehEval(31) <= _zzM2_bcBehHalt ;
      end if;
    end if ;
  end process ;

  process --:o2448
  (*)
    variable _zzM2L19_error_cntr_mdxTmp2_DUMMY69 : integer ;
    variable _zzM2L324_mdxP2_error_cntr_DwenOn0_DUMMY70 : std_logic ;
    variable _zzM2L439_mdxP4_error_cntr_DwenOn0_DUMMY71 : std_logic ;
    variable _zzM2L253_mdxP5_error_cntr_DwenOn0_DUMMY72 : std_logic ;
  begin
    _zzM2L19_error_cntr_mdxTmp2_DUMMY69 := _zzM2L19_error_cntr_mdxTmp2;
    _zzM2L324_mdxP2_error_cntr_DwenOn0_DUMMY70 :=
     _zzM2L324_mdxP2_error_cntr_DwenOn0;
    _zzM2L439_mdxP4_error_cntr_DwenOn0_DUMMY71 :=
     _zzM2L439_mdxP4_error_cntr_DwenOn0;
    _zzM2L253_mdxP5_error_cntr_DwenOn0_DUMMY72 :=
     _zzM2L253_mdxP5_error_cntr_DwenOn0;
    _zzM2L19_error_cntr_mdxTmp2_DUMMY69 := _zzerror_cntr_M2L19_mdxSvLt6 ;
    _zzM2L324_mdxP2_error_cntr_DwenOn0_DUMMY70 := it_cond_op((_zzM2L324_mdxP2_On
    )='1',_zzM2L324_mdxP2_error_cntr_Dwen0,std_logic'('0')) ;
    _zzM2L19_error_cntr_mdxTmp2_DUMMY69 := it_cond_op(
    (_zzM2L324_mdxP2_error_cntr_DwenOn0_DUMMY70
    )='1',_zzM2L324_mdxP2_error_cntr_wr0,_zzM2L19_error_cntr_mdxTmp2_DUMMY69) ;
    _zzM2L439_mdxP4_error_cntr_DwenOn0_DUMMY71 := it_cond_op((_zzM2L439_mdxP4_On
    )='1',_zzM2L439_mdxP4_error_cntr_Dwen0,std_logic'('0')) ;
    _zzM2L19_error_cntr_mdxTmp2_DUMMY69 := it_cond_op(
    (_zzM2L439_mdxP4_error_cntr_DwenOn0_DUMMY71
    )='1',_zzM2L439_mdxP4_error_cntr_wr0,_zzM2L19_error_cntr_mdxTmp2_DUMMY69) ;
    _zzM2L253_mdxP5_error_cntr_DwenOn0_DUMMY72 := it_cond_op((_zzM2L253_mdxP5_On
    )='1',_zzM2L253_mdxP5_error_cntr_Dwen0,std_logic'('0')) ;
    _zzM2L19_error_cntr_mdxTmp2_DUMMY69 := it_cond_op(
    (_zzM2L253_mdxP5_error_cntr_DwenOn0_DUMMY72
    )='1',_zzM2L253_mdxP5_error_cntr_wr0,_zzM2L19_error_cntr_mdxTmp2_DUMMY69) ;
    if (_zzmdxOne = '1') then
      error_cntr <= _zzM2L19_error_cntr_mdxTmp2_DUMMY69 ;
    end if;
    _zzM2L19_error_cntr_mdxTmp2 <= transport
     _zzM2L19_error_cntr_mdxTmp2_DUMMY69;
    _zzM2L324_mdxP2_error_cntr_DwenOn0 <=
     _zzM2L324_mdxP2_error_cntr_DwenOn0_DUMMY70;
    _zzM2L439_mdxP4_error_cntr_DwenOn0 <=
     _zzM2L439_mdxP4_error_cntr_DwenOn0_DUMMY71;
    _zzM2L253_mdxP5_error_cntr_DwenOn0 <=
     _zzM2L253_mdxP5_error_cntr_DwenOn0_DUMMY72;
  end process ;

  process --:o2468
  (*)
    variable _zzM2L36_kme_ib_tvalid_mdxTmp0_DUMMY73 : std_logic ;
    variable _zzM2L306_mdxP0_kme_ib_tvalid_DwenOn0_DUMMY74 : std_logic ;
    variable _zzM2L368_mdxP3_kme_ib_tvalid_DwenOn0_DUMMY75 : std_logic ;
    variable _zzM2L253_mdxP5_kme_ib_tvalid_DwenOn1_DUMMY76 : std_logic ;
  begin
    _zzM2L36_kme_ib_tvalid_mdxTmp0_DUMMY73 := _zzM2L36_kme_ib_tvalid_mdxTmp0;
    _zzM2L306_mdxP0_kme_ib_tvalid_DwenOn0_DUMMY74 :=
     _zzM2L306_mdxP0_kme_ib_tvalid_DwenOn0;
    _zzM2L368_mdxP3_kme_ib_tvalid_DwenOn0_DUMMY75 :=
     _zzM2L368_mdxP3_kme_ib_tvalid_DwenOn0;
    _zzM2L253_mdxP5_kme_ib_tvalid_DwenOn1_DUMMY76 :=
     _zzM2L253_mdxP5_kme_ib_tvalid_DwenOn1;
    _zzM2L36_kme_ib_tvalid_mdxTmp0_DUMMY73 := _zzkme_ib_tvalid_M2L36_mdxSvLt7 ;
    _zzM2L306_mdxP0_kme_ib_tvalid_DwenOn0_DUMMY74 := it_cond_op(
    (_zzM2L306_mdxP0_On)='1',_zzM2L306_mdxP0_kme_ib_tvalid_Dwen0,std_logic'('0')
    ) ;
    _zzM2L36_kme_ib_tvalid_mdxTmp0_DUMMY73 := it_cond_op(
    (_zzM2L306_mdxP0_kme_ib_tvalid_DwenOn0_DUMMY74
    )='1',_zzM2L306_mdxP0_kme_ib_tvalid_wr0,_zzM2L36_kme_ib_tvalid_mdxTmp0_DUMMY73
    ) ;
    _zzM2L368_mdxP3_kme_ib_tvalid_DwenOn0_DUMMY75 := it_cond_op(
    (_zzM2L368_mdxP3_On)='1',_zzM2L368_mdxP3_kme_ib_tvalid_Dwen0,std_logic'('0')
    ) ;
    _zzM2L36_kme_ib_tvalid_mdxTmp0_DUMMY73 := it_cond_op(
    (_zzM2L368_mdxP3_kme_ib_tvalid_DwenOn0_DUMMY75
    )='1',_zzM2L368_mdxP3_kme_ib_tvalid_wr0,_zzM2L36_kme_ib_tvalid_mdxTmp0_DUMMY73
    ) ;
    _zzM2L253_mdxP5_kme_ib_tvalid_DwenOn1_DUMMY76 := it_cond_op(
    (_zzM2L253_mdxP5_On)='1',_zzM2L253_mdxP5_kme_ib_tvalid_Dwen1,std_logic'('0')
    ) ;
    _zzM2L36_kme_ib_tvalid_mdxTmp0_DUMMY73 := it_cond_op(
    (_zzM2L253_mdxP5_kme_ib_tvalid_DwenOn1_DUMMY76
    )='1',_zzM2L253_mdxP5_kme_ib_tvalid_wr1,_zzM2L36_kme_ib_tvalid_mdxTmp0_DUMMY73
    ) ;
    if (_zzmdxOne = '1') then
      kme_ib_tvalid <= _zzM2L36_kme_ib_tvalid_mdxTmp0_DUMMY73 ;
    end if;
    _zzM2L36_kme_ib_tvalid_mdxTmp0 <= transport
     _zzM2L36_kme_ib_tvalid_mdxTmp0_DUMMY73;
    _zzM2L306_mdxP0_kme_ib_tvalid_DwenOn0 <=
     _zzM2L306_mdxP0_kme_ib_tvalid_DwenOn0_DUMMY74;
    _zzM2L368_mdxP3_kme_ib_tvalid_DwenOn0 <=
     _zzM2L368_mdxP3_kme_ib_tvalid_DwenOn0_DUMMY75;
    _zzM2L253_mdxP5_kme_ib_tvalid_DwenOn1 <=
     _zzM2L253_mdxP5_kme_ib_tvalid_DwenOn1_DUMMY76;
  end process ;

  process --:o2488
  (*)
    variable _zzM2L37_kme_ib_tlast_mdxTmp1_DUMMY77 : std_logic ;
    variable _zzM2L306_mdxP0_kme_ib_tlast_DwenOn1_DUMMY78 : std_logic ;
    variable _zzM2L368_mdxP3_kme_ib_tlast_DwenOn1_DUMMY79 : std_logic ;
    variable _zzM2L253_mdxP5_kme_ib_tlast_DwenOn2_DUMMY80 : std_logic ;
  begin
    _zzM2L37_kme_ib_tlast_mdxTmp1_DUMMY77 := _zzM2L37_kme_ib_tlast_mdxTmp1;
    _zzM2L306_mdxP0_kme_ib_tlast_DwenOn1_DUMMY78 :=
     _zzM2L306_mdxP0_kme_ib_tlast_DwenOn1;
    _zzM2L368_mdxP3_kme_ib_tlast_DwenOn1_DUMMY79 :=
     _zzM2L368_mdxP3_kme_ib_tlast_DwenOn1;
    _zzM2L253_mdxP5_kme_ib_tlast_DwenOn2_DUMMY80 :=
     _zzM2L253_mdxP5_kme_ib_tlast_DwenOn2;
    _zzM2L37_kme_ib_tlast_mdxTmp1_DUMMY77 := _zzkme_ib_tlast_M2L37_mdxSvLt8 ;
    _zzM2L306_mdxP0_kme_ib_tlast_DwenOn1_DUMMY78 := it_cond_op(
    (_zzM2L306_mdxP0_On)='1',_zzM2L306_mdxP0_kme_ib_tlast_Dwen1,std_logic'('0'))
     ;
    _zzM2L37_kme_ib_tlast_mdxTmp1_DUMMY77 := it_cond_op(
    (_zzM2L306_mdxP0_kme_ib_tlast_DwenOn1_DUMMY78
    )='1',_zzM2L306_mdxP0_kme_ib_tlast_wr1,_zzM2L37_kme_ib_tlast_mdxTmp1_DUMMY77
    ) ;
    _zzM2L368_mdxP3_kme_ib_tlast_DwenOn1_DUMMY79 := it_cond_op(
    (_zzM2L368_mdxP3_On)='1',_zzM2L368_mdxP3_kme_ib_tlast_Dwen1,std_logic'('0'))
     ;
    _zzM2L37_kme_ib_tlast_mdxTmp1_DUMMY77 := it_cond_op(
    (_zzM2L368_mdxP3_kme_ib_tlast_DwenOn1_DUMMY79
    )='1',_zzM2L368_mdxP3_kme_ib_tlast_wr1,_zzM2L37_kme_ib_tlast_mdxTmp1_DUMMY77
    ) ;
    _zzM2L253_mdxP5_kme_ib_tlast_DwenOn2_DUMMY80 := it_cond_op(
    (_zzM2L253_mdxP5_On)='1',_zzM2L253_mdxP5_kme_ib_tlast_Dwen2,std_logic'('0'))
     ;
    _zzM2L37_kme_ib_tlast_mdxTmp1_DUMMY77 := it_cond_op(
    (_zzM2L253_mdxP5_kme_ib_tlast_DwenOn2_DUMMY80
    )='1',_zzM2L253_mdxP5_kme_ib_tlast_wr2,_zzM2L37_kme_ib_tlast_mdxTmp1_DUMMY77
    ) ;
    if (_zzmdxOne = '1') then
      kme_ib_tlast <= _zzM2L37_kme_ib_tlast_mdxTmp1_DUMMY77 ;
    end if;
    _zzM2L37_kme_ib_tlast_mdxTmp1 <= transport
     _zzM2L37_kme_ib_tlast_mdxTmp1_DUMMY77;
    _zzM2L306_mdxP0_kme_ib_tlast_DwenOn1 <=
     _zzM2L306_mdxP0_kme_ib_tlast_DwenOn1_DUMMY78;
    _zzM2L368_mdxP3_kme_ib_tlast_DwenOn1 <=
     _zzM2L368_mdxP3_kme_ib_tlast_DwenOn1_DUMMY79;
    _zzM2L253_mdxP5_kme_ib_tlast_DwenOn2 <=
     _zzM2L253_mdxP5_kme_ib_tlast_DwenOn2_DUMMY80;
  end process ;

  process --:o2508
  (*)
    variable _zzM2L33_kme_ib_tdata_mdxTmp3_DUMMY81 : std_logic_vector(63 downto
     0) ;
    variable _zzM2L368_mdxP3_kme_ib_tdata_DwenOn2_DUMMY82 : std_logic ;
    variable _zzM2L253_mdxP5_kme_ib_tdata_DwenOn3_DUMMY83 : std_logic ;
  begin
    _zzM2L33_kme_ib_tdata_mdxTmp3_DUMMY81 := _zzM2L33_kme_ib_tdata_mdxTmp3;
    _zzM2L368_mdxP3_kme_ib_tdata_DwenOn2_DUMMY82 :=
     _zzM2L368_mdxP3_kme_ib_tdata_DwenOn2;
    _zzM2L253_mdxP5_kme_ib_tdata_DwenOn3_DUMMY83 :=
     _zzM2L253_mdxP5_kme_ib_tdata_DwenOn3;
    _zzM2L33_kme_ib_tdata_mdxTmp3_DUMMY81 := _zzkme_ib_tdata_M2L33_mdxSvLt9 ;
    _zzM2L368_mdxP3_kme_ib_tdata_DwenOn2_DUMMY82 := it_cond_op(
    (_zzM2L368_mdxP3_On)='1',_zzM2L368_mdxP3_kme_ib_tdata_Dwen2,std_logic'('0'))
     ;
    _zzM2L33_kme_ib_tdata_mdxTmp3_DUMMY81 := it_cond_op(
    (_zzM2L368_mdxP3_kme_ib_tdata_DwenOn2_DUMMY82
    )='1',_zzM2L368_mdxP3_kme_ib_tdata_wr2,_zzM2L33_kme_ib_tdata_mdxTmp3_DUMMY81
    ) ;
    _zzM2L253_mdxP5_kme_ib_tdata_DwenOn3_DUMMY83 := it_cond_op(
    (_zzM2L253_mdxP5_On)='1',_zzM2L253_mdxP5_kme_ib_tdata_Dwen3,std_logic'('0'))
     ;
    _zzM2L33_kme_ib_tdata_mdxTmp3_DUMMY81 := it_cond_op(
    (_zzM2L253_mdxP5_kme_ib_tdata_DwenOn3_DUMMY83
    )='1',_zzM2L253_mdxP5_kme_ib_tdata_wr3,_zzM2L33_kme_ib_tdata_mdxTmp3_DUMMY81
    ) ;
    if (_zzmdxOne = '1') then
      kme_ib_tdata <= _zzM2L33_kme_ib_tdata_mdxTmp3_DUMMY81 ;
    end if;
    _zzM2L33_kme_ib_tdata_mdxTmp3 <= transport
     _zzM2L33_kme_ib_tdata_mdxTmp3_DUMMY81;
    _zzM2L368_mdxP3_kme_ib_tdata_DwenOn2 <=
     _zzM2L368_mdxP3_kme_ib_tdata_DwenOn2_DUMMY82;
    _zzM2L253_mdxP5_kme_ib_tdata_DwenOn3 <=
     _zzM2L253_mdxP5_kme_ib_tdata_DwenOn3_DUMMY83;
  end process ;

  process --:o2526
  (*)
    variable _zzM2L34_kme_ib_tstrb_mdxTmp4_DUMMY84 : std_logic_vector(7 downto 0
    ) ;
    variable _zzM2L368_mdxP3_kme_ib_tstrb_DwenOn3_DUMMY85 : std_logic ;
    variable _zzM2L253_mdxP5_kme_ib_tstrb_DwenOn4_DUMMY86 : std_logic ;
  begin
    _zzM2L34_kme_ib_tstrb_mdxTmp4_DUMMY84 := _zzM2L34_kme_ib_tstrb_mdxTmp4;
    _zzM2L368_mdxP3_kme_ib_tstrb_DwenOn3_DUMMY85 :=
     _zzM2L368_mdxP3_kme_ib_tstrb_DwenOn3;
    _zzM2L253_mdxP5_kme_ib_tstrb_DwenOn4_DUMMY86 :=
     _zzM2L253_mdxP5_kme_ib_tstrb_DwenOn4;
    _zzM2L34_kme_ib_tstrb_mdxTmp4_DUMMY84 := _zzkme_ib_tstrb_M2L34_mdxSvLt10 ;
    _zzM2L368_mdxP3_kme_ib_tstrb_DwenOn3_DUMMY85 := it_cond_op(
    (_zzM2L368_mdxP3_On)='1',_zzM2L368_mdxP3_kme_ib_tstrb_Dwen3,std_logic'('0'))
     ;
    _zzM2L34_kme_ib_tstrb_mdxTmp4_DUMMY84 := it_cond_op(
    (_zzM2L368_mdxP3_kme_ib_tstrb_DwenOn3_DUMMY85
    )='1',_zzM2L368_mdxP3_kme_ib_tstrb_wr3,_zzM2L34_kme_ib_tstrb_mdxTmp4_DUMMY84
    ) ;
    _zzM2L253_mdxP5_kme_ib_tstrb_DwenOn4_DUMMY86 := it_cond_op(
    (_zzM2L253_mdxP5_On)='1',_zzM2L253_mdxP5_kme_ib_tstrb_Dwen4,std_logic'('0'))
     ;
    _zzM2L34_kme_ib_tstrb_mdxTmp4_DUMMY84 := it_cond_op(
    (_zzM2L253_mdxP5_kme_ib_tstrb_DwenOn4_DUMMY86
    )='1',_zzM2L253_mdxP5_kme_ib_tstrb_wr4,_zzM2L34_kme_ib_tstrb_mdxTmp4_DUMMY84
    ) ;
    if (_zzmdxOne = '1') then
      kme_ib_tstrb <= _zzM2L34_kme_ib_tstrb_mdxTmp4_DUMMY84 ;
    end if;
    _zzM2L34_kme_ib_tstrb_mdxTmp4 <= transport
     _zzM2L34_kme_ib_tstrb_mdxTmp4_DUMMY84;
    _zzM2L368_mdxP3_kme_ib_tstrb_DwenOn3 <=
     _zzM2L368_mdxP3_kme_ib_tstrb_DwenOn3_DUMMY85;
    _zzM2L253_mdxP5_kme_ib_tstrb_DwenOn4 <=
     _zzM2L253_mdxP5_kme_ib_tstrb_DwenOn4_DUMMY86;
  end process ;

  process --:o2544
  (*)
    variable _zzM2L35_kme_ib_tuser_mdxTmp5_DUMMY87 : std_logic_vector(7 downto 0
    ) ;
    variable _zzM2L368_mdxP3_kme_ib_tuser_DwenOn4_DUMMY88 : std_logic ;
    variable _zzM2L253_mdxP5_kme_ib_tuser_DwenOn5_DUMMY89 : std_logic ;
  begin
    _zzM2L35_kme_ib_tuser_mdxTmp5_DUMMY87 := _zzM2L35_kme_ib_tuser_mdxTmp5;
    _zzM2L368_mdxP3_kme_ib_tuser_DwenOn4_DUMMY88 :=
     _zzM2L368_mdxP3_kme_ib_tuser_DwenOn4;
    _zzM2L253_mdxP5_kme_ib_tuser_DwenOn5_DUMMY89 :=
     _zzM2L253_mdxP5_kme_ib_tuser_DwenOn5;
    _zzM2L35_kme_ib_tuser_mdxTmp5_DUMMY87 := _zzkme_ib_tuser_M2L35_mdxSvLt11 ;
    _zzM2L368_mdxP3_kme_ib_tuser_DwenOn4_DUMMY88 := it_cond_op(
    (_zzM2L368_mdxP3_On)='1',_zzM2L368_mdxP3_kme_ib_tuser_Dwen4,std_logic'('0'))
     ;
    _zzM2L35_kme_ib_tuser_mdxTmp5_DUMMY87 := it_cond_op(
    (_zzM2L368_mdxP3_kme_ib_tuser_DwenOn4_DUMMY88
    )='1',_zzM2L368_mdxP3_kme_ib_tuser_wr4,_zzM2L35_kme_ib_tuser_mdxTmp5_DUMMY87
    ) ;
    _zzM2L253_mdxP5_kme_ib_tuser_DwenOn5_DUMMY89 := it_cond_op(
    (_zzM2L253_mdxP5_On)='1',_zzM2L253_mdxP5_kme_ib_tuser_Dwen5,std_logic'('0'))
     ;
    _zzM2L35_kme_ib_tuser_mdxTmp5_DUMMY87 := it_cond_op(
    (_zzM2L253_mdxP5_kme_ib_tuser_DwenOn5_DUMMY89
    )='1',_zzM2L253_mdxP5_kme_ib_tuser_wr5,_zzM2L35_kme_ib_tuser_mdxTmp5_DUMMY87
    ) ;
    if (_zzmdxOne = '1') then
      kme_ib_tuser <= _zzM2L35_kme_ib_tuser_mdxTmp5_DUMMY87 ;
    end if;
    _zzM2L35_kme_ib_tuser_mdxTmp5 <= transport
     _zzM2L35_kme_ib_tuser_mdxTmp5_DUMMY87;
    _zzM2L368_mdxP3_kme_ib_tuser_DwenOn4 <=
     _zzM2L368_mdxP3_kme_ib_tuser_DwenOn4_DUMMY88;
    _zzM2L253_mdxP5_kme_ib_tuser_DwenOn5 <=
     _zzM2L253_mdxP5_kme_ib_tuser_DwenOn5_DUMMY89;
  end process ;
end module;
