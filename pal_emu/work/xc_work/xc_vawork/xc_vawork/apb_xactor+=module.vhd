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

  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic_vector(0 to 19) ;
  signal DUMMY3 : std_logic_vector(0 to 31) ;
  signal DUMMY4 : std_logic ;
  signal _zyixc_port_0_0_s2hW : std_logic_vector(95 downto 0) ;
  signal _zyixc_port_0_1_s2hW : std_logic_vector(63 downto 0) ;
  signal _zyM2L61_pbcMevClk4 : std_logic ;
  signal _zyM2L61_pbcReq4 : std_logic ;
  signal _zyM2L61_pbcBusy4 : std_logic ;
  signal _zyM2L61_pbcWait4 : std_logic ;
  signal _zyM2L94_pbcMevClk9 : std_logic ;
  signal _zyM2L94_pbcReq9 : std_logic ;
  signal _zyM2L94_pbcBusy9 : std_logic ;
  signal _zyM2L94_pbcWait9 : std_logic ;
  signal _zzM2_bcBehEvalClk : std_logic ;
  signal _zzM2_bcBehHalt : std_logic ;
  signal _zzmdxOne : std_logic ;
  signal _zzM2L46_mdxP0_EnNxt : std_logic ;
  signal _zzM2L46_mdxP0_On : std_logic ;
  signal _zzM2L61_mdxP1_EnNxt : std_logic ;
  signal _zzM2L61_mdxP1_On : std_logic ;
  signal _zzM2L94_mdxP2_EnNxt : std_logic ;
  signal _zzM2L94_mdxP2_On : std_logic ;
  signal bus_timer : std_logic_vector(7 downto 0) ;
  signal _zyixc_port_0_0_h2s : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of _zyixc_port_0_0_h2s: signal is 1 ;
  signal _zyixc_port_0_0_s2h : std_logic_vector(95 downto 0) ;
  attribute _2_state_ of _zyixc_port_0_0_s2h: signal is 1 ;
  signal _zyixc_port_0_0_req : std_logic ;
  attribute _2_state_ of _zyixc_port_0_0_req: signal is 1 ;
  signal _zyixc_port_0_0_ack : std_logic ;
  attribute _2_state_ of _zyixc_port_0_0_ack: signal is 1 ;
  signal _zyixc_port_0_0_isf : std_logic ;
  attribute _2_state_ of _zyixc_port_0_0_isf: signal is 1 ;
  signal _zyixc_port_0_0_osf : std_logic ;
  attribute _2_state_ of _zyixc_port_0_0_osf: signal is 1 ;
  signal _zyixc_port_0_1_h2s : std_logic_vector(39 downto 0) ;
  attribute _2_state_ of _zyixc_port_0_1_h2s: signal is 1 ;
  signal _zyixc_port_0_1_s2h : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of _zyixc_port_0_1_s2h: signal is 1 ;
  signal _zyixc_port_0_1_req : std_logic ;
  attribute _2_state_ of _zyixc_port_0_1_req: signal is 1 ;
  signal _zyixc_port_0_1_ack : std_logic ;
  attribute _2_state_ of _zyixc_port_0_1_ack: signal is 1 ;
  signal _zyixc_port_0_1_isf : std_logic ;
  attribute _2_state_ of _zyixc_port_0_1_isf: signal is 1 ;
  signal _zyixc_port_0_1_osf : std_logic ;
  attribute _2_state_ of _zyixc_port_0_1_osf: signal is 1 ;
  signal _zyaddr_L62_tfiV0_M2_pbcG0 : std_logic_vector(63 downto 0) ;
  signal _zydata_L63_tfiV1_M2_pbcG1 : std_logic_vector(31 downto 0) ;
  signal _zyresponse_L64_tfiV2_M2_pbcG2 : std_logic ;
  signal _zyaddr_L95_tfiV3_M2_pbcG3 : std_logic_vector(63 downto 0) ;
  signal _zydata_L96_tfiV4_M2_pbcG4 : std_logic_vector(31 downto 0) ;
  signal _zyresponse_L97_tfiV5_M2_pbcG5 : std_logic ;
  signal _zyM2L61_pbcCapEn0 : std_logic ;
  signal _zyM2L73_pbcCapEn1 : std_logic ;
  signal _zyM2L79_pbcCapEn2 : std_logic ;
  signal _zyM2L90_pbcCapEn3 : std_logic ;
  signal _zyM2L94_pbcCapEn5 : std_logic ;
  signal _zyM2L104_pbcCapEn6 : std_logic ;
  signal _zyM2L110_pbcCapEn7 : std_logic ;
  signal _zyM2L121_pbcCapEn8 : std_logic ;
  signal _zyM2L61_pbcFsm0_s : std_logic_vector(2 downto 0) ;
  signal _zyM2L61_pbcEn10 : std_logic ;
  signal _zyM2L94_pbcFsm3_s : std_logic_vector(2 downto 0) ;
  signal _zyM2L94_pbcEn11 : std_logic ;
  signal _zzM2_bcBehEval : std_logic_vector(31 downto 0) ;
  signal _zzM2L19_psel_mdxTmp0 : std_logic ;
  signal _zzM2L20_penable_mdxTmp1 : std_logic ;
  signal _zzM2L23_pwrite_mdxTmp2 : std_logic ;
  signal _zzM2L21_paddr_mdxTmp3 : std_logic_vector(19 downto 0) ;
  signal _zzM2L22_pwdata_mdxTmp4 : std_logic_vector(31 downto 0) ;
  signal _zzM2L29_bus_timer_mdxTmp5 : std_logic_vector(7 downto 0) ;
  signal _zzM2L46_mdxP0_En : std_logic ;
  signal _zzM2L46_mdxP0_psel_wr0 : std_logic ;
  signal _zzM2L46_mdxP0_psel_Dwen0 : std_logic ;
  signal _zzM2L46_mdxP0_psel_DwenOn0 : std_logic ;
  signal _zzM2L46_mdxP0_penable_wr1 : std_logic ;
  signal _zzM2L46_mdxP0_penable_Dwen1 : std_logic ;
  signal _zzM2L46_mdxP0_penable_DwenOn1 : std_logic ;
  signal _zzM2L46_mdxP0_pwrite_wr2 : std_logic ;
  signal _zzM2L46_mdxP0_pwrite_Dwen2 : std_logic ;
  signal _zzM2L46_mdxP0_pwrite_DwenOn2 : std_logic ;
  signal _zzM2L46_mdxP0_paddr_wr3 : std_logic_vector(19 downto 0) ;
  signal _zzM2L46_mdxP0_paddr_Dwen3 : std_logic ;
  signal _zzM2L46_mdxP0_paddr_DwenOn3 : std_logic ;
  signal _zzM2L46_mdxP0_pwdata_wr4 : std_logic_vector(31 downto 0) ;
  signal _zzM2L46_mdxP0_pwdata_Dwen4 : std_logic ;
  signal _zzM2L46_mdxP0_pwdata_DwenOn4 : std_logic ;
  signal _zzM2L46_mdxP0_bus_timer_wr5 : std_logic_vector(7 downto 0) ;
  signal _zzM2L46_mdxP0_bus_timer_Dwen5 : std_logic ;
  signal _zzM2L46_mdxP0_bus_timer_DwenOn5 : std_logic ;
  signal _zzM2L61_mdxP1_En : std_logic ;
  signal _zzM2L61_mdxP1_psel_wr0 : std_logic ;
  signal _zzM2L61_mdxP1_psel_Dwen0 : std_logic ;
  signal _zzM2L61_mdxP1_psel_DwenOn0 : std_logic ;
  signal _zzM2L61_mdxP1_penable_wr1 : std_logic ;
  signal _zzM2L61_mdxP1_penable_Dwen1 : std_logic ;
  signal _zzM2L61_mdxP1_penable_DwenOn1 : std_logic ;
  signal _zzM2L61_mdxP1_pwrite_wr2 : std_logic ;
  signal _zzM2L61_mdxP1_pwrite_Dwen2 : std_logic ;
  signal _zzM2L61_mdxP1_pwrite_DwenOn2 : std_logic ;
  signal _zzM2L61_mdxP1_paddr_wr3 : std_logic_vector(19 downto 0) ;
  signal _zzM2L61_mdxP1_paddr_Dwen3 : std_logic ;
  signal _zzM2L61_mdxP1_paddr_DwenOn3 : std_logic ;
  signal _zzM2L61_mdxP1_pwdata_wr4 : std_logic_vector(31 downto 0) ;
  signal _zzM2L61_mdxP1_pwdata_Dwen4 : std_logic ;
  signal _zzM2L61_mdxP1_pwdata_DwenOn4 : std_logic ;
  signal _zzM2L61_mdxP1_bus_timer_wr5 : std_logic_vector(7 downto 0) ;
  signal _zzM2L61_mdxP1_bus_timer_Dwen5 : std_logic ;
  signal _zzM2L61_mdxP1_bus_timer_DwenOn5 : std_logic ;
  signal _zzM2L94_mdxP2_En : std_logic ;
  signal _zzM2L94_mdxP2_psel_wr0 : std_logic ;
  signal _zzM2L94_mdxP2_psel_Dwen0 : std_logic ;
  signal _zzM2L94_mdxP2_psel_DwenOn0 : std_logic ;
  signal _zzM2L94_mdxP2_penable_wr1 : std_logic ;
  signal _zzM2L94_mdxP2_penable_Dwen1 : std_logic ;
  signal _zzM2L94_mdxP2_penable_DwenOn1 : std_logic ;
  signal _zzM2L94_mdxP2_pwrite_wr2 : std_logic ;
  signal _zzM2L94_mdxP2_pwrite_Dwen2 : std_logic ;
  signal _zzM2L94_mdxP2_pwrite_DwenOn2 : std_logic ;
  signal _zzM2L94_mdxP2_paddr_wr3 : std_logic_vector(19 downto 0) ;
  signal _zzM2L94_mdxP2_paddr_Dwen3 : std_logic ;
  signal _zzM2L94_mdxP2_paddr_DwenOn3 : std_logic ;
  signal _zzM2L94_mdxP2_bus_timer_wr4 : std_logic_vector(7 downto 0) ;
  signal _zzM2L94_mdxP2_bus_timer_Dwen4 : std_logic ;
  signal _zzM2L94_mdxP2_bus_timer_DwenOn4 : std_logic ;
  signal _zzpsel_M2L19_mdxSvLt6 : std_logic ;
  signal _zzpenable_M2L20_mdxSvLt7 : std_logic ;
  signal _zzpwrite_M2L23_mdxSvLt8 : std_logic ;
  signal _zzpaddr_M2L21_mdxSvLt9 : std_logic_vector(19 downto 0) ;
  signal _zzpwdata_M2L22_mdxSvLt10 : std_logic_vector(31 downto 0) ;
  signal _zzbus_timer_M2L29_mdxSvLt11 : std_logic_vector(7 downto 0) ;
  signal DUMMY5 : std_logic_vector(0 downto 0) ;
  signal DUMMY6 : std_logic_vector(0 downto 0) ;
  signal DUMMY7 : std_logic_vector(0 downto 0) ;
  signal DUMMY8 : std_logic_vector(0 downto 0) ;
  signal DUMMY9 : std_logic_vector(1 downto 0) ;
  signal DUMMY10 : std_logic_vector(1 downto 0) ;
  signal DUMMY11 : std_logic_vector(1 downto 0) ;
  signal DUMMY12 : std_logic_vector(1 downto 0) ;
  signal DUMMY13 : std_logic_vector(0 downto 0) ;
  -- quickturn keep_net bus_timer
  -- quickturn keep_net _zyM2L61_pbcCapEn0
  -- quickturn keep_net _zyM2L73_pbcCapEn1
  -- quickturn keep_net _zyM2L79_pbcCapEn2
  -- quickturn keep_net _zyM2L90_pbcCapEn3
  -- quickturn keep_net _zyM2L94_pbcCapEn5
  -- quickturn keep_net _zyM2L104_pbcCapEn6
  -- quickturn keep_net _zyM2L110_pbcCapEn7
  -- quickturn keep_net _zyM2L121_pbcCapEn8
  -- quickturn keep_net _zyM2L61_pbcFsm0_s
  -- quickturn keep_net _zyM2L94_pbcFsm3_s
  -- quickturn keep_net _zzM2_bcBehEval

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
  _zzixc_tfport_0_0 : ixc_mem_call
    generic map(S2HDW => integer_to_std(96,32),H2SDW => integer_to_std(8,32
    ),MAIDW => integer_to_std(0,32),LTIDW => integer_to_std(0,32))
    port map (
       _zyixc_port_0_0_req
      ,_zyixc_port_0_0_s2h
      ,_zyixc_port_0_0_isf
      ,_zyixc_port_0_0_ack
      ,_zyixc_port_0_0_h2s
      ,_zyixc_port_0_0_osf
      ,DUMMY5
      ,DUMMY6
    ) ;
  DUMMY5 <= std_logic_vector'("0") ;
  DUMMY6 <= std_logic_vector'("0") ;
  _zzixc_tfport_0_1 : ixc_mem_call
    generic map(S2HDW => integer_to_std(64,32),H2SDW => integer_to_std(40,32
    ),MAIDW => integer_to_std(0,32),LTIDW => integer_to_std(0,32))
    port map (
       _zyixc_port_0_1_req
      ,_zyixc_port_0_1_s2h
      ,_zyixc_port_0_1_isf
      ,_zyixc_port_0_1_ack
      ,_zyixc_port_0_1_h2s
      ,_zyixc_port_0_1_osf
      ,DUMMY7
      ,DUMMY8
    ) ;
  DUMMY7 <= std_logic_vector'("0") ;
  DUMMY8 <= std_logic_vector'("0") ;
  _zzM2L61_pbcMevClk4 : ixc_mevClk
    generic map(WIDTH => integer_to_std(2,32),DUMMY3 => integer_to_std(0,32
    ),HOLD => 0,IS_EDGED => std_logic_vector'("01"),POLARITY =>
     std_logic_vector'("00"),DS => std_logic_vector'("00"),DM =>
     std_logic_vector'("00"),EVOUT => std_logic_vector'("00"),WAIT_EV =>
     std_logic_vector'("00"))
    port map (
       _zyM2L61_pbcMevClk4
      ,DUMMY9
      ,DUMMY10
      ,std_logic'('0')
      ,std_logic'('0')
      ,_zyM2L61_pbcReq4
      ,_zyM2L61_pbcBusy4
      ,_zyM2L61_pbcWait4
    ) ;
  DUMMY9 <= std_logic_vector'(_zyixc_port_0_0_req & clk) ;
  DUMMY10 <= std_logic_vector'(_zyM2L61_pbcCapEn0 & ((_zyM2L73_pbcCapEn1 or
   _zyM2L79_pbcCapEn2) or _zyM2L90_pbcCapEn3)) ;
  _zzM2L94_pbcMevClk9 : ixc_mevClk
    generic map(WIDTH => integer_to_std(2,32),DUMMY3 => integer_to_std(0,32
    ),HOLD => 0,IS_EDGED => std_logic_vector'("01"),POLARITY =>
     std_logic_vector'("00"),DS => std_logic_vector'("00"),DM =>
     std_logic_vector'("00"),EVOUT => std_logic_vector'("00"),WAIT_EV =>
     std_logic_vector'("00"))
    port map (
       _zyM2L94_pbcMevClk9
      ,DUMMY11
      ,DUMMY12
      ,std_logic'('0')
      ,std_logic'('0')
      ,_zyM2L94_pbcReq9
      ,_zyM2L94_pbcBusy9
      ,_zyM2L94_pbcWait9
    ) ;
  DUMMY11 <= std_logic_vector'(_zyixc_port_0_1_req & clk) ;
  DUMMY12 <= std_logic_vector'(_zyM2L94_pbcCapEn5 & ((_zyM2L104_pbcCapEn6 or
   _zyM2L110_pbcCapEn7) or _zyM2L121_pbcCapEn8)) ;
  _zzM2L10_bcBehEvalP0 : ixc_capLoopXp
    port map (
       _zzM2_bcBehEvalClk
      ,std_logic'('0')
      ,open
      ,_zzM2_bcBehHalt
    ) ;
  _zzM2L46_mdxP0_OnP : ixc_mdrOn
    port map (
       _zzM2L46_mdxP0_On
      ,_zzM2L46_mdxP0_EnNxt
      ,_zzM2L46_mdxP0_En
    ) ;
  _zzM2L61_mdxP1_OnP : ixc_mdrOn
    port map (
       _zzM2L61_mdxP1_On
      ,_zzM2L61_mdxP1_EnNxt
      ,_zzM2L61_mdxP1_En
    ) ;
  _zzM2L94_mdxP2_OnP : ixc_mdrOn
    port map (
       _zzM2L94_mdxP2_On
      ,_zzM2L94_mdxP2_EnNxt
      ,_zzM2L94_mdxP2_En
    ) ;
  _zzpsel_M2L19_mdxSpLt6 : ixc_sampleLT
    generic map(WIDTH => 1)
    port map (
       _zzpsel_M2L19_mdxSvLt6
      ,psel
    ) ;
  _zzpenable_M2L20_mdxSpLt7 : ixc_sampleLT
    generic map(WIDTH => 1)
    port map (
       _zzpenable_M2L20_mdxSvLt7
      ,penable
    ) ;
  _zzpwrite_M2L23_mdxSpLt8 : ixc_sampleLT
    generic map(WIDTH => 1)
    port map (
       _zzpwrite_M2L23_mdxSvLt8
      ,pwrite
    ) ;
  _zzpaddr_M2L21_mdxSpLt9 : ixc_sampleLT
    generic map(WIDTH => 20)
    port map (
       _zzpaddr_M2L21_mdxSvLt9
      ,paddr
    ) ;
  _zzpwdata_M2L22_mdxSpLt10 : ixc_sampleLT
    generic map(WIDTH => 32)
    port map (
       _zzpwdata_M2L22_mdxSvLt10
      ,pwdata
    ) ;
  _zzbus_timer_M2L29_mdxSpLt11 : ixc_sampleLT
    generic map(WIDTH => 8)
    port map (
       _zzbus_timer_M2L29_mdxSvLt11
      ,bus_timer
    ) ;
  _zzmdx1 : ixc_assign
    port map (
       _zzmdxOne
      ,DUMMY13
    ) ;
  DUMMY13 <= std_logic_vector'("1") ;

  process --:o207
  (clk)
  begin
    if (clk'event and clk = '1') then
      _zzM2L46_mdxP0_psel_Dwen0 <= '0' ;
      _zzM2L46_mdxP0_penable_Dwen1 <= '0' ;
      _zzM2L46_mdxP0_pwrite_Dwen2 <= '0' ;
      _zzM2L46_mdxP0_paddr_Dwen3 <= '0' ;
      _zzM2L46_mdxP0_pwdata_Dwen4 <= '0' ;
      _zzM2L46_mdxP0_bus_timer_Dwen5 <= '0' ;
      if ((reset_n = '0')) then
        _zzM2L46_mdxP0_bus_timer_wr5 <= "00000000" ;
        _zzM2L46_mdxP0_bus_timer_Dwen5 <= '1' ;
        _zzM2L46_mdxP0_En <= _zzM2L46_mdxP0_EnNxt ;
        _zzM2L46_mdxP0_psel_wr0 <= '0' ;
        _zzM2L46_mdxP0_psel_Dwen0 <= '1' ;
        _zzM2L46_mdxP0_En <= _zzM2L46_mdxP0_EnNxt ;
        _zzM2L46_mdxP0_penable_wr1 <= '0' ;
        _zzM2L46_mdxP0_penable_Dwen1 <= '1' ;
        _zzM2L46_mdxP0_En <= _zzM2L46_mdxP0_EnNxt ;
        _zzM2L46_mdxP0_paddr_wr3 <= "00000000000000000000" ;
        _zzM2L46_mdxP0_paddr_Dwen3 <= '1' ;
        _zzM2L46_mdxP0_En <= _zzM2L46_mdxP0_EnNxt ;
        _zzM2L46_mdxP0_pwdata_wr4 <= "00000000000000000000000000000000" ;
        _zzM2L46_mdxP0_pwdata_Dwen4 <= '1' ;
        _zzM2L46_mdxP0_En <= _zzM2L46_mdxP0_EnNxt ;
        _zzM2L46_mdxP0_pwrite_wr2 <= '0' ;
        _zzM2L46_mdxP0_pwrite_Dwen2 <= '1' ;
        _zzM2L46_mdxP0_En <= _zzM2L46_mdxP0_EnNxt ;
      end if;
    end if ;
  end process ;

  process --:o271
  (_zyM2L61_pbcMevClk4)
    variable _zyaddr_L62_tfiV0_M2_pbcG0_DUMMY0 : std_logic_vector(63 downto 0) ;
    variable _zydata_L63_tfiV1_M2_pbcG1_DUMMY1 : std_logic_vector(31 downto 0) ;
    variable _zyM2L61_pbcEn10_DUMMY2 : std_logic ;
  begin
    if (_zyM2L61_pbcMevClk4'event and _zyM2L61_pbcMevClk4 = '1') then
      _zzM2L61_mdxP1_psel_Dwen0 <= '0' ;
      _zzM2L61_mdxP1_penable_Dwen1 <= '0' ;
      _zzM2L61_mdxP1_pwrite_Dwen2 <= '0' ;
      _zzM2L61_mdxP1_paddr_Dwen3 <= '0' ;
      _zzM2L61_mdxP1_pwdata_Dwen4 <= '0' ;
      _zzM2L61_mdxP1_bus_timer_Dwen5 <= '0' ;

      case _zyM2L61_pbcFsm0_s is
        when  "000"  =>
          _zyM2L61_pbcCapEn0 <= '0' ;
          _zyaddr_L62_tfiV0_M2_pbcG0_DUMMY0 := _zyixc_port_0_0_s2h(63 downto 0)
           ;
          _zydata_L63_tfiV1_M2_pbcG1_DUMMY1 := _zyixc_port_0_0_s2h(95 downto 64)
           ;
          _zzM2L61_mdxP1_psel_wr0 <= '1' ;
          _zzM2L61_mdxP1_psel_Dwen0 <= '1' ;
          _zzM2L61_mdxP1_En <= _zzM2L61_mdxP1_EnNxt ;
          _zzM2L61_mdxP1_penable_wr1 <= '0' ;
          _zzM2L61_mdxP1_penable_Dwen1 <= '1' ;
          _zzM2L61_mdxP1_En <= _zzM2L61_mdxP1_EnNxt ;
          _zzM2L61_mdxP1_pwrite_wr2 <= '1' ;
          _zzM2L61_mdxP1_pwrite_Dwen2 <= '1' ;
          _zzM2L61_mdxP1_En <= _zzM2L61_mdxP1_EnNxt ;
          _zzM2L61_mdxP1_paddr_wr3 <= ext(_zyaddr_L62_tfiV0_M2_pbcG0_DUMMY0(31
           downto 0),20) ;
          _zzM2L61_mdxP1_paddr_Dwen3 <= '1' ;
          _zzM2L61_mdxP1_En <= _zzM2L61_mdxP1_EnNxt ;
          _zzM2L61_mdxP1_pwdata_wr4 <= _zydata_L63_tfiV1_M2_pbcG1_DUMMY1 ;
          _zzM2L61_mdxP1_pwdata_Dwen4 <= '1' ;
          _zzM2L61_mdxP1_En <= _zzM2L61_mdxP1_EnNxt ;
          _zyM2L73_pbcCapEn1 <= '1' ;
          _zyM2L61_pbcFsm0_s <= "001" ;
        when  "001"  =>
          _zyM2L61_pbcEn10_DUMMY2 := '1' ;
          _zyM2L73_pbcCapEn1 <= '0' ;
          _zzM2L61_mdxP1_penable_wr1 <= '1' ;
          _zzM2L61_mdxP1_penable_Dwen1 <= '1' ;
          _zzM2L61_mdxP1_En <= _zzM2L61_mdxP1_EnNxt ;
          if (((pready = '0') and ext(bus_timer,32) < std_logic_vector'
          ("00000000000000000000000001100100"))) then
            _zzM2L61_mdxP1_bus_timer_wr5 <= ext((ext(bus_timer,32) +
             std_logic_vector'("00000000000000000000000000000001")),8) ;
            _zzM2L61_mdxP1_bus_timer_Dwen5 <= '1' ;
            _zzM2L61_mdxP1_En <= _zzM2L61_mdxP1_EnNxt ;
            _zyM2L79_pbcCapEn2 <= '1' ;
            _zyM2L61_pbcFsm0_s <= "010" ;
            _zyM2L61_pbcEn10_DUMMY2 := '0' ;
          end if;
          if (_zyM2L61_pbcEn10_DUMMY2 = '1') then
            _zzM2L61_mdxP1_bus_timer_wr5 <= "00000000" ;
            _zzM2L61_mdxP1_bus_timer_Dwen5 <= '1' ;
            _zzM2L61_mdxP1_En <= _zzM2L61_mdxP1_EnNxt ;
            _zzM2L61_mdxP1_psel_wr0 <= '0' ;
            _zzM2L61_mdxP1_psel_Dwen0 <= '1' ;
            _zzM2L61_mdxP1_En <= _zzM2L61_mdxP1_EnNxt ;
            _zzM2L61_mdxP1_penable_wr1 <= '0' ;
            _zzM2L61_mdxP1_penable_Dwen1 <= '1' ;
            _zzM2L61_mdxP1_En <= _zzM2L61_mdxP1_EnNxt ;
            _zzM2L61_mdxP1_pwrite_wr2 <= '0' ;
            _zzM2L61_mdxP1_pwrite_Dwen2 <= '1' ;
            _zzM2L61_mdxP1_En <= _zzM2L61_mdxP1_EnNxt ;
            _zzM2L61_mdxP1_paddr_wr3 <= "00000000000000000000" ;
            _zzM2L61_mdxP1_paddr_Dwen3 <= '1' ;
            _zzM2L61_mdxP1_En <= _zzM2L61_mdxP1_EnNxt ;
            _zzM2L61_mdxP1_pwdata_wr4 <= "00000000000000000000000000000000" ;
            _zzM2L61_mdxP1_pwdata_Dwen4 <= '1' ;
            _zzM2L61_mdxP1_En <= _zzM2L61_mdxP1_EnNxt ;
            _zyresponse_L64_tfiV2_M2_pbcG2 <= (pslverr or boolean_to_std(ext
            (bus_timer,32) = std_logic_vector'
            ("00000000000000000000000001100100"))) ;
            _zyM2L90_pbcCapEn3 <= '1' ;
            _zyM2L61_pbcFsm0_s <= "011" ;
          end if;
        when  "010"  =>
          _zyM2L61_pbcEn10_DUMMY2 := '1' ;
          _zyM2L79_pbcCapEn2 <= '0' ;
          if (((pready = '0') and ext(bus_timer,32) < std_logic_vector'
          ("00000000000000000000000001100100"))) then
            _zzM2L61_mdxP1_bus_timer_wr5 <= ext((ext(bus_timer,32) +
             std_logic_vector'("00000000000000000000000000000001")),8) ;
            _zzM2L61_mdxP1_bus_timer_Dwen5 <= '1' ;
            _zzM2L61_mdxP1_En <= _zzM2L61_mdxP1_EnNxt ;
            _zyM2L79_pbcCapEn2 <= '1' ;
            _zyM2L61_pbcFsm0_s <= "010" ;
            _zyM2L61_pbcEn10_DUMMY2 := '0' ;
          end if;
          if (_zyM2L61_pbcEn10_DUMMY2 = '1') then
            _zzM2L61_mdxP1_bus_timer_wr5 <= "00000000" ;
            _zzM2L61_mdxP1_bus_timer_Dwen5 <= '1' ;
            _zzM2L61_mdxP1_En <= _zzM2L61_mdxP1_EnNxt ;
            _zzM2L61_mdxP1_psel_wr0 <= '0' ;
            _zzM2L61_mdxP1_psel_Dwen0 <= '1' ;
            _zzM2L61_mdxP1_En <= _zzM2L61_mdxP1_EnNxt ;
            _zzM2L61_mdxP1_penable_wr1 <= '0' ;
            _zzM2L61_mdxP1_penable_Dwen1 <= '1' ;
            _zzM2L61_mdxP1_En <= _zzM2L61_mdxP1_EnNxt ;
            _zzM2L61_mdxP1_pwrite_wr2 <= '0' ;
            _zzM2L61_mdxP1_pwrite_Dwen2 <= '1' ;
            _zzM2L61_mdxP1_En <= _zzM2L61_mdxP1_EnNxt ;
            _zzM2L61_mdxP1_paddr_wr3 <= "00000000000000000000" ;
            _zzM2L61_mdxP1_paddr_Dwen3 <= '1' ;
            _zzM2L61_mdxP1_En <= _zzM2L61_mdxP1_EnNxt ;
            _zzM2L61_mdxP1_pwdata_wr4 <= "00000000000000000000000000000000" ;
            _zzM2L61_mdxP1_pwdata_Dwen4 <= '1' ;
            _zzM2L61_mdxP1_En <= _zzM2L61_mdxP1_EnNxt ;
            _zyresponse_L64_tfiV2_M2_pbcG2 <= (pslverr or boolean_to_std(ext
            (bus_timer,32) = std_logic_vector'
            ("00000000000000000000000001100100"))) ;
            _zyM2L90_pbcCapEn3 <= '1' ;
            _zyM2L61_pbcFsm0_s <= "011" ;
          end if;
        when  "011"  =>
          _zyM2L90_pbcCapEn3 <= '0' ;
          _zyixc_port_0_0_h2s <= ext(_zyresponse_L64_tfiV2_M2_pbcG2,8) ;
          _zyixc_port_0_0_ack <= not(_zyixc_port_0_0_ack) ;
          _zyM2L61_pbcCapEn0 <= '1' ;
          _zyM2L61_pbcFsm0_s <= "000" ;
        when others => null ;
      end case;
    end if ;
    _zyaddr_L62_tfiV0_M2_pbcG0 <= transport _zyaddr_L62_tfiV0_M2_pbcG0_DUMMY0;
    _zydata_L63_tfiV1_M2_pbcG1 <= _zydata_L63_tfiV1_M2_pbcG1_DUMMY1;
    _zyM2L61_pbcEn10 <= _zyM2L61_pbcEn10_DUMMY2;
  end process ;

  process --:o508
  (_zyM2L94_pbcMevClk9)
    variable _zyaddr_L95_tfiV3_M2_pbcG3_DUMMY3 : std_logic_vector(63 downto 0) ;
    variable _zyM2L94_pbcEn11_DUMMY4 : std_logic ;
  begin
    if (_zyM2L94_pbcMevClk9'event and _zyM2L94_pbcMevClk9 = '1') then
      _zzM2L94_mdxP2_psel_Dwen0 <= '0' ;
      _zzM2L94_mdxP2_penable_Dwen1 <= '0' ;
      _zzM2L94_mdxP2_pwrite_Dwen2 <= '0' ;
      _zzM2L94_mdxP2_paddr_Dwen3 <= '0' ;
      _zzM2L94_mdxP2_bus_timer_Dwen4 <= '0' ;

      case _zyM2L94_pbcFsm3_s is
        when  "000"  =>
          _zyM2L94_pbcCapEn5 <= '0' ;
          _zyaddr_L95_tfiV3_M2_pbcG3_DUMMY3 := _zyixc_port_0_1_s2h ;
          _zzM2L94_mdxP2_psel_wr0 <= '1' ;
          _zzM2L94_mdxP2_psel_Dwen0 <= '1' ;
          _zzM2L94_mdxP2_En <= _zzM2L94_mdxP2_EnNxt ;
          _zzM2L94_mdxP2_penable_wr1 <= '0' ;
          _zzM2L94_mdxP2_penable_Dwen1 <= '1' ;
          _zzM2L94_mdxP2_En <= _zzM2L94_mdxP2_EnNxt ;
          _zzM2L94_mdxP2_pwrite_wr2 <= '0' ;
          _zzM2L94_mdxP2_pwrite_Dwen2 <= '1' ;
          _zzM2L94_mdxP2_En <= _zzM2L94_mdxP2_EnNxt ;
          _zzM2L94_mdxP2_paddr_wr3 <= ext(_zyaddr_L95_tfiV3_M2_pbcG3_DUMMY3(31
           downto 0),20) ;
          _zzM2L94_mdxP2_paddr_Dwen3 <= '1' ;
          _zzM2L94_mdxP2_En <= _zzM2L94_mdxP2_EnNxt ;
          _zyM2L104_pbcCapEn6 <= '1' ;
          _zyM2L94_pbcFsm3_s <= "001" ;
        when  "001"  =>
          _zyM2L94_pbcEn11_DUMMY4 := '1' ;
          _zyM2L104_pbcCapEn6 <= '0' ;
          _zzM2L94_mdxP2_penable_wr1 <= '1' ;
          _zzM2L94_mdxP2_penable_Dwen1 <= '1' ;
          _zzM2L94_mdxP2_En <= _zzM2L94_mdxP2_EnNxt ;
          if (((pready = '0') and ext(bus_timer,32) < std_logic_vector'
          ("00000000000000000000000001100100"))) then
            _zzM2L94_mdxP2_bus_timer_wr4 <= ext((ext(bus_timer,32) +
             std_logic_vector'("00000000000000000000000000000001")),8) ;
            _zzM2L94_mdxP2_bus_timer_Dwen4 <= '1' ;
            _zzM2L94_mdxP2_En <= _zzM2L94_mdxP2_EnNxt ;
            _zyM2L110_pbcCapEn7 <= '1' ;
            _zyM2L94_pbcFsm3_s <= "010" ;
            _zyM2L94_pbcEn11_DUMMY4 := '0' ;
          end if;
          if (_zyM2L94_pbcEn11_DUMMY4 = '1') then
            _zzM2L94_mdxP2_bus_timer_wr4 <= "00000000" ;
            _zzM2L94_mdxP2_bus_timer_Dwen4 <= '1' ;
            _zzM2L94_mdxP2_En <= _zzM2L94_mdxP2_EnNxt ;
            _zzM2L94_mdxP2_psel_wr0 <= '0' ;
            _zzM2L94_mdxP2_psel_Dwen0 <= '1' ;
            _zzM2L94_mdxP2_En <= _zzM2L94_mdxP2_EnNxt ;
            _zzM2L94_mdxP2_penable_wr1 <= '0' ;
            _zzM2L94_mdxP2_penable_Dwen1 <= '1' ;
            _zzM2L94_mdxP2_En <= _zzM2L94_mdxP2_EnNxt ;
            _zzM2L94_mdxP2_pwrite_wr2 <= '0' ;
            _zzM2L94_mdxP2_pwrite_Dwen2 <= '1' ;
            _zzM2L94_mdxP2_En <= _zzM2L94_mdxP2_EnNxt ;
            _zzM2L94_mdxP2_paddr_wr3 <= "00000000000000000000" ;
            _zzM2L94_mdxP2_paddr_Dwen3 <= '1' ;
            _zzM2L94_mdxP2_En <= _zzM2L94_mdxP2_EnNxt ;
            _zydata_L96_tfiV4_M2_pbcG4 <= prdata ;
            _zyresponse_L97_tfiV5_M2_pbcG5 <= (pslverr or boolean_to_std(ext
            (bus_timer,32) = std_logic_vector'
            ("00000000000000000000000001100100"))) ;
            _zyM2L121_pbcCapEn8 <= '1' ;
            _zyM2L94_pbcFsm3_s <= "011" ;
          end if;
        when  "010"  =>
          _zyM2L94_pbcEn11_DUMMY4 := '1' ;
          _zyM2L110_pbcCapEn7 <= '0' ;
          if (((pready = '0') and ext(bus_timer,32) < std_logic_vector'
          ("00000000000000000000000001100100"))) then
            _zzM2L94_mdxP2_bus_timer_wr4 <= ext((ext(bus_timer,32) +
             std_logic_vector'("00000000000000000000000000000001")),8) ;
            _zzM2L94_mdxP2_bus_timer_Dwen4 <= '1' ;
            _zzM2L94_mdxP2_En <= _zzM2L94_mdxP2_EnNxt ;
            _zyM2L110_pbcCapEn7 <= '1' ;
            _zyM2L94_pbcFsm3_s <= "010" ;
            _zyM2L94_pbcEn11_DUMMY4 := '0' ;
          end if;
          if (_zyM2L94_pbcEn11_DUMMY4 = '1') then
            _zzM2L94_mdxP2_bus_timer_wr4 <= "00000000" ;
            _zzM2L94_mdxP2_bus_timer_Dwen4 <= '1' ;
            _zzM2L94_mdxP2_En <= _zzM2L94_mdxP2_EnNxt ;
            _zzM2L94_mdxP2_psel_wr0 <= '0' ;
            _zzM2L94_mdxP2_psel_Dwen0 <= '1' ;
            _zzM2L94_mdxP2_En <= _zzM2L94_mdxP2_EnNxt ;
            _zzM2L94_mdxP2_penable_wr1 <= '0' ;
            _zzM2L94_mdxP2_penable_Dwen1 <= '1' ;
            _zzM2L94_mdxP2_En <= _zzM2L94_mdxP2_EnNxt ;
            _zzM2L94_mdxP2_pwrite_wr2 <= '0' ;
            _zzM2L94_mdxP2_pwrite_Dwen2 <= '1' ;
            _zzM2L94_mdxP2_En <= _zzM2L94_mdxP2_EnNxt ;
            _zzM2L94_mdxP2_paddr_wr3 <= "00000000000000000000" ;
            _zzM2L94_mdxP2_paddr_Dwen3 <= '1' ;
            _zzM2L94_mdxP2_En <= _zzM2L94_mdxP2_EnNxt ;
            _zydata_L96_tfiV4_M2_pbcG4 <= prdata ;
            _zyresponse_L97_tfiV5_M2_pbcG5 <= (pslverr or boolean_to_std(ext
            (bus_timer,32) = std_logic_vector'
            ("00000000000000000000000001100100"))) ;
            _zyM2L121_pbcCapEn8 <= '1' ;
            _zyM2L94_pbcFsm3_s <= "011" ;
          end if;
        when  "011"  =>
          _zyM2L121_pbcCapEn8 <= '0' ;
          _zyixc_port_0_1_h2s(31 downto 0) <= _zydata_L96_tfiV4_M2_pbcG4 ;
          _zyixc_port_0_1_h2s(39 downto 32) <= ext
          (_zyresponse_L97_tfiV5_M2_pbcG5,8) ;
          _zyixc_port_0_1_ack <= not(_zyixc_port_0_1_ack) ;
          _zyM2L94_pbcCapEn5 <= '1' ;
          _zyM2L94_pbcFsm3_s <= "000" ;
        when others => null ;
      end case;
    end if ;
    _zyaddr_L95_tfiV3_M2_pbcG3 <= transport _zyaddr_L95_tfiV3_M2_pbcG3_DUMMY3;
    _zyM2L94_pbcEn11 <= _zyM2L94_pbcEn11_DUMMY4;
  end process ;

  process --:o725
  (_zzM2_bcBehEvalClk)
  begin
    if (_zzM2_bcBehEvalClk'event and _zzM2_bcBehEvalClk = '1') then
      if (((_zyM2L61_pbcWait4)='1' or (_zyM2L94_pbcWait9)='1')) then
        if (nand_reduce(_zzM2_bcBehEval(30 downto 0)) = '1') then
          _zzM2_bcBehEval(30 downto 0) <= (_zzM2_bcBehEval(30 downto 0) +
           std_logic_vector'("0000000000000000000000000000001")) ;
        end if;
        _zzM2_bcBehEval(31) <= _zzM2_bcBehHalt ;
      end if;
    end if ;
  end process ;

  process --:o736
  (*)
    variable _zzM2L19_psel_mdxTmp0_DUMMY5 : std_logic ;
    variable _zzM2L46_mdxP0_psel_DwenOn0_DUMMY6 : std_logic ;
    variable _zzM2L61_mdxP1_psel_DwenOn0_DUMMY7 : std_logic ;
    variable _zzM2L94_mdxP2_psel_DwenOn0_DUMMY8 : std_logic ;
  begin
    _zzM2L19_psel_mdxTmp0_DUMMY5 := _zzM2L19_psel_mdxTmp0;
    _zzM2L46_mdxP0_psel_DwenOn0_DUMMY6 := _zzM2L46_mdxP0_psel_DwenOn0;
    _zzM2L61_mdxP1_psel_DwenOn0_DUMMY7 := _zzM2L61_mdxP1_psel_DwenOn0;
    _zzM2L94_mdxP2_psel_DwenOn0_DUMMY8 := _zzM2L94_mdxP2_psel_DwenOn0;
    _zzM2L19_psel_mdxTmp0_DUMMY5 := _zzpsel_M2L19_mdxSvLt6 ;
    _zzM2L46_mdxP0_psel_DwenOn0_DUMMY6 := it_cond_op((_zzM2L46_mdxP0_On
    )='1',_zzM2L46_mdxP0_psel_Dwen0,std_logic'('0')) ;
    _zzM2L19_psel_mdxTmp0_DUMMY5 := it_cond_op(
    (_zzM2L46_mdxP0_psel_DwenOn0_DUMMY6
    )='1',_zzM2L46_mdxP0_psel_wr0,_zzM2L19_psel_mdxTmp0_DUMMY5) ;
    _zzM2L61_mdxP1_psel_DwenOn0_DUMMY7 := it_cond_op((_zzM2L61_mdxP1_On
    )='1',_zzM2L61_mdxP1_psel_Dwen0,std_logic'('0')) ;
    _zzM2L19_psel_mdxTmp0_DUMMY5 := it_cond_op(
    (_zzM2L61_mdxP1_psel_DwenOn0_DUMMY7
    )='1',_zzM2L61_mdxP1_psel_wr0,_zzM2L19_psel_mdxTmp0_DUMMY5) ;
    _zzM2L94_mdxP2_psel_DwenOn0_DUMMY8 := it_cond_op((_zzM2L94_mdxP2_On
    )='1',_zzM2L94_mdxP2_psel_Dwen0,std_logic'('0')) ;
    _zzM2L19_psel_mdxTmp0_DUMMY5 := it_cond_op(
    (_zzM2L94_mdxP2_psel_DwenOn0_DUMMY8
    )='1',_zzM2L94_mdxP2_psel_wr0,_zzM2L19_psel_mdxTmp0_DUMMY5) ;
    if (_zzmdxOne = '1') then
      psel <= _zzM2L19_psel_mdxTmp0_DUMMY5 ;
    end if;
    _zzM2L19_psel_mdxTmp0 <= transport _zzM2L19_psel_mdxTmp0_DUMMY5;
    _zzM2L46_mdxP0_psel_DwenOn0 <= _zzM2L46_mdxP0_psel_DwenOn0_DUMMY6;
    _zzM2L61_mdxP1_psel_DwenOn0 <= _zzM2L61_mdxP1_psel_DwenOn0_DUMMY7;
    _zzM2L94_mdxP2_psel_DwenOn0 <= _zzM2L94_mdxP2_psel_DwenOn0_DUMMY8;
  end process ;

  process --:o756
  (*)
    variable _zzM2L20_penable_mdxTmp1_DUMMY9 : std_logic ;
    variable _zzM2L46_mdxP0_penable_DwenOn1_DUMMY10 : std_logic ;
    variable _zzM2L61_mdxP1_penable_DwenOn1_DUMMY11 : std_logic ;
    variable _zzM2L94_mdxP2_penable_DwenOn1_DUMMY12 : std_logic ;
  begin
    _zzM2L20_penable_mdxTmp1_DUMMY9 := _zzM2L20_penable_mdxTmp1;
    _zzM2L46_mdxP0_penable_DwenOn1_DUMMY10 := _zzM2L46_mdxP0_penable_DwenOn1;
    _zzM2L61_mdxP1_penable_DwenOn1_DUMMY11 := _zzM2L61_mdxP1_penable_DwenOn1;
    _zzM2L94_mdxP2_penable_DwenOn1_DUMMY12 := _zzM2L94_mdxP2_penable_DwenOn1;
    _zzM2L20_penable_mdxTmp1_DUMMY9 := _zzpenable_M2L20_mdxSvLt7 ;
    _zzM2L46_mdxP0_penable_DwenOn1_DUMMY10 := it_cond_op((_zzM2L46_mdxP0_On
    )='1',_zzM2L46_mdxP0_penable_Dwen1,std_logic'('0')) ;
    _zzM2L20_penable_mdxTmp1_DUMMY9 := it_cond_op(
    (_zzM2L46_mdxP0_penable_DwenOn1_DUMMY10
    )='1',_zzM2L46_mdxP0_penable_wr1,_zzM2L20_penable_mdxTmp1_DUMMY9) ;
    _zzM2L61_mdxP1_penable_DwenOn1_DUMMY11 := it_cond_op((_zzM2L61_mdxP1_On
    )='1',_zzM2L61_mdxP1_penable_Dwen1,std_logic'('0')) ;
    _zzM2L20_penable_mdxTmp1_DUMMY9 := it_cond_op(
    (_zzM2L61_mdxP1_penable_DwenOn1_DUMMY11
    )='1',_zzM2L61_mdxP1_penable_wr1,_zzM2L20_penable_mdxTmp1_DUMMY9) ;
    _zzM2L94_mdxP2_penable_DwenOn1_DUMMY12 := it_cond_op((_zzM2L94_mdxP2_On
    )='1',_zzM2L94_mdxP2_penable_Dwen1,std_logic'('0')) ;
    _zzM2L20_penable_mdxTmp1_DUMMY9 := it_cond_op(
    (_zzM2L94_mdxP2_penable_DwenOn1_DUMMY12
    )='1',_zzM2L94_mdxP2_penable_wr1,_zzM2L20_penable_mdxTmp1_DUMMY9) ;
    if (_zzmdxOne = '1') then
      penable <= _zzM2L20_penable_mdxTmp1_DUMMY9 ;
    end if;
    _zzM2L20_penable_mdxTmp1 <= transport _zzM2L20_penable_mdxTmp1_DUMMY9;
    _zzM2L46_mdxP0_penable_DwenOn1 <= _zzM2L46_mdxP0_penable_DwenOn1_DUMMY10;
    _zzM2L61_mdxP1_penable_DwenOn1 <= _zzM2L61_mdxP1_penable_DwenOn1_DUMMY11;
    _zzM2L94_mdxP2_penable_DwenOn1 <= _zzM2L94_mdxP2_penable_DwenOn1_DUMMY12;
  end process ;

  process --:o776
  (*)
    variable _zzM2L23_pwrite_mdxTmp2_DUMMY13 : std_logic ;
    variable _zzM2L46_mdxP0_pwrite_DwenOn2_DUMMY14 : std_logic ;
    variable _zzM2L61_mdxP1_pwrite_DwenOn2_DUMMY15 : std_logic ;
    variable _zzM2L94_mdxP2_pwrite_DwenOn2_DUMMY16 : std_logic ;
  begin
    _zzM2L23_pwrite_mdxTmp2_DUMMY13 := _zzM2L23_pwrite_mdxTmp2;
    _zzM2L46_mdxP0_pwrite_DwenOn2_DUMMY14 := _zzM2L46_mdxP0_pwrite_DwenOn2;
    _zzM2L61_mdxP1_pwrite_DwenOn2_DUMMY15 := _zzM2L61_mdxP1_pwrite_DwenOn2;
    _zzM2L94_mdxP2_pwrite_DwenOn2_DUMMY16 := _zzM2L94_mdxP2_pwrite_DwenOn2;
    _zzM2L23_pwrite_mdxTmp2_DUMMY13 := _zzpwrite_M2L23_mdxSvLt8 ;
    _zzM2L46_mdxP0_pwrite_DwenOn2_DUMMY14 := it_cond_op((_zzM2L46_mdxP0_On
    )='1',_zzM2L46_mdxP0_pwrite_Dwen2,std_logic'('0')) ;
    _zzM2L23_pwrite_mdxTmp2_DUMMY13 := it_cond_op(
    (_zzM2L46_mdxP0_pwrite_DwenOn2_DUMMY14
    )='1',_zzM2L46_mdxP0_pwrite_wr2,_zzM2L23_pwrite_mdxTmp2_DUMMY13) ;
    _zzM2L61_mdxP1_pwrite_DwenOn2_DUMMY15 := it_cond_op((_zzM2L61_mdxP1_On
    )='1',_zzM2L61_mdxP1_pwrite_Dwen2,std_logic'('0')) ;
    _zzM2L23_pwrite_mdxTmp2_DUMMY13 := it_cond_op(
    (_zzM2L61_mdxP1_pwrite_DwenOn2_DUMMY15
    )='1',_zzM2L61_mdxP1_pwrite_wr2,_zzM2L23_pwrite_mdxTmp2_DUMMY13) ;
    _zzM2L94_mdxP2_pwrite_DwenOn2_DUMMY16 := it_cond_op((_zzM2L94_mdxP2_On
    )='1',_zzM2L94_mdxP2_pwrite_Dwen2,std_logic'('0')) ;
    _zzM2L23_pwrite_mdxTmp2_DUMMY13 := it_cond_op(
    (_zzM2L94_mdxP2_pwrite_DwenOn2_DUMMY16
    )='1',_zzM2L94_mdxP2_pwrite_wr2,_zzM2L23_pwrite_mdxTmp2_DUMMY13) ;
    if (_zzmdxOne = '1') then
      pwrite <= _zzM2L23_pwrite_mdxTmp2_DUMMY13 ;
    end if;
    _zzM2L23_pwrite_mdxTmp2 <= transport _zzM2L23_pwrite_mdxTmp2_DUMMY13;
    _zzM2L46_mdxP0_pwrite_DwenOn2 <= _zzM2L46_mdxP0_pwrite_DwenOn2_DUMMY14;
    _zzM2L61_mdxP1_pwrite_DwenOn2 <= _zzM2L61_mdxP1_pwrite_DwenOn2_DUMMY15;
    _zzM2L94_mdxP2_pwrite_DwenOn2 <= _zzM2L94_mdxP2_pwrite_DwenOn2_DUMMY16;
  end process ;

  process --:o796
  (*)
    variable _zzM2L21_paddr_mdxTmp3_DUMMY17 : std_logic_vector(19 downto 0) ;
    variable _zzM2L46_mdxP0_paddr_DwenOn3_DUMMY18 : std_logic ;
    variable _zzM2L61_mdxP1_paddr_DwenOn3_DUMMY19 : std_logic ;
    variable _zzM2L94_mdxP2_paddr_DwenOn3_DUMMY20 : std_logic ;
  begin
    _zzM2L21_paddr_mdxTmp3_DUMMY17 := _zzM2L21_paddr_mdxTmp3;
    _zzM2L46_mdxP0_paddr_DwenOn3_DUMMY18 := _zzM2L46_mdxP0_paddr_DwenOn3;
    _zzM2L61_mdxP1_paddr_DwenOn3_DUMMY19 := _zzM2L61_mdxP1_paddr_DwenOn3;
    _zzM2L94_mdxP2_paddr_DwenOn3_DUMMY20 := _zzM2L94_mdxP2_paddr_DwenOn3;
    _zzM2L21_paddr_mdxTmp3_DUMMY17 := _zzpaddr_M2L21_mdxSvLt9 ;
    _zzM2L46_mdxP0_paddr_DwenOn3_DUMMY18 := it_cond_op((_zzM2L46_mdxP0_On
    )='1',_zzM2L46_mdxP0_paddr_Dwen3,std_logic'('0')) ;
    _zzM2L21_paddr_mdxTmp3_DUMMY17 := it_cond_op(
    (_zzM2L46_mdxP0_paddr_DwenOn3_DUMMY18
    )='1',_zzM2L46_mdxP0_paddr_wr3,_zzM2L21_paddr_mdxTmp3_DUMMY17) ;
    _zzM2L61_mdxP1_paddr_DwenOn3_DUMMY19 := it_cond_op((_zzM2L61_mdxP1_On
    )='1',_zzM2L61_mdxP1_paddr_Dwen3,std_logic'('0')) ;
    _zzM2L21_paddr_mdxTmp3_DUMMY17 := it_cond_op(
    (_zzM2L61_mdxP1_paddr_DwenOn3_DUMMY19
    )='1',_zzM2L61_mdxP1_paddr_wr3,_zzM2L21_paddr_mdxTmp3_DUMMY17) ;
    _zzM2L94_mdxP2_paddr_DwenOn3_DUMMY20 := it_cond_op((_zzM2L94_mdxP2_On
    )='1',_zzM2L94_mdxP2_paddr_Dwen3,std_logic'('0')) ;
    _zzM2L21_paddr_mdxTmp3_DUMMY17 := it_cond_op(
    (_zzM2L94_mdxP2_paddr_DwenOn3_DUMMY20
    )='1',_zzM2L94_mdxP2_paddr_wr3,_zzM2L21_paddr_mdxTmp3_DUMMY17) ;
    if (_zzmdxOne = '1') then
      paddr <= _zzM2L21_paddr_mdxTmp3_DUMMY17 ;
    end if;
    _zzM2L21_paddr_mdxTmp3 <= transport _zzM2L21_paddr_mdxTmp3_DUMMY17;
    _zzM2L46_mdxP0_paddr_DwenOn3 <= _zzM2L46_mdxP0_paddr_DwenOn3_DUMMY18;
    _zzM2L61_mdxP1_paddr_DwenOn3 <= _zzM2L61_mdxP1_paddr_DwenOn3_DUMMY19;
    _zzM2L94_mdxP2_paddr_DwenOn3 <= _zzM2L94_mdxP2_paddr_DwenOn3_DUMMY20;
  end process ;

  process --:o816
  (*)
    variable _zzM2L22_pwdata_mdxTmp4_DUMMY21 : std_logic_vector(31 downto 0) ;
    variable _zzM2L46_mdxP0_pwdata_DwenOn4_DUMMY22 : std_logic ;
    variable _zzM2L61_mdxP1_pwdata_DwenOn4_DUMMY23 : std_logic ;
  begin
    _zzM2L22_pwdata_mdxTmp4_DUMMY21 := _zzM2L22_pwdata_mdxTmp4;
    _zzM2L46_mdxP0_pwdata_DwenOn4_DUMMY22 := _zzM2L46_mdxP0_pwdata_DwenOn4;
    _zzM2L61_mdxP1_pwdata_DwenOn4_DUMMY23 := _zzM2L61_mdxP1_pwdata_DwenOn4;
    _zzM2L22_pwdata_mdxTmp4_DUMMY21 := _zzpwdata_M2L22_mdxSvLt10 ;
    _zzM2L46_mdxP0_pwdata_DwenOn4_DUMMY22 := it_cond_op((_zzM2L46_mdxP0_On
    )='1',_zzM2L46_mdxP0_pwdata_Dwen4,std_logic'('0')) ;
    _zzM2L22_pwdata_mdxTmp4_DUMMY21 := it_cond_op(
    (_zzM2L46_mdxP0_pwdata_DwenOn4_DUMMY22
    )='1',_zzM2L46_mdxP0_pwdata_wr4,_zzM2L22_pwdata_mdxTmp4_DUMMY21) ;
    _zzM2L61_mdxP1_pwdata_DwenOn4_DUMMY23 := it_cond_op((_zzM2L61_mdxP1_On
    )='1',_zzM2L61_mdxP1_pwdata_Dwen4,std_logic'('0')) ;
    _zzM2L22_pwdata_mdxTmp4_DUMMY21 := it_cond_op(
    (_zzM2L61_mdxP1_pwdata_DwenOn4_DUMMY23
    )='1',_zzM2L61_mdxP1_pwdata_wr4,_zzM2L22_pwdata_mdxTmp4_DUMMY21) ;
    if (_zzmdxOne = '1') then
      pwdata <= _zzM2L22_pwdata_mdxTmp4_DUMMY21 ;
    end if;
    _zzM2L22_pwdata_mdxTmp4 <= transport _zzM2L22_pwdata_mdxTmp4_DUMMY21;
    _zzM2L46_mdxP0_pwdata_DwenOn4 <= _zzM2L46_mdxP0_pwdata_DwenOn4_DUMMY22;
    _zzM2L61_mdxP1_pwdata_DwenOn4 <= _zzM2L61_mdxP1_pwdata_DwenOn4_DUMMY23;
  end process ;

  process --:o834
  (*)
    variable _zzM2L29_bus_timer_mdxTmp5_DUMMY24 : std_logic_vector(7 downto 0) ;
    variable _zzM2L46_mdxP0_bus_timer_DwenOn5_DUMMY25 : std_logic ;
    variable _zzM2L61_mdxP1_bus_timer_DwenOn5_DUMMY26 : std_logic ;
    variable _zzM2L94_mdxP2_bus_timer_DwenOn4_DUMMY27 : std_logic ;
  begin
    _zzM2L29_bus_timer_mdxTmp5_DUMMY24 := _zzM2L29_bus_timer_mdxTmp5;
    _zzM2L46_mdxP0_bus_timer_DwenOn5_DUMMY25 :=
     _zzM2L46_mdxP0_bus_timer_DwenOn5;
    _zzM2L61_mdxP1_bus_timer_DwenOn5_DUMMY26 :=
     _zzM2L61_mdxP1_bus_timer_DwenOn5;
    _zzM2L94_mdxP2_bus_timer_DwenOn4_DUMMY27 :=
     _zzM2L94_mdxP2_bus_timer_DwenOn4;
    _zzM2L29_bus_timer_mdxTmp5_DUMMY24 := _zzbus_timer_M2L29_mdxSvLt11 ;
    _zzM2L46_mdxP0_bus_timer_DwenOn5_DUMMY25 := it_cond_op((_zzM2L46_mdxP0_On
    )='1',_zzM2L46_mdxP0_bus_timer_Dwen5,std_logic'('0')) ;
    _zzM2L29_bus_timer_mdxTmp5_DUMMY24 := it_cond_op(
    (_zzM2L46_mdxP0_bus_timer_DwenOn5_DUMMY25
    )='1',_zzM2L46_mdxP0_bus_timer_wr5,_zzM2L29_bus_timer_mdxTmp5_DUMMY24) ;
    _zzM2L61_mdxP1_bus_timer_DwenOn5_DUMMY26 := it_cond_op((_zzM2L61_mdxP1_On
    )='1',_zzM2L61_mdxP1_bus_timer_Dwen5,std_logic'('0')) ;
    _zzM2L29_bus_timer_mdxTmp5_DUMMY24 := it_cond_op(
    (_zzM2L61_mdxP1_bus_timer_DwenOn5_DUMMY26
    )='1',_zzM2L61_mdxP1_bus_timer_wr5,_zzM2L29_bus_timer_mdxTmp5_DUMMY24) ;
    _zzM2L94_mdxP2_bus_timer_DwenOn4_DUMMY27 := it_cond_op((_zzM2L94_mdxP2_On
    )='1',_zzM2L94_mdxP2_bus_timer_Dwen4,std_logic'('0')) ;
    _zzM2L29_bus_timer_mdxTmp5_DUMMY24 := it_cond_op(
    (_zzM2L94_mdxP2_bus_timer_DwenOn4_DUMMY27
    )='1',_zzM2L94_mdxP2_bus_timer_wr4,_zzM2L29_bus_timer_mdxTmp5_DUMMY24) ;
    if (_zzmdxOne = '1') then
      bus_timer <= _zzM2L29_bus_timer_mdxTmp5_DUMMY24 ;
    end if;
    _zzM2L29_bus_timer_mdxTmp5 <= transport _zzM2L29_bus_timer_mdxTmp5_DUMMY24;
    _zzM2L46_mdxP0_bus_timer_DwenOn5 <=
     _zzM2L46_mdxP0_bus_timer_DwenOn5_DUMMY25;
    _zzM2L61_mdxP1_bus_timer_DwenOn5 <=
     _zzM2L61_mdxP1_bus_timer_DwenOn5_DUMMY26;
    _zzM2L94_mdxP2_bus_timer_DwenOn4 <=
     _zzM2L94_mdxP2_bus_timer_DwenOn4_DUMMY27;
  end process ;
end module;
