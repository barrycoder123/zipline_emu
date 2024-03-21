architecture module of ixc_pkt_q is
  -- quickturn always_on
  type DUMMY5 is array(integer range <>) of std_logic_vector(63 downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE ALWAYS_ON TRUE
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component ixc_uClkGen
    port (
    uclk : out std_logic ) ;
  end component ;

  component ixc_gf2_latch
    generic (
      W : integer := 1
    ) ;
    port (
      q : out std_logic_vector((W - 1) downto 0) ;
      d : in std_logic_vector((W - 1) downto 0) := (others => 'X') ;
    en : in std_logic := 'X' ) ;
  end component ;

  component ixc_pop_cnt
    generic (
      W : std_logic_vector := signed(integer_to_std(127,32)) ;
      LG_W : integer := 7
    ) ;
    port (
      d : in std_logic_vector(conv_integer((ext(W,$QKTN_MAX(W'length,32)) -
       integer_to_std(1,$QKTN_MAX(W'length,32)))) downto 0) := (others => 'X') ;
    cnt : out std_logic_vector((LG_W - 1) downto 0) ) ;
  end component ;

  component ixc_error
    generic (
      SIZE : integer := 1 ;
      UCLK_COND : integer := 0
    ) ;
    port (
    errCond : in std_logic := 'X' ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal fclk : std_logic ;
  signal uClk : std_logic ;
  signal DUMMY0 : std_logic ;
  signal GFLock : std_logic ;
  signal pktEnCnt : std_logic_vector((LG_WIDTH - 1) downto 0) ;
  signal fill : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  signal DUMMY2 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal filledEnough : std_logic ;
  signal delayedEnough : std_logic ;
  signal fillN : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  signal overflow : std_logic ;
  signal ixc_gf2_pkt_buf : DUMMY5(0 to signed_int((BUF_SIZE -
   "00000000000000000000000000000001"))) ;
  attribute _2_state_ of ixc_gf2_pkt_buf: signal is 1 ;
  signal wptr : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  attribute _2_state_ of wptr: signal is 1 ;
  signal wptrP : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  attribute _2_state_ of wptrP: signal is 1 ;
  signal wptrS : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  attribute _2_state_ of wptrS: signal is 1 ;
  signal rptr : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  attribute _2_state_ of rptr: signal is 1 ;
  signal pollState : std_logic ;
  attribute _2_state_ of pollState: signal is 1 ;
  signal hasData : std_logic ;
  attribute _2_state_ of hasData: signal is 1 ;
  signal pktEnD : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0)
   ;
  attribute _2_state_ of pktEnD: signal is 1 ;
  signal pktEnL : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0)
   ;
  attribute _2_state_ of pktEnL: signal is 1 ;
  signal pktEnLQ : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0)
   ;
  attribute _2_state_ of pktEnLQ: signal is 1 ;
  signal pktDataD : std_logic_vector(conv_integer(((ext(ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) * integer_to_std(64,$QKTN_MAX(WIDTH'length,32)),$QKTN_MAX
  (WIDTH'length,32))) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0)
   ;
  attribute _2_state_ of pktDataD: signal is 1 ;
  signal pushEn : std_logic ;
  attribute _2_state_ of pushEn: signal is 1 ;
  signal pushAddr : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  attribute _2_state_ of pushAddr: signal is 1 ;
  signal pushLen : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  attribute _2_state_ of pushLen: signal is 1 ;
  signal pushId : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of pushId: signal is 1 ;
  signal DUMMY3 : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of DUMMY3: signal is 1 ;
  signal pushDlyTimer : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of pushDlyTimer: signal is 1 ;
  signal DUMMY4 : std_logic_vector(3 downto 0) ;
  attribute _2_state_ of DUMMY4: signal is 1 ;
  signal full : std_logic ;
  signal pushCtlWord : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of pushCtlWord: signal is 1 ;

  procedure fsmPollState ( signal GFReset  : in std_logic;  variable GFLock  :
   in std_logic;  signal pushDlyTimer  : inout std_logic_vector(7 downto 0); 
   variable pktEnD  : in std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0);
    variable hasData  : inout std_logic;  variable gfPushDly  : in
   std_logic_vector(7 downto 0);  variable pktEnCnt  : in std_logic_vector(
  (LG_WIDTH - 1) downto 0);  signal pollState  : inout std_logic;  signal pollEn
    : in std_logic;  variable wptrP  : in std_logic_vector((ADDR_SIZE - 1)
   downto 0);  signal rptr  : inout std_logic_vector((ADDR_SIZE - 1) downto 0); 
   signal pushId  : inout std_logic_vector(63 downto 0);  signal wptrS  : inout
   std_logic_vector((ADDR_SIZE - 1) downto 0);  signal pushEn  : out std_logic; 
   signal pushAddr  : out std_logic_vector((ADDR_SIZE - 1) downto 0);  signal
   pushLen  : out std_logic_vector((ADDR_SIZE - 1) downto 0)) is
    variable DUMMY6 : std_logic_vector(0 to 31) ;
  begin
    if (GFReset = '1') then
      wptrS <= integer_to_std(0,abs((ADDR_SIZE - 1))+1) ;
      rptr <= integer_to_std(0,abs((ADDR_SIZE - 1))+1) ;
      pushEn <= '0' ;
      pushId <=
       "0000000000000000000000000000000000000000000000000000000000000000" ;
      pollState <= '0' ;
      pushDlyTimer <= "00000000" ;
      hasData := '0' ;
    elsif ((GFLock = '0')) then
      if (ext(pushDlyTimer,32) /= "00000000000000000000000000000000") then
        pushDlyTimer <= ext((ext(pushDlyTimer,32) -
         "00000000000000000000000000000001"),8) ;
      end if;
      if (((hasData = '0') and ext(pktEnD,$QKTN_MAX(abs(conv_integer((ext
      (WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX
      (WIDTH'length,32)))))+1,32)) /= integer_to_std(0,$QKTN_MAX(abs
      (conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std
      (1,$QKTN_MAX(WIDTH'length,32)))))+1,32)))) then
        pushDlyTimer <= gfPushDly ;
      end if;
      if (ext(pktEnCnt,$QKTN_MAX(abs((LG_WIDTH - 1))+1,32)) /= integer_to_std
      (0,$QKTN_MAX(abs((LG_WIDTH - 1))+1,32))) then
        hasData := '1' ;
      end if;
      DUMMY6 := ext(pollState,32);

      case DUMMY6  is
        when  "00000000000000000000000000000000"  =>
          if (pollEn = '1') then
            wptrS <= wptrP ;
            hasData := boolean_to_std(ext(pktEnCnt,$QKTN_MAX(abs((LG_WIDTH - 1)
            )+1,32)) /= integer_to_std(0,$QKTN_MAX(abs((LG_WIDTH - 1))+1,32))) ;
            if (ext(wptrP,abs((ADDR_SIZE - 1))+1) /= ext(rptr,abs((ADDR_SIZE - 1
            ))+1)) then
              pushEn <= '1' ;
              pushAddr <= rptr ;
              pushLen <= (ext(wptrP,abs((ADDR_SIZE - 1))+1) - ext(rptr,abs(
              (ADDR_SIZE - 1))+1)) ;
              pushId <= (pushId +
               "0000000000000000000000000000000000000000000000000000000000000001"
              ) ;
            end if;
            pollState <= '1' ;
          end if;
        when  "00000000000000000000000000000001"  =>
          pushEn <= '0' ;
          if ((pollEn = '0')) then
            rptr <= wptrS ;
            pollState <= '0' ;
          end if;
        when others => null ;
      end case;
    end if;
  end fsmPollState;

  procedure fsmWptrP ( signal GFReset  : in std_logic;  variable GFLock  : in
   std_logic;  variable pktEnCnt  : in std_logic_vector((LG_WIDTH - 1) downto 0
  );  signal wptrP  : inout std_logic_vector((ADDR_SIZE - 1) downto 0)) is
  begin
    if (GFReset = '1') then
      wptrP <= integer_to_std(0,abs((ADDR_SIZE - 1))+1) ;
    elsif ((GFLock = '0')) then
      wptrP <= ext(ext(ext(wptrP,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,abs((LG_WIDTH
       - 1))+1)) + ext(pktEnCnt,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,abs((LG_WIDTH -
       1))+1)),abs((ADDR_SIZE - 1))+1),abs((ADDR_SIZE - 1))+1) ;
    end if;
  end fsmWptrP;
  -- quickturn use_hardmacro_pack ixc_gf2_pkt_buf
  -- quickturn fast_clock fclk

begin
  GFLock <= '0' ;
  fill <= (ext(wptrP,abs((ADDR_SIZE - 1))+1) - ext(rptr,abs((ADDR_SIZE - 1))+1))
   ;
  DUMMY1 <= '1' when full = '1' else 'Z' ;
  filledEnough <= boolean_to_std((ADDR_SIZE < 4 or ext(fill,$QKTN_MAX(abs(
  (ADDR_SIZE - 1))+1,32)) >= (ext(shl(integer_to_std(1,$QKTN_MAX(abs((ADDR_SIZE
   - 1))+1,32)),integer_to_std((ADDR_SIZE - 4),32)) * ext(DUMMY4,$QKTN_MAX(abs(
  (ADDR_SIZE - 1))+1,32)),$QKTN_MAX(abs((ADDR_SIZE - 1))+1,32))) or (full)='1'))
   ;
  delayedEnough <= boolean_to_std(ext(pushDlyTimer,32) =
   "00000000000000000000000000000000") ;
  fillN <= ext(ext(ext(fill,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,abs((LG_WIDTH - 1)
  )+1)) + ext(pktEnCnt,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,abs((LG_WIDTH - 1))+1)
  ),abs((ADDR_SIZE - 1))+1),abs((ADDR_SIZE - 1))+1) ;
  overflow <= boolean_to_std(ext(fillN,abs((ADDR_SIZE - 1))+1) < ext(fill,abs(
  (ADDR_SIZE - 1))+1)) ;
  uckg : ixc_uClkGen
    port map (
       uClk
    ) ;
  Generate1 : if genblk1 : ((GF2_1XCB)/=0) generate
  begin

    process --:o845
    (uClk)
      variable hasData_DUMMY0 : std_logic ;
    begin
      if (uClk'event and uClk = '1') then
        fsmPollState
        (DUMMY0,GFLock,pushDlyTimer,pktEnD,hasData_DUMMY0,DUMMY3,pktEnCnt,pollState,pollEn,wptrP,rptr,pushId,wptrS,pushEn,pushAddr,pushLen
        ) ;
      end if ;
      hasData <= transport hasData_DUMMY0;
    end process ;
  else DUMMY7 : generate
  begin

    process --:o845
    (fclk)
      variable hasData_DUMMY1 : std_logic ;
    begin
      if (fclk'event and fclk = '1') then
        fsmPollState
        (DUMMY0,GFLock,pushDlyTimer,pktEnD,hasData_DUMMY1,DUMMY3,pktEnCnt,pollState,pollEn,wptrP,rptr,pushId,wptrS,pushEn,pushAddr,pushLen
        ) ;
      end if ;
      hasData <= transport hasData_DUMMY1;
    end process ;
  end generate ;

  process --:o898
  (*)
  begin
    if (DUMMY2 = '1') then
      full <= boolean_to_std(ext(fill,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,$QKTN_MAX
      (32,WIDTH'length))) >= (shl(integer_to_std(1,$QKTN_MAX(abs((ADDR_SIZE - 1)
      )+1,$QKTN_MAX(32,WIDTH'length))),integer_to_std(ADDR_SIZE,32)) - (ext
      (integer_to_std(8,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,$QKTN_MAX
      (32,WIDTH'length))) * ext(WIDTH,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,$QKTN_MAX
      (32,WIDTH'length))),$QKTN_MAX(abs((ADDR_SIZE - 1))+1,$QKTN_MAX
      (32,WIDTH'length)))))) ;
    else
      full <= boolean_to_std(ext(fill,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,$QKTN_MAX
      (32,WIDTH'length))) >= (shl(integer_to_std(1,$QKTN_MAX(abs((ADDR_SIZE - 1)
      )+1,$QKTN_MAX(32,WIDTH'length))),integer_to_std(ADDR_SIZE,32)) - (ext
      (integer_to_std(4,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,$QKTN_MAX
      (32,WIDTH'length))) * ext(WIDTH,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,$QKTN_MAX
      (32,WIDTH'length))),$QKTN_MAX(abs((ADDR_SIZE - 1))+1,$QKTN_MAX
      (32,WIDTH'length)))))) ;
    end if;
  end process ;
  pollReq <= '1' when ((hasData)='1' and ((filledEnough)='1' or (delayedEnough
  )='1')) else 'Z' ;
  Generate2 : if genblk2 : ((GF2_1XCB)/=0) generate
  begin
    ptkEnLD : ixc_gf2_latch
      generic map(W => conv_integer(WIDTH))
      port map (
         pktEnL
        ,pktEn
        ,uClk
      ) ;

    process --:o918
    (uClk)
    begin
      if (uClk'event and uClk = '1') then
        pktEnD <= (ext(pktEn,abs(conv_integer((ext(WIDTH,$QKTN_MAX
        (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1)
         or ext(pktEnL,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
         integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1)) ;
        pktDataD <= ext(pktData,abs(conv_integer(((ext(ext(WIDTH,$QKTN_MAX
        (WIDTH'length,32)) * integer_to_std(64,$QKTN_MAX(WIDTH'length,32)
        ),$QKTN_MAX(WIDTH'length,32))) - integer_to_std(1,$QKTN_MAX
        (WIDTH'length,32)))))+1) ;
      end if ;
    end process ;
  else DUMMY8 : generate
  begin

    process --:o923
    (*)
    begin
      pktEnD <= ext(pktEn,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)
      ) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) ;
      pktDataD <= ext(pktData,abs(conv_integer(((ext(ext(WIDTH,$QKTN_MAX
      (WIDTH'length,32)) * integer_to_std(64,$QKTN_MAX(WIDTH'length,32)
      ),$QKTN_MAX(WIDTH'length,32))) - integer_to_std(1,$QKTN_MAX
      (WIDTH'length,32)))))+1) ;
    end process ;
  end generate ;
  popc : ixc_pop_cnt
    generic map(W => WIDTH,LG_W => LG_WIDTH)
    port map (
       pktEnD
      ,pktEnCnt
    ) ;
  Generate3 : if genblk3 : ((GF2_1XCB)/=0) generate
  begin

    process --:o931
    (uClk)
    begin
      if (uClk'event and uClk = '1') then
        fsmWptrP(DUMMY0,GFLock,pktEnCnt,wptrP) ;
      end if ;
    end process ;
  else DUMMY9 : generate
  begin

    process --:o931
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        fsmWptrP(DUMMY0,GFLock,pktEnCnt,wptrP) ;
      end if ;
    end process ;
  end generate ;

  process --:o940
  (*)
    variable wptr_DUMMY2 : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
    variable i : integer := 0 ;
  begin
    wptr_DUMMY2 := wptr;
    cmdData <= ext(pktEnCnt,7) ;
    cmdEn <= or_reduce(pktEnD) ;
    wptr_DUMMY2 := wptrP ;
    for i in 0 to integer'PRED(conv_integer(WIDTH)) loop --:o945
      if (pktEnD(i) = '1') then
        ixc_gf2_pkt_buf(conv_integer(wptr_DUMMY2)) <= pktDataD((i * 64)+(64-1)
         downto (i * 64)) ;
      end if;
      wptr_DUMMY2 := (ext(wptr_DUMMY2,abs((ADDR_SIZE - 1))+1) + ext(pktEnD(i
      ),abs((ADDR_SIZE - 1))+1)) ;
    end loop;
    wptr <= transport wptr_DUMMY2;
  end process ;
  overflow_err : ixc_error
    generic map(SIZE => 1,UCLK_COND => GF2_1XCB)
    port map (
       overflow
    ) ;

  process --:o967
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      pushCtlWord(15 downto 0) <= ext(pushId,16) ;
      pushCtlWord(39 downto 16) <= ext(pushLen,24) ;
      pushCtlWord(63 downto 40) <= ext(pushAddr,24) ;
    end if ;
  end process ;

  process --:o972
  (*)
  begin
    ixc_gf2_pkt_buf(signed_int((BUF_SIZE - "00000000000000000000000000000001")))
     <= pushCtlWord ;
  end process ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
