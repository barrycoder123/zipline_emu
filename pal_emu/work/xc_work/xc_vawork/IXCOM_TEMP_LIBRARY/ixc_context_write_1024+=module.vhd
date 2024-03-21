ARCHITECTURE module OF ixc_context_write_1024 IS
  TYPE DUMMY2 IS ARRAY(integer RANGE <>) OF std_logic_vector((MEMWIDTH - 1)
   DOWNTO 0) ;
  --  quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  COMPONENT ixc_rforce
    GENERIC (
      W : std_logic_vector := signed(integer_to_std(1,32))
    ) ;
    PORT (
      L : IN std_logic_vector(conv_integer((ext(W,$QKTN_MAX(W'length,32)) -
       integer_to_std(1,$QKTN_MAX(W'length,32)))) DOWNTO 0) := (OTHERS => 'X') ;
      V : IN std_logic_vector(conv_integer((ext(W,$QKTN_MAX(W'length,32)) -
       integer_to_std(1,$QKTN_MAX(W'length,32)))) DOWNTO 0) := (OTHERS => 'X') ;
    en : IN std_logic := 'X' ) ;
  END COMPONENT ;

  COMPONENT Q_NOT_TOUCH
    PORT (
    sig : IN std_logic := 'X' ) ;
  END COMPONENT ;

  SIGNAL DUMMY0 : std_logic ;
  SIGNAL DUMMY1 : std_logic ;
  SIGNAL fclk : std_logic ;
  SIGNAL writePending : std_logic ;
  SIGNAL _zymem : DUMMY2(0 TO conv_integer((ext(MEMDEPTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32))))) ;
  ATTRIBUTE _2_state_ OF _zymem: SIGNAL IS 1 ;
  SIGNAL wdataD : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)))) DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF wdataD: SIGNAL IS 1 ;
  SIGNAL header : std_logic_vector(conv_integer((ext(NVEC,$QKTN_MAX
  (NVEC'length,32)) - integer_to_std(1,$QKTN_MAX(NVEC'length,32)))) DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF header: SIGNAL IS 1 ;
  SIGNAL headerP : std_logic_vector(conv_integer((ext(NVEC,$QKTN_MAX
  (NVEC'length,32)) - integer_to_std(1,$QKTN_MAX(NVEC'length,32)))) DOWNTO 0) ;
  ATTRIBUTE _2_state_ OF headerP: SIGNAL IS 1 ;
  SIGNAL DUMMY3 : std_logic_vector(conv_integer((ext(DWIDTH,$QKTN_MAX
  (DWIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(DWIDTH'length,32)))) DOWNTO 0
  ) ;
  SIGNAL DUMMY4 :  std_logic ;
  --  quickturn use_hardmacro_pack _zymem
  --  quickturn fast_clock fclk

BEGIN
  genblk1 : FOR i IN 0 TO conv_integer((ext(MEMDEPTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)))) - 1 GENERATE
  BEGIN

    PROCESS --:o2093
    (*)
    BEGIN
      wdataD((((i + 1) * MEMWIDTH) - 1) DOWNTO (i * MEMWIDTH)) <= ext(_zymem(i
      ),ABS(((((i + 1) * MEMWIDTH) - 1))-((i * MEMWIDTH)))+1) ;
    END PROCESS ;
  END GENERATE ;

  PROCESS --:o2096
  (*)
  BEGIN
    wdataD(conv_integer((ext(WIDTH,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length
    ),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32)
    ))) DOWNTO conv_integer((ext((ext(MEMDEPTH,$QKTN_MAX($QKTN_MAX
    (DWIDTH'length,NVEC'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
    (DWIDTH'length,NVEC'length),32))) * integer_to_std(MEMWIDTH,$QKTN_MAX
    ($QKTN_MAX(DWIDTH'length,NVEC'length),32)),$QKTN_MAX($QKTN_MAX
    (DWIDTH'length,NVEC'length),32))))) <= ext(_zymem(conv_integer((ext
    (MEMDEPTH,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32)) -
     integer_to_std(1,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32))))),ABS
    ((conv_integer((ext(WIDTH,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32)
    ) - integer_to_std(1,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32)))))-
    (conv_integer((ext((ext(MEMDEPTH,$QKTN_MAX($QKTN_MAX
    (DWIDTH'length,NVEC'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
    (DWIDTH'length,NVEC'length),32))) * integer_to_std(MEMWIDTH,$QKTN_MAX
    ($QKTN_MAX(DWIDTH'length,NVEC'length),32)),$QKTN_MAX($QKTN_MAX
    (DWIDTH'length,NVEC'length),32))))))+1) ;
  END PROCESS ;

  PROCESS --:o2101
  (*)
  BEGIN
    IF ((DUMMY1 = '0')) THEN
      header <= ext(wdataD(conv_integer((ext(NVEC,$QKTN_MAX(NVEC'length,32)) -
       integer_to_std(1,$QKTN_MAX(NVEC'length,32)))) DOWNTO 0),ABS(conv_integer(
      (ext(NVEC,$QKTN_MAX(NVEC'length,32)) - integer_to_std(1,$QKTN_MAX
      (NVEC'length,32)))))+1) ;
    END IF;
  END PROCESS ;
  writePending <= boolean_to_std(ext(header,ABS(conv_integer((ext(NVEC,$QKTN_MAX
  (NVEC'length,32)) - integer_to_std(1,$QKTN_MAX(NVEC'length,32)))))+1) /= ext
  (headerP,ABS(conv_integer((ext(NVEC,$QKTN_MAX(NVEC'length,32)) -
   integer_to_std(1,$QKTN_MAX(NVEC'length,32)))))+1)) ;

  PROCESS --:o2108
  (fclk)
  BEGIN
    IF (fclk'event AND fclk = '1') THEN
      IF (((writePending)='1' AND (DUMMY0)='1')) THEN
        headerP <= header ;
      END IF;
    END IF ;
  END PROCESS ;
  _zzfrcD : ixc_rforce
    GENERIC MAP(W => DWIDTH)
    PORT MAP (
       wdata
      ,DUMMY3
      ,DUMMY4
    ) ;
  DUMMY3 <= ext(wdataD(conv_integer((ext(WIDTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)))) DOWNTO conv_integer(NVEC)),ABS(conv_integer
  ((ext(DWIDTH,$QKTN_MAX(DWIDTH'length,32)) - integer_to_std(1,$QKTN_MAX
  (DWIDTH'length,32)))))+1) ;
  DUMMY4 <= (writePending AND DUMMY0) ;
  _zzqnthw : Q_NOT_TOUCH
     ;
END module;