architecture module of apb_xactor is
  -- quickturn multiple_driver_resolution
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

  component ixc_nba2BpD
    generic (
      WIDTH : integer := 1 ;
      RESET : integer := 0
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

  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic_vector(0 to 19) ;
  signal DUMMY3 : std_logic_vector(0 to 31) ;
  signal DUMMY4 : std_logic ;
  signal _zyL94_iscX1c0_s : std_logic ;
  -- quickturn external_ref _zyL94_iscX1c0_s
  signal _zyL94_iscX1c0_i0 : std_logic_vector(63 downto 0) ;
  -- quickturn external_ref _zyL94_iscX1c0_i0
  signal _zyL61_iscX2c0_s : std_logic ;
  -- quickturn external_ref _zyL61_iscX2c0_s
  signal _zyL61_iscX2c0_i0 : std_logic_vector(63 downto 0) ;
  -- quickturn external_ref _zyL61_iscX2c0_i0
  signal _zyL61_iscX2c0_i1 : std_logic_vector(31 downto 0) ;
  -- quickturn external_ref _zyL61_iscX2c0_i1
  signal _zyM3L94_pbcMevClk4 : std_logic ;
  signal _zyM3L94_pbcReq4 : std_logic ;
  signal _zyM3L94_pbcBusy4 : std_logic ;
  signal _zyM3L94_pbcWait4 : std_logic ;
  signal _zyM3L61_pbcMevClk9 : std_logic ;
  signal _zyM3L61_pbcReq9 : std_logic ;
  signal _zyM3L61_pbcBusy9 : std_logic ;
  signal _zyM3L61_pbcWait9 : std_logic ;
  signal _zzpready_M3L25_bcSv0 : std_logic ;
  signal _zzprdata_M3L24_bcSv1 : std_logic_vector(31 downto 0) ;
  signal _zzpslverr_M3L26_bcSv2 : std_logic ;
  signal _zzM3L46_bcP0_EnDNxt : std_logic ;
  signal _zzM3L46_bcP0_DOn : std_logic ;
  signal _zzM3L94_bcP1_EnDNxt : std_logic ;
  signal _zzM3L94_bcP1_DOn : std_logic ;
  signal _zzM3L61_bcP2_EnDNxt : std_logic ;
  signal _zzM3L61_bcP2_DOn : std_logic ;
  signal _zzbcOne : std_logic ;
  signal _zzM3_bcBehEvalClk : std_logic ;
  signal _zzM3_bcBehHalt : std_logic ;
  signal _zzmdxOne : std_logic ;
  signal _zzM3L46_mdxP0_EnNxt : std_logic ;
  signal _zzM3L46_mdxP0_On : std_logic ;
  signal _zzM3L94_mdxP1_EnNxt : std_logic ;
  signal _zzM3L94_mdxP1_On : std_logic ;
  signal _zzM3L61_mdxP2_EnNxt : std_logic ;
  signal _zzM3L61_mdxP2_On : std_logic ;
  signal bus_timer : std_logic_vector(7 downto 0) ;
  signal _zyL94_iscX1c0_f : std_logic ;
  -- quickturn external_ref _zyL94_iscX1c0_f
  signal _zyL94_iscX1c0_n : std_logic ;
  signal _zyL94_iscX1c0_o1 : std_logic_vector(31 downto 0) ;
  -- quickturn external_ref _zyL94_iscX1c0_o1
  signal _zyL94_iscX1c0_o2 : std_logic ;
  -- quickturn external_ref _zyL94_iscX1c0_o2
  signal _zyL61_iscX2c0_f : std_logic ;
  -- quickturn external_ref _zyL61_iscX2c0_f
  signal _zyL61_iscX2c0_n : std_logic ;
  signal _zyL61_iscX2c0_o2 : std_logic ;
  -- quickturn external_ref _zyL61_iscX2c0_o2
  signal _zyaddr_L95_tfiV0_M3_pbcG0 : std_logic_vector(63 downto 0) ;
  signal _zydata_L96_tfiV1_M3_pbcG1 : std_logic_vector(31 downto 0) ;
  signal _zyresponse_L97_tfiV2_M3_pbcG2 : std_logic ;
  signal _zyaddr_L62_tfiV3_M3_pbcG3 : std_logic_vector(63 downto 0) ;
  signal _zydata_L63_tfiV4_M3_pbcG4 : std_logic_vector(31 downto 0) ;
  signal _zyresponse_L64_tfiV5_M3_pbcG5 : std_logic ;
  signal _zyM3L94_pbcCapEn0 : std_logic ;
  signal _zyM3L104_pbcCapEn1 : std_logic ;
  signal _zyM3L110_pbcCapEn2 : std_logic ;
  signal _zyM3L121_pbcCapEn3 : std_logic ;
  signal _zyM3L61_pbcCapEn5 : std_logic ;
  signal _zyM3L73_pbcCapEn6 : std_logic ;
  signal _zyM3L79_pbcCapEn7 : std_logic ;
  signal _zyM3L90_pbcCapEn8 : std_logic ;
  signal _zyM3L94_pbcFsm0_s : std_logic_vector(2 downto 0) ;
  signal _zyM3L94_pbcEn10 : std_logic ;
  signal _zyM3L61_pbcFsm2_s : std_logic_vector(2 downto 0) ;
  signal _zyM3L61_pbcEn11 : std_logic ;
  signal _zzM3L46_bcP0_EnD : std_logic ;
  signal _zzM3L46_bcP0_bus_timer_wr0 : std_logic_vector(7 downto 0) ;
  signal _zzM3L46_bcP0_bus_timer_Dwen0 : std_logic ;
  signal _zzM3L46_bcP0_bus_timer_DwenOn0 : std_logic ;
  signal _zzM3L29_bus_timer_nbaTmp3 : std_logic_vector(7 downto 0) ;
  signal _zzM3L94_bcP1_EnD : std_logic ;
  signal _zzM3L94_bcP1_bus_timer_wr0 : std_logic_vector(7 downto 0) ;
  signal _zzM3L94_bcP1_bus_timer_Dwen0 : std_logic ;
  signal _zzM3L94_bcP1_bus_timer_DwenOn0 : std_logic ;
  signal _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_wr1 : std_logic_vector(31
   downto 0) ;
  signal _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_Dwen1 : std_logic ;
  signal _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_DwenOn1 : std_logic ;
  signal _zzM3L96__zydata_L96_tfiV1_M3_pbcG1_nbaTmp4 : std_logic_vector(31
   downto 0) ;
  signal _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_wr2 : std_logic ;
  signal _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_Dwen2 : std_logic ;
  signal _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_DwenOn2 : std_logic ;
  signal _zzM3L97__zyresponse_L97_tfiV2_M3_pbcG2_nbaTmp5 : std_logic ;
  signal _zzM3L61_bcP2_EnD : std_logic ;
  signal _zzM3L61_bcP2_bus_timer_wr0 : std_logic_vector(7 downto 0) ;
  signal _zzM3L61_bcP2_bus_timer_Dwen0 : std_logic ;
  signal _zzM3L61_bcP2_bus_timer_DwenOn0 : std_logic ;
  signal _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_wr1 : std_logic ;
  signal _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_Dwen1 : std_logic ;
  signal _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_DwenOn1 : std_logic ;
  signal _zzM3L64__zyresponse_L64_tfiV5_M3_pbcG5_nbaTmp6 : std_logic ;
  signal _zzbus_timer_M3L29_bcSvLt7 : std_logic_vector(7 downto 0) ;
  signal _zz_zydata_L96_tfiV1_M3_pbcG1_M3_bcSvLt8 : std_logic_vector(31 downto 0
  ) ;
  signal _zz_zyresponse_L97_tfiV2_M3_pbcG2_M3_bcSvLt9 : std_logic ;
  signal _zz_zyresponse_L64_tfiV5_M3_pbcG5_M3_bcSvLt10 : std_logic ;
  signal _zzM3_bcBehEval : std_logic_vector(31 downto 0) ;
  signal _zzM3L19_psel_mdxTmp0 : std_logic ;
  signal _zzM3L20_penable_mdxTmp1 : std_logic ;
  signal _zzM3L23_pwrite_mdxTmp2 : std_logic ;
  signal _zzM3L21_paddr_mdxTmp3 : std_logic_vector(19 downto 0) ;
  signal _zzM3L22_pwdata_mdxTmp4 : std_logic_vector(31 downto 0) ;
  signal _zzM3L46_mdxP0_En : std_logic ;
  signal _zzM3L46_mdxP0_psel_wr0 : std_logic ;
  signal _zzM3L46_mdxP0_psel_Dwen0 : std_logic ;
  signal _zzM3L46_mdxP0_psel_DwenOn0 : std_logic ;
  signal _zzM3L46_mdxP0_penable_wr1 : std_logic ;
  signal _zzM3L46_mdxP0_penable_Dwen1 : std_logic ;
  signal _zzM3L46_mdxP0_penable_DwenOn1 : std_logic ;
  signal _zzM3L46_mdxP0_pwrite_wr2 : std_logic ;
  signal _zzM3L46_mdxP0_pwrite_Dwen2 : std_logic ;
  signal _zzM3L46_mdxP0_pwrite_DwenOn2 : std_logic ;
  signal _zzM3L46_mdxP0_paddr_wr3 : std_logic_vector(19 downto 0) ;
  signal _zzM3L46_mdxP0_paddr_Dwen3 : std_logic ;
  signal _zzM3L46_mdxP0_paddr_DwenOn3 : std_logic ;
  signal _zzM3L46_mdxP0_pwdata_wr4 : std_logic_vector(31 downto 0) ;
  signal _zzM3L46_mdxP0_pwdata_Dwen4 : std_logic ;
  signal _zzM3L46_mdxP0_pwdata_DwenOn4 : std_logic ;
  signal _zzM3L94_mdxP1_En : std_logic ;
  signal _zzM3L94_mdxP1_psel_wr0 : std_logic ;
  signal _zzM3L94_mdxP1_psel_Dwen0 : std_logic ;
  signal _zzM3L94_mdxP1_psel_DwenOn0 : std_logic ;
  signal _zzM3L94_mdxP1_penable_wr1 : std_logic ;
  signal _zzM3L94_mdxP1_penable_Dwen1 : std_logic ;
  signal _zzM3L94_mdxP1_penable_DwenOn1 : std_logic ;
  signal _zzM3L94_mdxP1_pwrite_wr2 : std_logic ;
  signal _zzM3L94_mdxP1_pwrite_Dwen2 : std_logic ;
  signal _zzM3L94_mdxP1_pwrite_DwenOn2 : std_logic ;
  signal _zzM3L94_mdxP1_paddr_wr3 : std_logic_vector(19 downto 0) ;
  signal _zzM3L94_mdxP1_paddr_Dwen3 : std_logic ;
  signal _zzM3L94_mdxP1_paddr_DwenOn3 : std_logic ;
  signal _zzM3L61_mdxP2_En : std_logic ;
  signal _zzM3L61_mdxP2_psel_wr0 : std_logic ;
  signal _zzM3L61_mdxP2_psel_Dwen0 : std_logic ;
  signal _zzM3L61_mdxP2_psel_DwenOn0 : std_logic ;
  signal _zzM3L61_mdxP2_penable_wr1 : std_logic ;
  signal _zzM3L61_mdxP2_penable_Dwen1 : std_logic ;
  signal _zzM3L61_mdxP2_penable_DwenOn1 : std_logic ;
  signal _zzM3L61_mdxP2_pwrite_wr2 : std_logic ;
  signal _zzM3L61_mdxP2_pwrite_Dwen2 : std_logic ;
  signal _zzM3L61_mdxP2_pwrite_DwenOn2 : std_logic ;
  signal _zzM3L61_mdxP2_paddr_wr3 : std_logic_vector(19 downto 0) ;
  signal _zzM3L61_mdxP2_paddr_Dwen3 : std_logic ;
  signal _zzM3L61_mdxP2_paddr_DwenOn3 : std_logic ;
  signal _zzM3L61_mdxP2_pwdata_wr4 : std_logic_vector(31 downto 0) ;
  signal _zzM3L61_mdxP2_pwdata_Dwen4 : std_logic ;
  signal _zzM3L61_mdxP2_pwdata_DwenOn4 : std_logic ;
  signal _zzpsel_M3L19_mdxSvLt5 : std_logic ;
  signal _zzpenable_M3L20_mdxSvLt6 : std_logic ;
  signal _zzpwrite_M3L23_mdxSvLt7 : std_logic ;
  signal _zzpaddr_M3L21_mdxSvLt8 : std_logic_vector(19 downto 0) ;
  signal _zzpwdata_M3L22_mdxSvLt9 : std_logic_vector(31 downto 0) ;
  signal DUMMY5 : std_logic_vector(1 downto 0) ;
  signal DUMMY6 : std_logic_vector(1 downto 0) ;
  signal DUMMY7 : std_logic_vector(1 downto 0) ;
  signal DUMMY8 : std_logic_vector(1 downto 0) ;
  signal DUMMY9 : std_logic_vector(0 downto 0) ;
  signal DUMMY10 : std_logic_vector(0 downto 0) ;
  -- quickturn keep_net bus_timer
  -- quickturn keep_net _zyL94_iscX1c0_n
  -- quickturn keep_net _zyL61_iscX2c0_n
  -- quickturn keep_net _zydata_L96_tfiV1_M3_pbcG1
  -- quickturn keep_net _zyresponse_L97_tfiV2_M3_pbcG2
  -- quickturn keep_net _zyresponse_L64_tfiV5_M3_pbcG5
  -- quickturn keep_net _zyM3L94_pbcCapEn0
  -- quickturn keep_net _zyM3L104_pbcCapEn1
  -- quickturn keep_net _zyM3L110_pbcCapEn2
  -- quickturn keep_net _zyM3L121_pbcCapEn3
  -- quickturn keep_net _zyM3L61_pbcCapEn5
  -- quickturn keep_net _zyM3L73_pbcCapEn6
  -- quickturn keep_net _zyM3L79_pbcCapEn7
  -- quickturn keep_net _zyM3L90_pbcCapEn8
  -- quickturn keep_net _zyM3L94_pbcFsm0_s
  -- quickturn keep_net _zyM3L61_pbcFsm2_s
  -- quickturn keep_net _zzM3_bcBehEval

begin
  _zzqnt : Q_NOT_TOUCH
     ;
  _zz_strnp_0 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY0
      ,psel
    ) ;
  _zz_strnp_1 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY1
      ,penable
    ) ;
  _zz_strnp_2 : ixc_assign
    generic map(W => 20)
    port map (
       DUMMY2
      ,paddr
    ) ;
  _zz_strnp_3 : ixc_assign
    generic map(W => 32)
    port map (
       DUMMY3
      ,pwdata
    ) ;
  _zz_strnp_4 : ixc_assign
    generic map(W => 1)
    port map (
       DUMMY4
      ,pwrite
    ) ;
  _zzM3L94_pbcMevClk4 : ixc_mevClk
    generic map(WIDTH => integer_to_std(2,32),DUMMY3 => integer_to_std(0,32
    ),HOLD => 0,IS_EDGED => std_logic_vector'("01"),POLARITY =>
     std_logic_vector'("00"),DS => std_logic_vector'("10"),DM =>
     std_logic_vector'("00"),EVOUT => std_logic_vector'("00"),WAIT_EV =>
     std_logic_vector'("00"))
    port map (
       _zyM3L94_pbcMevClk4
      ,DUMMY5
      ,DUMMY6
      ,std_logic'('0')
      ,std_logic'('0')
      ,_zyM3L94_pbcReq4
      ,_zyM3L94_pbcBusy4
      ,_zyM3L94_pbcWait4
    ) ;
  DUMMY5 <= std_logic_vector'(_zyL94_iscX1c0_s & clk) ;
  DUMMY6 <= std_logic_vector'(_zyM3L94_pbcCapEn0 & ((_zyM3L104_pbcCapEn1 or
   _zyM3L110_pbcCapEn2) or _zyM3L121_pbcCapEn3)) ;
  _zzM3L61_pbcMevClk9 : ixc_mevClk
    generic map(WIDTH => integer_to_std(2,32),DUMMY3 => integer_to_std(0,32
    ),HOLD => 0,IS_EDGED => std_logic_vector'("01"),POLARITY =>
     std_logic_vector'("00"),DS => std_logic_vector'("10"),DM =>
     std_logic_vector'("00"),EVOUT => std_logic_vector'("00"),WAIT_EV =>
     std_logic_vector'("00"))
    port map (
       _zyM3L61_pbcMevClk9
      ,DUMMY7
      ,DUMMY8
      ,std_logic'('0')
      ,std_logic'('0')
      ,_zyM3L61_pbcReq9
      ,_zyM3L61_pbcBusy9
      ,_zyM3L61_pbcWait9
    ) ;
  DUMMY7 <= std_logic_vector'(_zyL61_iscX2c0_s & clk) ;
  DUMMY8 <= std_logic_vector'(_zyM3L61_pbcCapEn5 & ((_zyM3L73_pbcCapEn6 or
   _zyM3L79_pbcCapEn7) or _zyM3L90_pbcCapEn8)) ;
  _zzpready_M3L25_bcSp0 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 0)
    port map (
       _zzpready_M3L25_bcSv0
      ,pready
    ) ;
  _zzprdata_M3L24_bcSp1 : ixc_sample_logic
    generic map(WIDTH => 32,RD_TYPE => 0)
    port map (
       _zzprdata_M3L24_bcSv1
      ,prdata
    ) ;
  _zzpslverr_M3L26_bcSp2 : ixc_sample_logic
    generic map(WIDTH => 1,RD_TYPE => 0)
    port map (
       _zzpslverr_M3L26_bcSv2
      ,pslverr
    ) ;
  _zzM3L46_bcP0_DOnP : ixc_nba2BpD
    port map (
       _zzM3L46_bcP0_DOn
      ,_zzM3L46_bcP0_EnDNxt
      ,_zzM3L46_bcP0_EnD
    ) ;
  _zzM3L94_bcP1_DOnP : ixc_nba2BpD
    port map (
       _zzM3L94_bcP1_DOn
      ,_zzM3L94_bcP1_EnDNxt
      ,_zzM3L94_bcP1_EnD
    ) ;
  _zzM3L61_bcP2_DOnP : ixc_nba2BpD
    port map (
       _zzM3L61_bcP2_DOn
      ,_zzM3L61_bcP2_EnDNxt
      ,_zzM3L61_bcP2_EnD
    ) ;
  _zzbus_timer_M3L29_bcSpLt7 : ixc_sampleLT
    generic map(WIDTH => 8)
    port map (
       _zzbus_timer_M3L29_bcSvLt7
      ,bus_timer
    ) ;
  _zz_zydata_L96_tfiV1_M3_pbcG1_M3_bcSpLt8 : ixc_sampleLT
    generic map(WIDTH => 32)
    port map (
       _zz_zydata_L96_tfiV1_M3_pbcG1_M3_bcSvLt8
      ,_zydata_L96_tfiV1_M3_pbcG1
    ) ;
  _zz_zyresponse_L97_tfiV2_M3_pbcG2_M3_bcSpLt9 : ixc_sampleLT
    generic map(WIDTH => 1)
    port map (
       _zz_zyresponse_L97_tfiV2_M3_pbcG2_M3_bcSvLt9
      ,_zyresponse_L97_tfiV2_M3_pbcG2
    ) ;
  _zz_zyresponse_L64_tfiV5_M3_pbcG5_M3_bcSpLt10 : ixc_sampleLT
    generic map(WIDTH => 1)
    port map (
       _zz_zyresponse_L64_tfiV5_M3_pbcG5_M3_bcSvLt10
      ,_zyresponse_L64_tfiV5_M3_pbcG5
    ) ;
  _zzM3L10_bcBehEvalP0 : ixc_capLoopXp
    port map (
       _zzM3_bcBehEvalClk
      ,std_logic'('0')
      ,open
      ,_zzM3_bcBehHalt
    ) ;
  _zzM3L46_mdxP0_OnP : ixc_mdrOn
    port map (
       _zzM3L46_mdxP0_On
      ,_zzM3L46_mdxP0_EnNxt
      ,_zzM3L46_mdxP0_En
    ) ;
  _zzM3L94_mdxP1_OnP : ixc_mdrOn
    port map (
       _zzM3L94_mdxP1_On
      ,_zzM3L94_mdxP1_EnNxt
      ,_zzM3L94_mdxP1_En
    ) ;
  _zzM3L61_mdxP2_OnP : ixc_mdrOn
    port map (
       _zzM3L61_mdxP2_On
      ,_zzM3L61_mdxP2_EnNxt
      ,_zzM3L61_mdxP2_En
    ) ;
  _zzpsel_M3L19_mdxSpLt5 : ixc_sampleLT
    generic map(WIDTH => 1)
    port map (
       _zzpsel_M3L19_mdxSvLt5
      ,psel
    ) ;
  _zzpenable_M3L20_mdxSpLt6 : ixc_sampleLT
    generic map(WIDTH => 1)
    port map (
       _zzpenable_M3L20_mdxSvLt6
      ,penable
    ) ;
  _zzpwrite_M3L23_mdxSpLt7 : ixc_sampleLT
    generic map(WIDTH => 1)
    port map (
       _zzpwrite_M3L23_mdxSvLt7
      ,pwrite
    ) ;
  _zzpaddr_M3L21_mdxSpLt8 : ixc_sampleLT
    generic map(WIDTH => 20)
    port map (
       _zzpaddr_M3L21_mdxSvLt8
      ,paddr
    ) ;
  _zzpwdata_M3L22_mdxSpLt9 : ixc_sampleLT
    generic map(WIDTH => 32)
    port map (
       _zzpwdata_M3L22_mdxSvLt9
      ,pwdata
    ) ;
  _zzmdx1 : ixc_assign
    port map (
       _zzmdxOne
      ,DUMMY9
    ) ;
  DUMMY9 <= std_logic_vector'("1") ;
  _zzbc1 : ixc_assign
    port map (
       _zzbcOne
      ,DUMMY10
    ) ;
  DUMMY10 <= std_logic_vector'("1") ;

  process --:o260
  (clk)
  begin
    if (clk'event and clk = '1') then
      _zzM3L46_mdxP0_psel_Dwen0 <= '0' ;
      _zzM3L46_mdxP0_penable_Dwen1 <= '0' ;
      _zzM3L46_mdxP0_pwrite_Dwen2 <= '0' ;
      _zzM3L46_mdxP0_paddr_Dwen3 <= '0' ;
      _zzM3L46_mdxP0_pwdata_Dwen4 <= '0' ;
      if (_zzM3L46_bcP0_EnD /= _zzM3L46_bcP0_EnDNxt) then
        _zzM3L46_bcP0_bus_timer_Dwen0 <= '0' ;
      end if;
      if ((reset_n = '0')) then
        _zzM3L46_bcP0_bus_timer_wr0 <= "00000000" ;
        _zzM3L46_bcP0_bus_timer_Dwen0 <= '1' ;
        _zzM3L46_bcP0_EnD <= _zzM3L46_bcP0_EnDNxt ;
        _zzM3L46_mdxP0_psel_wr0 <= '0' ;
        _zzM3L46_mdxP0_psel_Dwen0 <= '1' ;
        _zzM3L46_mdxP0_En <= _zzM3L46_mdxP0_EnNxt ;
        _zzM3L46_mdxP0_penable_wr1 <= '0' ;
        _zzM3L46_mdxP0_penable_Dwen1 <= '1' ;
        _zzM3L46_mdxP0_En <= _zzM3L46_mdxP0_EnNxt ;
        _zzM3L46_mdxP0_paddr_wr3 <= "00000000000000000000" ;
        _zzM3L46_mdxP0_paddr_Dwen3 <= '1' ;
        _zzM3L46_mdxP0_En <= _zzM3L46_mdxP0_EnNxt ;
        _zzM3L46_mdxP0_pwdata_wr4 <= "00000000000000000000000000000000" ;
        _zzM3L46_mdxP0_pwdata_Dwen4 <= '1' ;
        _zzM3L46_mdxP0_En <= _zzM3L46_mdxP0_EnNxt ;
        _zzM3L46_mdxP0_pwrite_wr2 <= '0' ;
        _zzM3L46_mdxP0_pwrite_Dwen2 <= '1' ;
        _zzM3L46_mdxP0_En <= _zzM3L46_mdxP0_EnNxt ;
      end if;
    end if ;
  end process ;

  process --:o329
  (_zyM3L94_pbcMevClk4)
    variable _zyaddr_L95_tfiV0_M3_pbcG0_DUMMY0 : std_logic_vector(63 downto 0) ;
    variable _zyM3L94_pbcEn10_DUMMY1 : std_logic ;
  begin
    if (_zyM3L94_pbcMevClk4'event and _zyM3L94_pbcMevClk4 = '1') then
      _zzM3L94_mdxP1_psel_Dwen0 <= '0' ;
      _zzM3L94_mdxP1_penable_Dwen1 <= '0' ;
      _zzM3L94_mdxP1_pwrite_Dwen2 <= '0' ;
      _zzM3L94_mdxP1_paddr_Dwen3 <= '0' ;
      if (_zzM3L94_bcP1_EnD /= _zzM3L94_bcP1_EnDNxt) then
        _zzM3L94_bcP1_bus_timer_Dwen0 <= '0' ;
        _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_Dwen1 <= '0' ;
        _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_Dwen2 <= '0' ;
      end if;

      case _zyM3L94_pbcFsm0_s is
        when  "000"  =>
          _zyM3L94_pbcCapEn0 <= '0' ;
          _zyaddr_L95_tfiV0_M3_pbcG0_DUMMY0 := _zyL94_iscX1c0_i0 ;
          _zzM3L94_mdxP1_psel_wr0 <= '1' ;
          _zzM3L94_mdxP1_psel_Dwen0 <= '1' ;
          _zzM3L94_mdxP1_En <= _zzM3L94_mdxP1_EnNxt ;
          _zzM3L94_mdxP1_penable_wr1 <= '0' ;
          _zzM3L94_mdxP1_penable_Dwen1 <= '1' ;
          _zzM3L94_mdxP1_En <= _zzM3L94_mdxP1_EnNxt ;
          _zzM3L94_mdxP1_pwrite_wr2 <= '0' ;
          _zzM3L94_mdxP1_pwrite_Dwen2 <= '1' ;
          _zzM3L94_mdxP1_En <= _zzM3L94_mdxP1_EnNxt ;
          _zzM3L94_mdxP1_paddr_wr3 <= ext(_zyaddr_L95_tfiV0_M3_pbcG0_DUMMY0(31
           downto 0),20) ;
          _zzM3L94_mdxP1_paddr_Dwen3 <= '1' ;
          _zzM3L94_mdxP1_En <= _zzM3L94_mdxP1_EnNxt ;
          _zyM3L104_pbcCapEn1 <= '1' ;
          _zyM3L94_pbcFsm0_s <= "001" ;
        when  "001"  =>
          _zyM3L94_pbcEn10_DUMMY1 := '1' ;
          _zyM3L104_pbcCapEn1 <= '0' ;
          _zzM3L94_mdxP1_penable_wr1 <= '1' ;
          _zzM3L94_mdxP1_penable_Dwen1 <= '1' ;
          _zzM3L94_mdxP1_En <= _zzM3L94_mdxP1_EnNxt ;
          if (((_zzpready_M3L25_bcSv0 = '0') and ext(bus_timer,32) <
           std_logic_vector'("00000000000000000000000001100100"))) then
            _zzM3L94_bcP1_bus_timer_wr0 <= ext((ext(bus_timer,32) +
             std_logic_vector'("00000000000000000000000000000001")),8) ;
            _zzM3L94_bcP1_bus_timer_Dwen0 <= '1' ;
            _zzM3L94_bcP1_EnD <= _zzM3L94_bcP1_EnDNxt ;
            _zyM3L110_pbcCapEn2 <= '1' ;
            _zyM3L94_pbcFsm0_s <= "010" ;
            _zyM3L94_pbcEn10_DUMMY1 := '0' ;
          end if;
          if (_zyM3L94_pbcEn10_DUMMY1 = '1') then
            _zzM3L94_bcP1_bus_timer_wr0 <= "00000000" ;
            _zzM3L94_bcP1_bus_timer_Dwen0 <= '1' ;
            _zzM3L94_bcP1_EnD <= _zzM3L94_bcP1_EnDNxt ;
            _zzM3L94_mdxP1_psel_wr0 <= '0' ;
            _zzM3L94_mdxP1_psel_Dwen0 <= '1' ;
            _zzM3L94_mdxP1_En <= _zzM3L94_mdxP1_EnNxt ;
            _zzM3L94_mdxP1_penable_wr1 <= '0' ;
            _zzM3L94_mdxP1_penable_Dwen1 <= '1' ;
            _zzM3L94_mdxP1_En <= _zzM3L94_mdxP1_EnNxt ;
            _zzM3L94_mdxP1_pwrite_wr2 <= '0' ;
            _zzM3L94_mdxP1_pwrite_Dwen2 <= '1' ;
            _zzM3L94_mdxP1_En <= _zzM3L94_mdxP1_EnNxt ;
            _zzM3L94_mdxP1_paddr_wr3 <= "00000000000000000000" ;
            _zzM3L94_mdxP1_paddr_Dwen3 <= '1' ;
            _zzM3L94_mdxP1_En <= _zzM3L94_mdxP1_EnNxt ;
            _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_wr1 <=
             _zzprdata_M3L24_bcSv1 ;
            _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_Dwen1 <= '1' ;
            _zzM3L94_bcP1_EnD <= _zzM3L94_bcP1_EnDNxt ;
            _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_wr2 <= 
            (_zzpslverr_M3L26_bcSv2 or boolean_to_std(ext(bus_timer,32) =
             std_logic_vector'("00000000000000000000000001100100"))) ;
            _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_Dwen2 <= '1' ;
            _zzM3L94_bcP1_EnD <= _zzM3L94_bcP1_EnDNxt ;
            _zyM3L121_pbcCapEn3 <= '1' ;
            _zyM3L94_pbcFsm0_s <= "011" ;
          end if;
        when  "010"  =>
          _zyM3L94_pbcEn10_DUMMY1 := '1' ;
          _zyM3L110_pbcCapEn2 <= '0' ;
          if (((_zzpready_M3L25_bcSv0 = '0') and ext(bus_timer,32) <
           std_logic_vector'("00000000000000000000000001100100"))) then
            _zzM3L94_bcP1_bus_timer_wr0 <= ext((ext(bus_timer,32) +
             std_logic_vector'("00000000000000000000000000000001")),8) ;
            _zzM3L94_bcP1_bus_timer_Dwen0 <= '1' ;
            _zzM3L94_bcP1_EnD <= _zzM3L94_bcP1_EnDNxt ;
            _zyM3L110_pbcCapEn2 <= '1' ;
            _zyM3L94_pbcFsm0_s <= "010" ;
            _zyM3L94_pbcEn10_DUMMY1 := '0' ;
          end if;
          if (_zyM3L94_pbcEn10_DUMMY1 = '1') then
            _zzM3L94_bcP1_bus_timer_wr0 <= "00000000" ;
            _zzM3L94_bcP1_bus_timer_Dwen0 <= '1' ;
            _zzM3L94_bcP1_EnD <= _zzM3L94_bcP1_EnDNxt ;
            _zzM3L94_mdxP1_psel_wr0 <= '0' ;
            _zzM3L94_mdxP1_psel_Dwen0 <= '1' ;
            _zzM3L94_mdxP1_En <= _zzM3L94_mdxP1_EnNxt ;
            _zzM3L94_mdxP1_penable_wr1 <= '0' ;
            _zzM3L94_mdxP1_penable_Dwen1 <= '1' ;
            _zzM3L94_mdxP1_En <= _zzM3L94_mdxP1_EnNxt ;
            _zzM3L94_mdxP1_pwrite_wr2 <= '0' ;
            _zzM3L94_mdxP1_pwrite_Dwen2 <= '1' ;
            _zzM3L94_mdxP1_En <= _zzM3L94_mdxP1_EnNxt ;
            _zzM3L94_mdxP1_paddr_wr3 <= "00000000000000000000" ;
            _zzM3L94_mdxP1_paddr_Dwen3 <= '1' ;
            _zzM3L94_mdxP1_En <= _zzM3L94_mdxP1_EnNxt ;
            _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_wr1 <=
             _zzprdata_M3L24_bcSv1 ;
            _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_Dwen1 <= '1' ;
            _zzM3L94_bcP1_EnD <= _zzM3L94_bcP1_EnDNxt ;
            _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_wr2 <= 
            (_zzpslverr_M3L26_bcSv2 or boolean_to_std(ext(bus_timer,32) =
             std_logic_vector'("00000000000000000000000001100100"))) ;
            _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_Dwen2 <= '1' ;
            _zzM3L94_bcP1_EnD <= _zzM3L94_bcP1_EnDNxt ;
            _zyM3L121_pbcCapEn3 <= '1' ;
            _zyM3L94_pbcFsm0_s <= "011" ;
          end if;
        when  "011"  =>
          _zyM3L121_pbcCapEn3 <= '0' ;
          _zyL94_iscX1c0_o1 <= _zydata_L96_tfiV1_M3_pbcG1 ;
          _zyL94_iscX1c0_o2 <= _zyresponse_L97_tfiV2_M3_pbcG2 ;
          _zyL94_iscX1c0_f <= _zyL94_iscX1c0_n ;
          _zyL94_iscX1c0_n <= not(_zyL94_iscX1c0_n) ;
          _zyM3L94_pbcCapEn0 <= '1' ;
          _zyM3L94_pbcFsm0_s <= "000" ;
        when others => null ;
      end case;
    end if ;
    _zyaddr_L95_tfiV0_M3_pbcG0 <= transport _zyaddr_L95_tfiV0_M3_pbcG0_DUMMY0;
    _zyM3L94_pbcEn10 <= _zyM3L94_pbcEn10_DUMMY1;
  end process ;

  process --:o574
  (_zyM3L61_pbcMevClk9)
    variable _zyaddr_L62_tfiV3_M3_pbcG3_DUMMY2 : std_logic_vector(63 downto 0) ;
    variable _zydata_L63_tfiV4_M3_pbcG4_DUMMY3 : std_logic_vector(31 downto 0) ;
    variable _zyM3L61_pbcEn11_DUMMY4 : std_logic ;
  begin
    if (_zyM3L61_pbcMevClk9'event and _zyM3L61_pbcMevClk9 = '1') then
      _zzM3L61_mdxP2_psel_Dwen0 <= '0' ;
      _zzM3L61_mdxP2_penable_Dwen1 <= '0' ;
      _zzM3L61_mdxP2_pwrite_Dwen2 <= '0' ;
      _zzM3L61_mdxP2_paddr_Dwen3 <= '0' ;
      _zzM3L61_mdxP2_pwdata_Dwen4 <= '0' ;
      if (_zzM3L61_bcP2_EnD /= _zzM3L61_bcP2_EnDNxt) then
        _zzM3L61_bcP2_bus_timer_Dwen0 <= '0' ;
        _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_Dwen1 <= '0' ;
      end if;

      case _zyM3L61_pbcFsm2_s is
        when  "000"  =>
          _zyM3L61_pbcCapEn5 <= '0' ;
          _zyaddr_L62_tfiV3_M3_pbcG3_DUMMY2 := _zyL61_iscX2c0_i0 ;
          _zydata_L63_tfiV4_M3_pbcG4_DUMMY3 := _zyL61_iscX2c0_i1 ;
          _zzM3L61_mdxP2_psel_wr0 <= '1' ;
          _zzM3L61_mdxP2_psel_Dwen0 <= '1' ;
          _zzM3L61_mdxP2_En <= _zzM3L61_mdxP2_EnNxt ;
          _zzM3L61_mdxP2_penable_wr1 <= '0' ;
          _zzM3L61_mdxP2_penable_Dwen1 <= '1' ;
          _zzM3L61_mdxP2_En <= _zzM3L61_mdxP2_EnNxt ;
          _zzM3L61_mdxP2_pwrite_wr2 <= '1' ;
          _zzM3L61_mdxP2_pwrite_Dwen2 <= '1' ;
          _zzM3L61_mdxP2_En <= _zzM3L61_mdxP2_EnNxt ;
          _zzM3L61_mdxP2_paddr_wr3 <= ext(_zyaddr_L62_tfiV3_M3_pbcG3_DUMMY2(31
           downto 0),20) ;
          _zzM3L61_mdxP2_paddr_Dwen3 <= '1' ;
          _zzM3L61_mdxP2_En <= _zzM3L61_mdxP2_EnNxt ;
          _zzM3L61_mdxP2_pwdata_wr4 <= _zydata_L63_tfiV4_M3_pbcG4_DUMMY3 ;
          _zzM3L61_mdxP2_pwdata_Dwen4 <= '1' ;
          _zzM3L61_mdxP2_En <= _zzM3L61_mdxP2_EnNxt ;
          _zyM3L73_pbcCapEn6 <= '1' ;
          _zyM3L61_pbcFsm2_s <= "001" ;
        when  "001"  =>
          _zyM3L61_pbcEn11_DUMMY4 := '1' ;
          _zyM3L73_pbcCapEn6 <= '0' ;
          _zzM3L61_mdxP2_penable_wr1 <= '1' ;
          _zzM3L61_mdxP2_penable_Dwen1 <= '1' ;
          _zzM3L61_mdxP2_En <= _zzM3L61_mdxP2_EnNxt ;
          if (((_zzpready_M3L25_bcSv0 = '0') and ext(bus_timer,32) <
           std_logic_vector'("00000000000000000000000001100100"))) then
            _zzM3L61_bcP2_bus_timer_wr0 <= ext((ext(bus_timer,32) +
             std_logic_vector'("00000000000000000000000000000001")),8) ;
            _zzM3L61_bcP2_bus_timer_Dwen0 <= '1' ;
            _zzM3L61_bcP2_EnD <= _zzM3L61_bcP2_EnDNxt ;
            _zyM3L79_pbcCapEn7 <= '1' ;
            _zyM3L61_pbcFsm2_s <= "010" ;
            _zyM3L61_pbcEn11_DUMMY4 := '0' ;
          end if;
          if (_zyM3L61_pbcEn11_DUMMY4 = '1') then
            _zzM3L61_bcP2_bus_timer_wr0 <= "00000000" ;
            _zzM3L61_bcP2_bus_timer_Dwen0 <= '1' ;
            _zzM3L61_bcP2_EnD <= _zzM3L61_bcP2_EnDNxt ;
            _zzM3L61_mdxP2_psel_wr0 <= '0' ;
            _zzM3L61_mdxP2_psel_Dwen0 <= '1' ;
            _zzM3L61_mdxP2_En <= _zzM3L61_mdxP2_EnNxt ;
            _zzM3L61_mdxP2_penable_wr1 <= '0' ;
            _zzM3L61_mdxP2_penable_Dwen1 <= '1' ;
            _zzM3L61_mdxP2_En <= _zzM3L61_mdxP2_EnNxt ;
            _zzM3L61_mdxP2_pwrite_wr2 <= '0' ;
            _zzM3L61_mdxP2_pwrite_Dwen2 <= '1' ;
            _zzM3L61_mdxP2_En <= _zzM3L61_mdxP2_EnNxt ;
            _zzM3L61_mdxP2_paddr_wr3 <= "00000000000000000000" ;
            _zzM3L61_mdxP2_paddr_Dwen3 <= '1' ;
            _zzM3L61_mdxP2_En <= _zzM3L61_mdxP2_EnNxt ;
            _zzM3L61_mdxP2_pwdata_wr4 <= "00000000000000000000000000000000" ;
            _zzM3L61_mdxP2_pwdata_Dwen4 <= '1' ;
            _zzM3L61_mdxP2_En <= _zzM3L61_mdxP2_EnNxt ;
            _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_wr1 <= 
            (_zzpslverr_M3L26_bcSv2 or boolean_to_std(ext(bus_timer,32) =
             std_logic_vector'("00000000000000000000000001100100"))) ;
            _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_Dwen1 <= '1' ;
            _zzM3L61_bcP2_EnD <= _zzM3L61_bcP2_EnDNxt ;
            _zyM3L90_pbcCapEn8 <= '1' ;
            _zyM3L61_pbcFsm2_s <= "011" ;
          end if;
        when  "010"  =>
          _zyM3L61_pbcEn11_DUMMY4 := '1' ;
          _zyM3L79_pbcCapEn7 <= '0' ;
          if (((_zzpready_M3L25_bcSv0 = '0') and ext(bus_timer,32) <
           std_logic_vector'("00000000000000000000000001100100"))) then
            _zzM3L61_bcP2_bus_timer_wr0 <= ext((ext(bus_timer,32) +
             std_logic_vector'("00000000000000000000000000000001")),8) ;
            _zzM3L61_bcP2_bus_timer_Dwen0 <= '1' ;
            _zzM3L61_bcP2_EnD <= _zzM3L61_bcP2_EnDNxt ;
            _zyM3L79_pbcCapEn7 <= '1' ;
            _zyM3L61_pbcFsm2_s <= "010" ;
            _zyM3L61_pbcEn11_DUMMY4 := '0' ;
          end if;
          if (_zyM3L61_pbcEn11_DUMMY4 = '1') then
            _zzM3L61_bcP2_bus_timer_wr0 <= "00000000" ;
            _zzM3L61_bcP2_bus_timer_Dwen0 <= '1' ;
            _zzM3L61_bcP2_EnD <= _zzM3L61_bcP2_EnDNxt ;
            _zzM3L61_mdxP2_psel_wr0 <= '0' ;
            _zzM3L61_mdxP2_psel_Dwen0 <= '1' ;
            _zzM3L61_mdxP2_En <= _zzM3L61_mdxP2_EnNxt ;
            _zzM3L61_mdxP2_penable_wr1 <= '0' ;
            _zzM3L61_mdxP2_penable_Dwen1 <= '1' ;
            _zzM3L61_mdxP2_En <= _zzM3L61_mdxP2_EnNxt ;
            _zzM3L61_mdxP2_pwrite_wr2 <= '0' ;
            _zzM3L61_mdxP2_pwrite_Dwen2 <= '1' ;
            _zzM3L61_mdxP2_En <= _zzM3L61_mdxP2_EnNxt ;
            _zzM3L61_mdxP2_paddr_wr3 <= "00000000000000000000" ;
            _zzM3L61_mdxP2_paddr_Dwen3 <= '1' ;
            _zzM3L61_mdxP2_En <= _zzM3L61_mdxP2_EnNxt ;
            _zzM3L61_mdxP2_pwdata_wr4 <= "00000000000000000000000000000000" ;
            _zzM3L61_mdxP2_pwdata_Dwen4 <= '1' ;
            _zzM3L61_mdxP2_En <= _zzM3L61_mdxP2_EnNxt ;
            _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_wr1 <= 
            (_zzpslverr_M3L26_bcSv2 or boolean_to_std(ext(bus_timer,32) =
             std_logic_vector'("00000000000000000000000001100100"))) ;
            _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_Dwen1 <= '1' ;
            _zzM3L61_bcP2_EnD <= _zzM3L61_bcP2_EnDNxt ;
            _zyM3L90_pbcCapEn8 <= '1' ;
            _zyM3L61_pbcFsm2_s <= "011" ;
          end if;
        when  "011"  =>
          _zyM3L90_pbcCapEn8 <= '0' ;
          _zyL61_iscX2c0_o2 <= _zyresponse_L64_tfiV5_M3_pbcG5 ;
          _zyL61_iscX2c0_f <= _zyL61_iscX2c0_n ;
          _zyL61_iscX2c0_n <= not(_zyL61_iscX2c0_n) ;
          _zyM3L61_pbcCapEn5 <= '1' ;
          _zyM3L61_pbcFsm2_s <= "000" ;
        when others => null ;
      end case;
    end if ;
    _zyaddr_L62_tfiV3_M3_pbcG3 <= transport _zyaddr_L62_tfiV3_M3_pbcG3_DUMMY2;
    _zydata_L63_tfiV4_M3_pbcG4 <= _zydata_L63_tfiV4_M3_pbcG4_DUMMY3;
    _zyM3L61_pbcEn11 <= _zyM3L61_pbcEn11_DUMMY4;
  end process ;

  process --:o826
  (*)
    variable _zzM3L29_bus_timer_nbaTmp3_DUMMY5 : std_logic_vector(7 downto 0) ;
    variable _zzM3L46_bcP0_bus_timer_DwenOn0_DUMMY6 : std_logic ;
    variable _zzM3L94_bcP1_bus_timer_DwenOn0_DUMMY7 : std_logic ;
    variable _zzM3L61_bcP2_bus_timer_DwenOn0_DUMMY8 : std_logic ;
  begin
    _zzM3L29_bus_timer_nbaTmp3_DUMMY5 := _zzM3L29_bus_timer_nbaTmp3;
    _zzM3L46_bcP0_bus_timer_DwenOn0_DUMMY6 := _zzM3L46_bcP0_bus_timer_DwenOn0;
    _zzM3L94_bcP1_bus_timer_DwenOn0_DUMMY7 := _zzM3L94_bcP1_bus_timer_DwenOn0;
    _zzM3L61_bcP2_bus_timer_DwenOn0_DUMMY8 := _zzM3L61_bcP2_bus_timer_DwenOn0;
    _zzM3L29_bus_timer_nbaTmp3_DUMMY5 := _zzbus_timer_M3L29_bcSvLt7 ;
    _zzM3L46_bcP0_bus_timer_DwenOn0_DUMMY6 := it_cond_op((_zzM3L46_bcP0_DOn
    )='1',_zzM3L46_bcP0_bus_timer_Dwen0,std_logic'('0')) ;
    _zzM3L29_bus_timer_nbaTmp3_DUMMY5 := it_cond_op(
    (_zzM3L46_bcP0_bus_timer_DwenOn0_DUMMY6
    )='1',_zzM3L46_bcP0_bus_timer_wr0,_zzM3L29_bus_timer_nbaTmp3_DUMMY5) ;
    _zzM3L94_bcP1_bus_timer_DwenOn0_DUMMY7 := it_cond_op((_zzM3L94_bcP1_DOn
    )='1',_zzM3L94_bcP1_bus_timer_Dwen0,std_logic'('0')) ;
    _zzM3L29_bus_timer_nbaTmp3_DUMMY5 := it_cond_op(
    (_zzM3L94_bcP1_bus_timer_DwenOn0_DUMMY7
    )='1',_zzM3L94_bcP1_bus_timer_wr0,_zzM3L29_bus_timer_nbaTmp3_DUMMY5) ;
    _zzM3L61_bcP2_bus_timer_DwenOn0_DUMMY8 := it_cond_op((_zzM3L61_bcP2_DOn
    )='1',_zzM3L61_bcP2_bus_timer_Dwen0,std_logic'('0')) ;
    _zzM3L29_bus_timer_nbaTmp3_DUMMY5 := it_cond_op(
    (_zzM3L61_bcP2_bus_timer_DwenOn0_DUMMY8
    )='1',_zzM3L61_bcP2_bus_timer_wr0,_zzM3L29_bus_timer_nbaTmp3_DUMMY5) ;
    if (_zzbcOne = '1') then
      bus_timer <= _zzM3L29_bus_timer_nbaTmp3_DUMMY5 ;
    end if;
    _zzM3L29_bus_timer_nbaTmp3 <= transport _zzM3L29_bus_timer_nbaTmp3_DUMMY5;
    _zzM3L46_bcP0_bus_timer_DwenOn0 <= _zzM3L46_bcP0_bus_timer_DwenOn0_DUMMY6;
    _zzM3L94_bcP1_bus_timer_DwenOn0 <= _zzM3L94_bcP1_bus_timer_DwenOn0_DUMMY7;
    _zzM3L61_bcP2_bus_timer_DwenOn0 <= _zzM3L61_bcP2_bus_timer_DwenOn0_DUMMY8;
  end process ;

  process --:o846
  (*)
    variable _zzM3L96__zydata_L96_tfiV1_M3_pbcG1_nbaTmp4_DUMMY9 :
     std_logic_vector(31 downto 0) ;
    variable _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_DwenOn1_DUMMY10 :
     std_logic ;
  begin
    _zzM3L96__zydata_L96_tfiV1_M3_pbcG1_nbaTmp4_DUMMY9 :=
     _zzM3L96__zydata_L96_tfiV1_M3_pbcG1_nbaTmp4;
    _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_DwenOn1_DUMMY10 :=
     _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_DwenOn1;
    _zzM3L96__zydata_L96_tfiV1_M3_pbcG1_nbaTmp4_DUMMY9 :=
     _zz_zydata_L96_tfiV1_M3_pbcG1_M3_bcSvLt8 ;
    _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_DwenOn1_DUMMY10 := it_cond_op(
    (_zzM3L94_bcP1_DOn
    )='1',_zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_Dwen1,std_logic'('0')) ;
    _zzM3L96__zydata_L96_tfiV1_M3_pbcG1_nbaTmp4_DUMMY9 := it_cond_op(
    (_zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_DwenOn1_DUMMY10
    )='1',_zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_wr1,_zzM3L96__zydata_L96_tfiV1_M3_pbcG1_nbaTmp4_DUMMY9
    ) ;
    if (_zzbcOne = '1') then
      _zydata_L96_tfiV1_M3_pbcG1 <=
       _zzM3L96__zydata_L96_tfiV1_M3_pbcG1_nbaTmp4_DUMMY9 ;
    end if;
    _zzM3L96__zydata_L96_tfiV1_M3_pbcG1_nbaTmp4 <= transport
     _zzM3L96__zydata_L96_tfiV1_M3_pbcG1_nbaTmp4_DUMMY9;
    _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_DwenOn1 <=
     _zzM3L94_bcP1__zydata_L96_tfiV1_M3_pbcG1_DwenOn1_DUMMY10;
  end process ;

  process --:o862
  (*)
    variable _zzM3L97__zyresponse_L97_tfiV2_M3_pbcG2_nbaTmp5_DUMMY11 : std_logic
     ;
    variable _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_DwenOn2_DUMMY12 :
     std_logic ;
  begin
    _zzM3L97__zyresponse_L97_tfiV2_M3_pbcG2_nbaTmp5_DUMMY11 :=
     _zzM3L97__zyresponse_L97_tfiV2_M3_pbcG2_nbaTmp5;
    _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_DwenOn2_DUMMY12 :=
     _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_DwenOn2;
    _zzM3L97__zyresponse_L97_tfiV2_M3_pbcG2_nbaTmp5_DUMMY11 :=
     _zz_zyresponse_L97_tfiV2_M3_pbcG2_M3_bcSvLt9 ;
    _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_DwenOn2_DUMMY12 := it_cond_op(
    (_zzM3L94_bcP1_DOn
    )='1',_zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_Dwen2,std_logic'('0')) ;
    _zzM3L97__zyresponse_L97_tfiV2_M3_pbcG2_nbaTmp5_DUMMY11 := it_cond_op(
    (_zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_DwenOn2_DUMMY12
    )='1',_zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_wr2,_zzM3L97__zyresponse_L97_tfiV2_M3_pbcG2_nbaTmp5_DUMMY11
    ) ;
    if (_zzbcOne = '1') then
      _zyresponse_L97_tfiV2_M3_pbcG2 <=
       _zzM3L97__zyresponse_L97_tfiV2_M3_pbcG2_nbaTmp5_DUMMY11 ;
    end if;
    _zzM3L97__zyresponse_L97_tfiV2_M3_pbcG2_nbaTmp5 <= transport
     _zzM3L97__zyresponse_L97_tfiV2_M3_pbcG2_nbaTmp5_DUMMY11;
    _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_DwenOn2 <=
     _zzM3L94_bcP1__zyresponse_L97_tfiV2_M3_pbcG2_DwenOn2_DUMMY12;
  end process ;

  process --:o878
  (*)
    variable _zzM3L64__zyresponse_L64_tfiV5_M3_pbcG5_nbaTmp6_DUMMY13 : std_logic
     ;
    variable _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_DwenOn1_DUMMY14 :
     std_logic ;
  begin
    _zzM3L64__zyresponse_L64_tfiV5_M3_pbcG5_nbaTmp6_DUMMY13 :=
     _zzM3L64__zyresponse_L64_tfiV5_M3_pbcG5_nbaTmp6;
    _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_DwenOn1_DUMMY14 :=
     _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_DwenOn1;
    _zzM3L64__zyresponse_L64_tfiV5_M3_pbcG5_nbaTmp6_DUMMY13 :=
     _zz_zyresponse_L64_tfiV5_M3_pbcG5_M3_bcSvLt10 ;
    _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_DwenOn1_DUMMY14 := it_cond_op(
    (_zzM3L61_bcP2_DOn
    )='1',_zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_Dwen1,std_logic'('0')) ;
    _zzM3L64__zyresponse_L64_tfiV5_M3_pbcG5_nbaTmp6_DUMMY13 := it_cond_op(
    (_zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_DwenOn1_DUMMY14
    )='1',_zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_wr1,_zzM3L64__zyresponse_L64_tfiV5_M3_pbcG5_nbaTmp6_DUMMY13
    ) ;
    if (_zzbcOne = '1') then
      _zyresponse_L64_tfiV5_M3_pbcG5 <=
       _zzM3L64__zyresponse_L64_tfiV5_M3_pbcG5_nbaTmp6_DUMMY13 ;
    end if;
    _zzM3L64__zyresponse_L64_tfiV5_M3_pbcG5_nbaTmp6 <= transport
     _zzM3L64__zyresponse_L64_tfiV5_M3_pbcG5_nbaTmp6_DUMMY13;
    _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_DwenOn1 <=
     _zzM3L61_bcP2__zyresponse_L64_tfiV5_M3_pbcG5_DwenOn1_DUMMY14;
  end process ;

  process --:o894
  (_zzM3_bcBehEvalClk)
  begin
    if (_zzM3_bcBehEvalClk'event and _zzM3_bcBehEvalClk = '1') then
      if (((_zyM3L94_pbcWait4)='1' or (_zyM3L61_pbcWait9)='1')) then
        if (nand_reduce(_zzM3_bcBehEval(30 downto 0)) = '1') then
          _zzM3_bcBehEval(30 downto 0) <= (_zzM3_bcBehEval(30 downto 0) +
           std_logic_vector'("0000000000000000000000000000001")) ;
        end if;
        _zzM3_bcBehEval(31) <= _zzM3_bcBehHalt ;
      end if;
    end if ;
  end process ;

  process --:o905
  (*)
    variable _zzM3L19_psel_mdxTmp0_DUMMY15 : std_logic ;
    variable _zzM3L46_mdxP0_psel_DwenOn0_DUMMY16 : std_logic ;
    variable _zzM3L94_mdxP1_psel_DwenOn0_DUMMY17 : std_logic ;
    variable _zzM3L61_mdxP2_psel_DwenOn0_DUMMY18 : std_logic ;
  begin
    _zzM3L19_psel_mdxTmp0_DUMMY15 := _zzM3L19_psel_mdxTmp0;
    _zzM3L46_mdxP0_psel_DwenOn0_DUMMY16 := _zzM3L46_mdxP0_psel_DwenOn0;
    _zzM3L94_mdxP1_psel_DwenOn0_DUMMY17 := _zzM3L94_mdxP1_psel_DwenOn0;
    _zzM3L61_mdxP2_psel_DwenOn0_DUMMY18 := _zzM3L61_mdxP2_psel_DwenOn0;
    _zzM3L19_psel_mdxTmp0_DUMMY15 := _zzpsel_M3L19_mdxSvLt5 ;
    _zzM3L46_mdxP0_psel_DwenOn0_DUMMY16 := it_cond_op((_zzM3L46_mdxP0_On
    )='1',_zzM3L46_mdxP0_psel_Dwen0,std_logic'('0')) ;
    _zzM3L19_psel_mdxTmp0_DUMMY15 := it_cond_op(
    (_zzM3L46_mdxP0_psel_DwenOn0_DUMMY16
    )='1',_zzM3L46_mdxP0_psel_wr0,_zzM3L19_psel_mdxTmp0_DUMMY15) ;
    _zzM3L94_mdxP1_psel_DwenOn0_DUMMY17 := it_cond_op((_zzM3L94_mdxP1_On
    )='1',_zzM3L94_mdxP1_psel_Dwen0,std_logic'('0')) ;
    _zzM3L19_psel_mdxTmp0_DUMMY15 := it_cond_op(
    (_zzM3L94_mdxP1_psel_DwenOn0_DUMMY17
    )='1',_zzM3L94_mdxP1_psel_wr0,_zzM3L19_psel_mdxTmp0_DUMMY15) ;
    _zzM3L61_mdxP2_psel_DwenOn0_DUMMY18 := it_cond_op((_zzM3L61_mdxP2_On
    )='1',_zzM3L61_mdxP2_psel_Dwen0,std_logic'('0')) ;
    _zzM3L19_psel_mdxTmp0_DUMMY15 := it_cond_op(
    (_zzM3L61_mdxP2_psel_DwenOn0_DUMMY18
    )='1',_zzM3L61_mdxP2_psel_wr0,_zzM3L19_psel_mdxTmp0_DUMMY15) ;
    if (_zzmdxOne = '1') then
      psel <= _zzM3L19_psel_mdxTmp0_DUMMY15 ;
    end if;
    _zzM3L19_psel_mdxTmp0 <= transport _zzM3L19_psel_mdxTmp0_DUMMY15;
    _zzM3L46_mdxP0_psel_DwenOn0 <= _zzM3L46_mdxP0_psel_DwenOn0_DUMMY16;
    _zzM3L94_mdxP1_psel_DwenOn0 <= _zzM3L94_mdxP1_psel_DwenOn0_DUMMY17;
    _zzM3L61_mdxP2_psel_DwenOn0 <= _zzM3L61_mdxP2_psel_DwenOn0_DUMMY18;
  end process ;

  process --:o925
  (*)
    variable _zzM3L20_penable_mdxTmp1_DUMMY19 : std_logic ;
    variable _zzM3L46_mdxP0_penable_DwenOn1_DUMMY20 : std_logic ;
    variable _zzM3L94_mdxP1_penable_DwenOn1_DUMMY21 : std_logic ;
    variable _zzM3L61_mdxP2_penable_DwenOn1_DUMMY22 : std_logic ;
  begin
    _zzM3L20_penable_mdxTmp1_DUMMY19 := _zzM3L20_penable_mdxTmp1;
    _zzM3L46_mdxP0_penable_DwenOn1_DUMMY20 := _zzM3L46_mdxP0_penable_DwenOn1;
    _zzM3L94_mdxP1_penable_DwenOn1_DUMMY21 := _zzM3L94_mdxP1_penable_DwenOn1;
    _zzM3L61_mdxP2_penable_DwenOn1_DUMMY22 := _zzM3L61_mdxP2_penable_DwenOn1;
    _zzM3L20_penable_mdxTmp1_DUMMY19 := _zzpenable_M3L20_mdxSvLt6 ;
    _zzM3L46_mdxP0_penable_DwenOn1_DUMMY20 := it_cond_op((_zzM3L46_mdxP0_On
    )='1',_zzM3L46_mdxP0_penable_Dwen1,std_logic'('0')) ;
    _zzM3L20_penable_mdxTmp1_DUMMY19 := it_cond_op(
    (_zzM3L46_mdxP0_penable_DwenOn1_DUMMY20
    )='1',_zzM3L46_mdxP0_penable_wr1,_zzM3L20_penable_mdxTmp1_DUMMY19) ;
    _zzM3L94_mdxP1_penable_DwenOn1_DUMMY21 := it_cond_op((_zzM3L94_mdxP1_On
    )='1',_zzM3L94_mdxP1_penable_Dwen1,std_logic'('0')) ;
    _zzM3L20_penable_mdxTmp1_DUMMY19 := it_cond_op(
    (_zzM3L94_mdxP1_penable_DwenOn1_DUMMY21
    )='1',_zzM3L94_mdxP1_penable_wr1,_zzM3L20_penable_mdxTmp1_DUMMY19) ;
    _zzM3L61_mdxP2_penable_DwenOn1_DUMMY22 := it_cond_op((_zzM3L61_mdxP2_On
    )='1',_zzM3L61_mdxP2_penable_Dwen1,std_logic'('0')) ;
    _zzM3L20_penable_mdxTmp1_DUMMY19 := it_cond_op(
    (_zzM3L61_mdxP2_penable_DwenOn1_DUMMY22
    )='1',_zzM3L61_mdxP2_penable_wr1,_zzM3L20_penable_mdxTmp1_DUMMY19) ;
    if (_zzmdxOne = '1') then
      penable <= _zzM3L20_penable_mdxTmp1_DUMMY19 ;
    end if;
    _zzM3L20_penable_mdxTmp1 <= transport _zzM3L20_penable_mdxTmp1_DUMMY19;
    _zzM3L46_mdxP0_penable_DwenOn1 <= _zzM3L46_mdxP0_penable_DwenOn1_DUMMY20;
    _zzM3L94_mdxP1_penable_DwenOn1 <= _zzM3L94_mdxP1_penable_DwenOn1_DUMMY21;
    _zzM3L61_mdxP2_penable_DwenOn1 <= _zzM3L61_mdxP2_penable_DwenOn1_DUMMY22;
  end process ;

  process --:o945
  (*)
    variable _zzM3L23_pwrite_mdxTmp2_DUMMY23 : std_logic ;
    variable _zzM3L46_mdxP0_pwrite_DwenOn2_DUMMY24 : std_logic ;
    variable _zzM3L94_mdxP1_pwrite_DwenOn2_DUMMY25 : std_logic ;
    variable _zzM3L61_mdxP2_pwrite_DwenOn2_DUMMY26 : std_logic ;
  begin
    _zzM3L23_pwrite_mdxTmp2_DUMMY23 := _zzM3L23_pwrite_mdxTmp2;
    _zzM3L46_mdxP0_pwrite_DwenOn2_DUMMY24 := _zzM3L46_mdxP0_pwrite_DwenOn2;
    _zzM3L94_mdxP1_pwrite_DwenOn2_DUMMY25 := _zzM3L94_mdxP1_pwrite_DwenOn2;
    _zzM3L61_mdxP2_pwrite_DwenOn2_DUMMY26 := _zzM3L61_mdxP2_pwrite_DwenOn2;
    _zzM3L23_pwrite_mdxTmp2_DUMMY23 := _zzpwrite_M3L23_mdxSvLt7 ;
    _zzM3L46_mdxP0_pwrite_DwenOn2_DUMMY24 := it_cond_op((_zzM3L46_mdxP0_On
    )='1',_zzM3L46_mdxP0_pwrite_Dwen2,std_logic'('0')) ;
    _zzM3L23_pwrite_mdxTmp2_DUMMY23 := it_cond_op(
    (_zzM3L46_mdxP0_pwrite_DwenOn2_DUMMY24
    )='1',_zzM3L46_mdxP0_pwrite_wr2,_zzM3L23_pwrite_mdxTmp2_DUMMY23) ;
    _zzM3L94_mdxP1_pwrite_DwenOn2_DUMMY25 := it_cond_op((_zzM3L94_mdxP1_On
    )='1',_zzM3L94_mdxP1_pwrite_Dwen2,std_logic'('0')) ;
    _zzM3L23_pwrite_mdxTmp2_DUMMY23 := it_cond_op(
    (_zzM3L94_mdxP1_pwrite_DwenOn2_DUMMY25
    )='1',_zzM3L94_mdxP1_pwrite_wr2,_zzM3L23_pwrite_mdxTmp2_DUMMY23) ;
    _zzM3L61_mdxP2_pwrite_DwenOn2_DUMMY26 := it_cond_op((_zzM3L61_mdxP2_On
    )='1',_zzM3L61_mdxP2_pwrite_Dwen2,std_logic'('0')) ;
    _zzM3L23_pwrite_mdxTmp2_DUMMY23 := it_cond_op(
    (_zzM3L61_mdxP2_pwrite_DwenOn2_DUMMY26
    )='1',_zzM3L61_mdxP2_pwrite_wr2,_zzM3L23_pwrite_mdxTmp2_DUMMY23) ;
    if (_zzmdxOne = '1') then
      pwrite <= _zzM3L23_pwrite_mdxTmp2_DUMMY23 ;
    end if;
    _zzM3L23_pwrite_mdxTmp2 <= transport _zzM3L23_pwrite_mdxTmp2_DUMMY23;
    _zzM3L46_mdxP0_pwrite_DwenOn2 <= _zzM3L46_mdxP0_pwrite_DwenOn2_DUMMY24;
    _zzM3L94_mdxP1_pwrite_DwenOn2 <= _zzM3L94_mdxP1_pwrite_DwenOn2_DUMMY25;
    _zzM3L61_mdxP2_pwrite_DwenOn2 <= _zzM3L61_mdxP2_pwrite_DwenOn2_DUMMY26;
  end process ;

  process --:o965
  (*)
    variable _zzM3L21_paddr_mdxTmp3_DUMMY27 : std_logic_vector(19 downto 0) ;
    variable _zzM3L46_mdxP0_paddr_DwenOn3_DUMMY28 : std_logic ;
    variable _zzM3L94_mdxP1_paddr_DwenOn3_DUMMY29 : std_logic ;
    variable _zzM3L61_mdxP2_paddr_DwenOn3_DUMMY30 : std_logic ;
  begin
    _zzM3L21_paddr_mdxTmp3_DUMMY27 := _zzM3L21_paddr_mdxTmp3;
    _zzM3L46_mdxP0_paddr_DwenOn3_DUMMY28 := _zzM3L46_mdxP0_paddr_DwenOn3;
    _zzM3L94_mdxP1_paddr_DwenOn3_DUMMY29 := _zzM3L94_mdxP1_paddr_DwenOn3;
    _zzM3L61_mdxP2_paddr_DwenOn3_DUMMY30 := _zzM3L61_mdxP2_paddr_DwenOn3;
    _zzM3L21_paddr_mdxTmp3_DUMMY27 := _zzpaddr_M3L21_mdxSvLt8 ;
    _zzM3L46_mdxP0_paddr_DwenOn3_DUMMY28 := it_cond_op((_zzM3L46_mdxP0_On
    )='1',_zzM3L46_mdxP0_paddr_Dwen3,std_logic'('0')) ;
    _zzM3L21_paddr_mdxTmp3_DUMMY27 := it_cond_op(
    (_zzM3L46_mdxP0_paddr_DwenOn3_DUMMY28
    )='1',_zzM3L46_mdxP0_paddr_wr3,_zzM3L21_paddr_mdxTmp3_DUMMY27) ;
    _zzM3L94_mdxP1_paddr_DwenOn3_DUMMY29 := it_cond_op((_zzM3L94_mdxP1_On
    )='1',_zzM3L94_mdxP1_paddr_Dwen3,std_logic'('0')) ;
    _zzM3L21_paddr_mdxTmp3_DUMMY27 := it_cond_op(
    (_zzM3L94_mdxP1_paddr_DwenOn3_DUMMY29
    )='1',_zzM3L94_mdxP1_paddr_wr3,_zzM3L21_paddr_mdxTmp3_DUMMY27) ;
    _zzM3L61_mdxP2_paddr_DwenOn3_DUMMY30 := it_cond_op((_zzM3L61_mdxP2_On
    )='1',_zzM3L61_mdxP2_paddr_Dwen3,std_logic'('0')) ;
    _zzM3L21_paddr_mdxTmp3_DUMMY27 := it_cond_op(
    (_zzM3L61_mdxP2_paddr_DwenOn3_DUMMY30
    )='1',_zzM3L61_mdxP2_paddr_wr3,_zzM3L21_paddr_mdxTmp3_DUMMY27) ;
    if (_zzmdxOne = '1') then
      paddr <= _zzM3L21_paddr_mdxTmp3_DUMMY27 ;
    end if;
    _zzM3L21_paddr_mdxTmp3 <= transport _zzM3L21_paddr_mdxTmp3_DUMMY27;
    _zzM3L46_mdxP0_paddr_DwenOn3 <= _zzM3L46_mdxP0_paddr_DwenOn3_DUMMY28;
    _zzM3L94_mdxP1_paddr_DwenOn3 <= _zzM3L94_mdxP1_paddr_DwenOn3_DUMMY29;
    _zzM3L61_mdxP2_paddr_DwenOn3 <= _zzM3L61_mdxP2_paddr_DwenOn3_DUMMY30;
  end process ;

  process --:o985
  (*)
    variable _zzM3L22_pwdata_mdxTmp4_DUMMY31 : std_logic_vector(31 downto 0) ;
    variable _zzM3L46_mdxP0_pwdata_DwenOn4_DUMMY32 : std_logic ;
    variable _zzM3L61_mdxP2_pwdata_DwenOn4_DUMMY33 : std_logic ;
  begin
    _zzM3L22_pwdata_mdxTmp4_DUMMY31 := _zzM3L22_pwdata_mdxTmp4;
    _zzM3L46_mdxP0_pwdata_DwenOn4_DUMMY32 := _zzM3L46_mdxP0_pwdata_DwenOn4;
    _zzM3L61_mdxP2_pwdata_DwenOn4_DUMMY33 := _zzM3L61_mdxP2_pwdata_DwenOn4;
    _zzM3L22_pwdata_mdxTmp4_DUMMY31 := _zzpwdata_M3L22_mdxSvLt9 ;
    _zzM3L46_mdxP0_pwdata_DwenOn4_DUMMY32 := it_cond_op((_zzM3L46_mdxP0_On
    )='1',_zzM3L46_mdxP0_pwdata_Dwen4,std_logic'('0')) ;
    _zzM3L22_pwdata_mdxTmp4_DUMMY31 := it_cond_op(
    (_zzM3L46_mdxP0_pwdata_DwenOn4_DUMMY32
    )='1',_zzM3L46_mdxP0_pwdata_wr4,_zzM3L22_pwdata_mdxTmp4_DUMMY31) ;
    _zzM3L61_mdxP2_pwdata_DwenOn4_DUMMY33 := it_cond_op((_zzM3L61_mdxP2_On
    )='1',_zzM3L61_mdxP2_pwdata_Dwen4,std_logic'('0')) ;
    _zzM3L22_pwdata_mdxTmp4_DUMMY31 := it_cond_op(
    (_zzM3L61_mdxP2_pwdata_DwenOn4_DUMMY33
    )='1',_zzM3L61_mdxP2_pwdata_wr4,_zzM3L22_pwdata_mdxTmp4_DUMMY31) ;
    if (_zzmdxOne = '1') then
      pwdata <= _zzM3L22_pwdata_mdxTmp4_DUMMY31 ;
    end if;
    _zzM3L22_pwdata_mdxTmp4 <= transport _zzM3L22_pwdata_mdxTmp4_DUMMY31;
    _zzM3L46_mdxP0_pwdata_DwenOn4 <= _zzM3L46_mdxP0_pwdata_DwenOn4_DUMMY32;
    _zzM3L61_mdxP2_pwdata_DwenOn4 <= _zzM3L61_mdxP2_pwdata_DwenOn4_DUMMY33;
  end process ;
end module;
