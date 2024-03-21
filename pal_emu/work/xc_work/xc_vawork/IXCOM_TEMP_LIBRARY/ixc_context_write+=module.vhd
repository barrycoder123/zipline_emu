architecture module of ixc_context_write is
  type DUMMY2 is array(integer range <>) of std_logic_vector((MEMWIDTH - 1)
   downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component ixc_rforce
    generic (
      W : std_logic_vector := signed(integer_to_std(1,32))
    ) ;
    port (
      L : in std_logic_vector(conv_integer((ext(W,$QKTN_MAX(W'length,32)) -
       integer_to_std(1,$QKTN_MAX(W'length,32)))) downto 0) := (others => 'X') ;
      V : in std_logic_vector(conv_integer((ext(W,$QKTN_MAX(W'length,32)) -
       integer_to_std(1,$QKTN_MAX(W'length,32)))) downto 0) := (others => 'X') ;
    en : in std_logic := 'X' ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal fclk : std_logic ;
  signal writePending : std_logic ;
  signal _zymem : DUMMY2(0 to conv_integer((ext(MEMDEPTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32))))) ;
  attribute _2_state_ of _zymem: signal is 1 ;
  signal wdataD : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)))) downto 0) ;
  attribute _2_state_ of wdataD: signal is 1 ;
  signal header : std_logic_vector(conv_integer((ext(NVEC,$QKTN_MAX
  (NVEC'length,32)) - integer_to_std(1,$QKTN_MAX(NVEC'length,32)))) downto 0) ;
  attribute _2_state_ of header: signal is 1 ;
  signal headerP : std_logic_vector(conv_integer((ext(NVEC,$QKTN_MAX
  (NVEC'length,32)) - integer_to_std(1,$QKTN_MAX(NVEC'length,32)))) downto 0) ;
  attribute _2_state_ of headerP: signal is 1 ;
  signal DUMMY3 : std_logic_vector(conv_integer((ext(DWIDTH,$QKTN_MAX
  (DWIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(DWIDTH'length,32)))) downto 0
  ) ;
  signal DUMMY4 :  std_logic ;
  -- quickturn use_hardmacro_pack _zymem
  -- quickturn fast_clock fclk

begin
  genblk1 : for i in 0 to conv_integer((ext(MEMDEPTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)))) - 1 generate
  begin

    process --:o2093
    (*)
    begin
      wdataD((((i + 1) * MEMWIDTH) - 1) downto (i * MEMWIDTH)) <= ext(_zymem(i
      ),abs(((((i + 1) * MEMWIDTH) - 1))-((i * MEMWIDTH)))+1) ;
    end process ;
  end generate ;

  process --:o2096
  (*)
  begin
    wdataD(conv_integer((ext(WIDTH,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length
    ),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32)
    ))) downto conv_integer((ext((ext(MEMDEPTH,$QKTN_MAX($QKTN_MAX
    (DWIDTH'length,NVEC'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
    (DWIDTH'length,NVEC'length),32))) * integer_to_std(MEMWIDTH,$QKTN_MAX
    ($QKTN_MAX(DWIDTH'length,NVEC'length),32)),$QKTN_MAX($QKTN_MAX
    (DWIDTH'length,NVEC'length),32))))) <= ext(_zymem(conv_integer((ext
    (MEMDEPTH,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32)) -
     integer_to_std(1,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32))))),abs
    ((conv_integer((ext(WIDTH,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32)
    ) - integer_to_std(1,$QKTN_MAX($QKTN_MAX(DWIDTH'length,NVEC'length),32)))))-
    (conv_integer((ext((ext(MEMDEPTH,$QKTN_MAX($QKTN_MAX
    (DWIDTH'length,NVEC'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
    (DWIDTH'length,NVEC'length),32))) * integer_to_std(MEMWIDTH,$QKTN_MAX
    ($QKTN_MAX(DWIDTH'length,NVEC'length),32)),$QKTN_MAX($QKTN_MAX
    (DWIDTH'length,NVEC'length),32))))))+1) ;
  end process ;

  process --:o2101
  (*)
  begin
    if ((DUMMY1 = '0')) then
      header <= ext(wdataD(conv_integer((ext(NVEC,$QKTN_MAX(NVEC'length,32)) -
       integer_to_std(1,$QKTN_MAX(NVEC'length,32)))) downto 0),abs(conv_integer(
      (ext(NVEC,$QKTN_MAX(NVEC'length,32)) - integer_to_std(1,$QKTN_MAX
      (NVEC'length,32)))))+1) ;
    end if;
  end process ;
  writePending <= boolean_to_std(ext(header,abs(conv_integer((ext(NVEC,$QKTN_MAX
  (NVEC'length,32)) - integer_to_std(1,$QKTN_MAX(NVEC'length,32)))))+1) /= ext
  (headerP,abs(conv_integer((ext(NVEC,$QKTN_MAX(NVEC'length,32)) -
   integer_to_std(1,$QKTN_MAX(NVEC'length,32)))))+1)) ;

  process --:o2108
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      if (((writePending)='1' and (DUMMY0)='1')) then
        headerP <= header ;
      end if;
    end if ;
  end process ;
  _zzfrcD : ixc_rforce
    generic map(W => DWIDTH)
    port map (
       wdata
      ,DUMMY3
      ,DUMMY4
    ) ;
  DUMMY3 <= ext(wdataD(conv_integer((ext(WIDTH,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
  (DWIDTH'length,NVEC'length),32)))) downto conv_integer(NVEC)),abs(conv_integer
  ((ext(DWIDTH,$QKTN_MAX(DWIDTH'length,32)) - integer_to_std(1,$QKTN_MAX
  (DWIDTH'length,32)))))+1) ;
  DUMMY4 <= (writePending and DUMMY0) ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
