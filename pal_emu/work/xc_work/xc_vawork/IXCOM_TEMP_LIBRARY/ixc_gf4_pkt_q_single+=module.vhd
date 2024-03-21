architecture module of ixc_gf4_pkt_q_single is
  -- quickturn always_on
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

  component ixc_pkt_q_single_buf
    generic (
      WIDTH : std_logic_vector := signed(integer_to_std(64,32)) ;
      ADDR_SIZE : integer := 18 ;
      ARCH : integer := 0
    ) ;
    port (
      wen : in std_logic := 'X' ;
      wptrP : in std_logic_vector((ADDR_SIZE - 1) downto 0) := (others => 'X') ;
      data : in std_logic_vector(conv_integer(((ext(ext(WIDTH,$QKTN_MAX
      (WIDTH'length,32)) * integer_to_std(64,$QKTN_MAX(WIDTH'length,32)
      ),$QKTN_MAX(WIDTH'length,32))) - integer_to_std(1,$QKTN_MAX
      (WIDTH'length,32)))) downto 0) := (others => 'X') ;
      pushEn : in std_logic := 'X' ;
      pushAddr : in std_logic_vector((ADDR_SIZE - 1) downto 0) := (others => 'X'
      ) ;
      pushLen : in std_logic_vector((ADDR_SIZE - 1) downto 0) := (others => 'X')
       ;
    pushId : in std_logic_vector(63 downto 0) := (others => 'X') ) ;
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
  signal DUMMY2 : std_logic ;
  signal GFLock : std_logic ;
  signal fill : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  signal DUMMY4 : std_logic ;
  signal DUMMY3 : std_logic ;
  signal filledEnough : std_logic ;
  signal delayedEnough : std_logic ;
  signal b_simT : std_logic_vector(63 downto 0) ;
  signal l_simT : std_logic_vector(63 downto 0) ;
  signal totalPktDataD : std_logic_vector(conv_integer(((ext(ext
  (TOTAL_WIDTH,$QKTN_MAX(WIDTH'length,32)) * integer_to_std(64,$QKTN_MAX
  (WIDTH'length,32)),$QKTN_MAX(WIDTH'length,32))) - integer_to_std(1,$QKTN_MAX
  (WIDTH'length,32)))) downto 0) ;
  signal wptrB : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  signal pktEnB : std_logic ;
  signal fillN : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  signal overflow : std_logic ;
  signal simTime : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of simTime: signal is 1 ;
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
  signal pktEnD : std_logic ;
  attribute _2_state_ of pktEnD: signal is 1 ;
  signal pktEnL : std_logic ;
  attribute _2_state_ of pktEnL: signal is 1 ;
  signal pktEnLQ : std_logic ;
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
  signal DUMMY5 : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of DUMMY5: signal is 1 ;
  signal pushDlyTimer : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of pushDlyTimer: signal is 1 ;
  signal DUMMY6 : std_logic_vector(3 downto 0) ;
  attribute _2_state_ of DUMMY6: signal is 1 ;
  signal full : std_logic ;
  signal pktEnD2 : std_logic ;
  attribute _2_state_ of pktEnD2: signal is 1 ;
  signal DUMMY0 : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of DUMMY0: signal is 1 ;
  signal DUMMY1 : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of DUMMY1: signal is 1 ;

  procedure fsmPollState ( signal GFReset  : in std_logic;  variable GFLock  :
   in std_logic;  signal pushDlyTimer  : inout std_logic_vector(7 downto 0); 
   variable pktEnD  : in std_logic;  variable hasData  : inout std_logic; 
   variable gfPushDly  : in std_logic_vector(7 downto 0);  signal pollState  :
   inout std_logic;  signal pollEn  : in std_logic;  variable wptrP  : in
   std_logic_vector((ADDR_SIZE - 1) downto 0);  signal rptr  : inout
   std_logic_vector((ADDR_SIZE - 1) downto 0);  signal pushId  : inout
   std_logic_vector(63 downto 0);  signal wptrS  : inout std_logic_vector(
  (ADDR_SIZE - 1) downto 0);  signal pushEn  : out std_logic;  signal pushAddr 
   : out std_logic_vector((ADDR_SIZE - 1) downto 0);  signal pushLen  : out
   std_logic_vector((ADDR_SIZE - 1) downto 0)) is
    variable DUMMY7 : std_logic_vector(0 to 31) ;
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
      if (((hasData = '0') and ext(pktEnD,32) /=
       "00000000000000000000000000000000")) then
        pushDlyTimer <= gfPushDly ;
      end if;
      if (ext(pktEnD,32) /= "00000000000000000000000000000000") then
        hasData := '1' ;
      end if;
      DUMMY7 := ext(pollState,32);

      case DUMMY7  is
        when  "00000000000000000000000000000000"  =>
          if (pollEn = '1') then
            wptrS <= wptrP ;
            hasData := boolean_to_std(ext(pktEnD,32) /=
             "00000000000000000000000000000000") ;
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
   std_logic;  variable pktEnD  : in std_logic;  signal wptrP  : inout
   std_logic_vector((ADDR_SIZE - 1) downto 0)) is
  begin
    if (GFReset = '1') then
      wptrP <= integer_to_std(0,abs((ADDR_SIZE - 1))+1) ;
    elsif ((GFLock = '0')) then
      wptrP <= (ext(wptrP,abs((ADDR_SIZE - 1))+1) + ext(pktEnD,abs((ADDR_SIZE -
       1))+1)) ;
    end if;
  end fsmWptrP;
  -- quickturn fast_clock fclk

begin
  GFLock <= '0' ;
  fill <= (ext(wptrP,abs((ADDR_SIZE - 1))+1) - ext(rptr,abs((ADDR_SIZE - 1))+1))
   ;
  DUMMY3 <= '1' when full = '1' else 'Z' ;
  filledEnough <= boolean_to_std((ADDR_SIZE < 4 or ext(fill,$QKTN_MAX(abs(
  (ADDR_SIZE - 1))+1,32)) >= (ext(shl(integer_to_std(1,$QKTN_MAX(abs((ADDR_SIZE
   - 1))+1,32)),integer_to_std((ADDR_SIZE - 4),32)) * ext(DUMMY6,$QKTN_MAX(abs(
  (ADDR_SIZE - 1))+1,32)),$QKTN_MAX(abs((ADDR_SIZE - 1))+1,32))) or (full)='1'))
   ;
  delayedEnough <= boolean_to_std(ext(pushDlyTimer,32) =
   "00000000000000000000000000000000") ;
  b_simT <= DUMMY0 when NEEDS_ARGS_IN_FFS /= 0 else DUMMY1 ;
  totalPktDataD <= ext(std_logic_vector'(pktDataD & std_logic_vector'(simTime(55
   downto 24) & std_logic'('1') & xor_reduce(simTime(55 downto 48)) & xor_reduce
  (simTime(47 downto 40)) & xor_reduce(simTime(39 downto 32)) & xor_reduce
  (simTime(31 downto 24)) & xor_reduce(simTime(23 downto 16)) & xor_reduce
  (simTime(15 downto 8)) & xor_reduce(simTime(7 downto 0)) & simTime(23 downto 0
  ))),abs(conv_integer(((ext(ext(TOTAL_WIDTH,$QKTN_MAX(WIDTH'length,32)) *
   integer_to_std(64,$QKTN_MAX(WIDTH'length,32)),$QKTN_MAX(WIDTH'length,32))) -
   integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) ;
  wptrB <= ext(wptrP,abs((ADDR_SIZE - 1))+1) when NEEDS_ARGS_IN_FFS /= 0 else 
  (ext(wptrP,abs((ADDR_SIZE - 1))+1) + (ext(pktEnD,abs((ADDR_SIZE - 1))+1) + ext
  (pktEnD2,abs((ADDR_SIZE - 1))+1))) ;
  pktEnB <= pktEnD when NEEDS_ARGS_IN_FFS /= 0 else '1' ;
  fillN <= (ext(fill,abs((ADDR_SIZE - 1))+1) + ext(pktEnD,abs((ADDR_SIZE - 1))+1
  )) ;
  overflow <= boolean_to_std(ext(fillN,abs((ADDR_SIZE - 1))+1) < ext(fill,abs(
  (ADDR_SIZE - 1))+1)) ;
  uckg : ixc_uClkGen
    port map (
       uClk
    ) ;
  Generate1 : if genblk1 : ((GF2_1XCB)/=0) generate
  begin

    process --:o1632
    (uClk)
      variable hasData_DUMMY0 : std_logic ;
    begin
      if (uClk'event and uClk = '1') then
        fsmPollState
        (DUMMY2,GFLock,pushDlyTimer,pktEnD,hasData_DUMMY0,DUMMY5,pollState,pollEn,wptrP,rptr,pushId,wptrS,pushEn,pushAddr,pushLen
        ) ;
      end if ;
      hasData <= transport hasData_DUMMY0;
    end process ;
  else DUMMY8 : generate
  begin

    process --:o1632
    (fclk)
      variable hasData_DUMMY1 : std_logic ;
    begin
      if (fclk'event and fclk = '1') then
        fsmPollState
        (DUMMY2,GFLock,pushDlyTimer,pktEnD,hasData_DUMMY1,DUMMY5,pollState,pollEn,wptrP,rptr,pushId,wptrS,pushEn,pushAddr,pushLen
        ) ;
      end if ;
      hasData <= transport hasData_DUMMY1;
    end process ;
  end generate ;

  process --:o1685
  (*)
  begin
    if (DUMMY4 = '1') then
      full <= boolean_to_std(ext(fill,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,32)) >= (
      (shl(integer_to_std(1,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,32)),integer_to_std
      (ADDR_SIZE,32)) - integer_to_std(8,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,32)))
       - (ext(integer_to_std(2,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,32)) *
       boolean_to_std((NEEDS_ARGS_IN_FFS = 0),$QKTN_MAX(abs((ADDR_SIZE - 1)
      )+1,32)),$QKTN_MAX(abs((ADDR_SIZE - 1))+1,32))))) ;
    else
      full <= boolean_to_std(ext(fill,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,32)) >= (
      (shl(integer_to_std(1,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,32)),integer_to_std
      (ADDR_SIZE,32)) - integer_to_std(4,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,32)))
       - (ext(integer_to_std(1,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,32)) *
       boolean_to_std((NEEDS_ARGS_IN_FFS = 0),$QKTN_MAX(abs((ADDR_SIZE - 1)
      )+1,32)),$QKTN_MAX(abs((ADDR_SIZE - 1))+1,32))))) ;
    end if;
  end process ;
  pollReq <= '1' when ((hasData)='1' and ((filledEnough)='1' or (delayedEnough
  )='1')) else 'Z' ;
  Generate2 : if genblk2 : ((GF2_1XCB)/=0) generate
    signal DUMMY9 : std_logic_vector((conv_integer(WIDTH) - 1) downto 0) ;
    signal DUMMY10 : std_logic_vector((conv_integer(WIDTH) - 1) downto 0) ;
  begin
    ptkEnLD : ixc_gf2_latch
      generic map(W => conv_integer(WIDTH))
      port map (
         DUMMY9
        ,DUMMY10
        ,uClk
      ) ;
    pktEnL <= it_conv_std_logic(DUMMY9) ;
    DUMMY10 <= ext(pktEn,abs((conv_integer(WIDTH) - 1))+1) ;

    process --:o1703
    (uClk)
    begin
      if (uClk'event and uClk = '1') then
        pktEnD <= (pktEn or pktEnL) ;
      end if ;
    end process ;
    Generate3 : if genblk1 : ((NEEDS_ARGS_IN_FFS)/=0) generate
    begin

      process --:o1705
      (uClk)
      begin
        if (uClk'event and uClk = '1') then
          pktDataD <= ext(pktData,abs(conv_integer(((ext(ext(WIDTH,$QKTN_MAX
          (WIDTH'length,32)) * integer_to_std(64,$QKTN_MAX(WIDTH'length,32)
          ),$QKTN_MAX(WIDTH'length,32))) - integer_to_std(1,$QKTN_MAX
          (WIDTH'length,32)))))+1) ;
        end if ;
      end process ;

      process --:o1706
      (*)
      begin
        pktEnD2 <= '0' ;
      end process ;
    else DUMMY11 : generate
    begin

      process --:o1708
      (*)
      begin
        pktDataD <= ext(pktData,abs(conv_integer(((ext(ext(WIDTH,$QKTN_MAX
        (WIDTH'length,32)) * integer_to_std(64,$QKTN_MAX(WIDTH'length,32)
        ),$QKTN_MAX(WIDTH'length,32))) - integer_to_std(1,$QKTN_MAX
        (WIDTH'length,32)))))+1) ;
      end process ;

      process --:o1709
      (*)
      begin
        pktEnD2 <= (pktEn or pktEnL) ;
      end process ;
    end generate ;
  else DUMMY12 : generate
  begin

    process --:o1712
    (*)
    begin
      pktEnD <= pktEn ;
      pktEnD2 <= '0' ;
      pktDataD <= ext(pktData,abs(conv_integer(((ext(ext(WIDTH,$QKTN_MAX
      (WIDTH'length,32)) * integer_to_std(64,$QKTN_MAX(WIDTH'length,32)
      ),$QKTN_MAX(WIDTH'length,32))) - integer_to_std(1,$QKTN_MAX
      (WIDTH'length,32)))))+1) ;
    end process ;
  end generate ;
  Generate4 : if genblk3 : ((GF2_1XCB)/=0) generate
  begin
    simTLD : ixc_gf2_latch
      generic map(W => 64)
      port map (
         l_simT
        ,b_simT
        ,uClk
      ) ;

    process --:o1725
    (uClk)
    begin
      if (uClk'event and uClk = '1') then
        simTime <= l_simT ;
      end if ;
    end process ;
  else DUMMY13 : generate
  begin

    process --:o1729
    (*)
    begin
      simTime <= b_simT ;
    end process ;
  end generate ;
  Generate5 : if genblk4 : ((GF2_1XCB)/=0) generate
  begin

    process --:o1732
    (uClk)
    begin
      if (uClk'event and uClk = '1') then
        fsmWptrP(DUMMY2,GFLock,pktEnD,wptrP) ;
      end if ;
    end process ;
  else DUMMY14 : generate
  begin

    process --:o1732
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        fsmWptrP(DUMMY2,GFLock,pktEnD,wptrP) ;
      end if ;
    end process ;
  end generate ;
  sbf : for i in 0 to conv_integer((ext(TOTAL_WIDTH,$QKTN_MAX($QKTN_MAX
  (WIDTH'length,32),SQ_WIDTH'length)) / ext(SQ_WIDTH,$QKTN_MAX($QKTN_MAX
  (WIDTH'length,32),SQ_WIDTH'length)))) - 1 generate
    signal DUMMY15 : std_logic_vector(conv_integer(((ext(ext(SQ_WIDTH,$QKTN_MAX
    (SQ_WIDTH'length,32)) * integer_to_std(64,$QKTN_MAX(SQ_WIDTH'length,32)
    ),$QKTN_MAX(SQ_WIDTH'length,32))) - integer_to_std(1,$QKTN_MAX
    (SQ_WIDTH'length,32)))) downto 0) ;
  begin
    b : ixc_pkt_q_single_buf
      generic map(WIDTH => SQ_WIDTH,ADDR_SIZE => ADDR_SIZE,ARCH => ARCH)
      port map (
         pktEnB
        ,wptrB
        ,DUMMY15
        ,pushEn
        ,pushAddr
        ,pushLen
        ,pushId
      ) ;
    DUMMY15 <= ext(totalPktDataD(conv_integer((ext((ext(integer_to_std
    (i,$QKTN_MAX(32,SQ_WIDTH'length)) * ext(SQ_WIDTH,$QKTN_MAX
    (32,SQ_WIDTH'length)),$QKTN_MAX(32,SQ_WIDTH'length))) * integer_to_std
    (64,$QKTN_MAX(32,SQ_WIDTH'length)),$QKTN_MAX(32,SQ_WIDTH'length))))+
    (conv_integer((ext(ext(SQ_WIDTH,$QKTN_MAX(SQ_WIDTH'length,32)) *
     integer_to_std(64,$QKTN_MAX(SQ_WIDTH'length,32)),$QKTN_MAX
    (SQ_WIDTH'length,32))))-1) downto conv_integer((ext((ext(integer_to_std
    (i,$QKTN_MAX(32,SQ_WIDTH'length)) * ext(SQ_WIDTH,$QKTN_MAX
    (32,SQ_WIDTH'length)),$QKTN_MAX(32,SQ_WIDTH'length))) * integer_to_std
    (64,$QKTN_MAX(32,SQ_WIDTH'length)),$QKTN_MAX(32,SQ_WIDTH'length))))),abs
    (conv_integer(((ext(ext(SQ_WIDTH,$QKTN_MAX(SQ_WIDTH'length,32)) *
     integer_to_std(64,$QKTN_MAX(SQ_WIDTH'length,32)),$QKTN_MAX
    (SQ_WIDTH'length,32))) - integer_to_std(1,$QKTN_MAX(SQ_WIDTH'length,32))))
    )+1) ;
  end generate ;
  Generate6 : if sbr : (it_conv_boolean(ext(TOTAL_WIDTH,$QKTN_MAX($QKTN_MAX
  (WIDTH'length,32),SQ_WIDTH'length)) rem ext(SQ_WIDTH,$QKTN_MAX($QKTN_MAX
  (WIDTH'length,32),SQ_WIDTH'length)))) generate
    signal DUMMY16 : std_logic_vector(conv_integer(((ext(ext((ext
    (TOTAL_WIDTH,$QKTN_MAX($QKTN_MAX(WIDTH'length,32),SQ_WIDTH'length)) rem ext
    (SQ_WIDTH,$QKTN_MAX($QKTN_MAX(WIDTH'length,32),SQ_WIDTH'length))),$QKTN_MAX
    ($QKTN_MAX(WIDTH'length,32),SQ_WIDTH'length)) * integer_to_std(64,$QKTN_MAX
    ($QKTN_MAX(WIDTH'length,32),SQ_WIDTH'length)),$QKTN_MAX($QKTN_MAX
    (WIDTH'length,32),SQ_WIDTH'length))) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
    (WIDTH'length,32),SQ_WIDTH'length)))) downto 0) ;
  begin
    b : ixc_pkt_q_single_buf
      generic map(WIDTH => (ext(TOTAL_WIDTH,$QKTN_MAX($QKTN_MAX(WIDTH'length,32
      ),SQ_WIDTH'length)) rem ext(SQ_WIDTH,$QKTN_MAX($QKTN_MAX(WIDTH'length,32
      ),SQ_WIDTH'length))),ADDR_SIZE => ADDR_SIZE,ARCH => ARCH)
      port map (
         pktEnB
        ,wptrB
        ,DUMMY16
        ,pushEn
        ,pushAddr
        ,pushLen
        ,pushId
      ) ;
    DUMMY16 <= ext(totalPktDataD(conv_integer(((ext(ext(TOTAL_WIDTH,$QKTN_MAX
    ($QKTN_MAX(WIDTH'length,32),$QKTN_MAX($QKTN_MAX(WIDTH'length,32
    ),SQ_WIDTH'length))) * integer_to_std(64,$QKTN_MAX($QKTN_MAX(WIDTH'length,32
    ),$QKTN_MAX($QKTN_MAX(WIDTH'length,32),SQ_WIDTH'length))),$QKTN_MAX
    ($QKTN_MAX(WIDTH'length,32),$QKTN_MAX($QKTN_MAX(WIDTH'length,32
    ),SQ_WIDTH'length)))) - (ext((ext(TOTAL_WIDTH,$QKTN_MAX($QKTN_MAX
    (WIDTH'length,32),$QKTN_MAX($QKTN_MAX(WIDTH'length,32),SQ_WIDTH'length)))
     rem ext(SQ_WIDTH,$QKTN_MAX($QKTN_MAX(WIDTH'length,32),$QKTN_MAX($QKTN_MAX
    (WIDTH'length,32),SQ_WIDTH'length)))) * integer_to_std(64,$QKTN_MAX
    ($QKTN_MAX(WIDTH'length,32),$QKTN_MAX($QKTN_MAX(WIDTH'length,32
    ),SQ_WIDTH'length))),$QKTN_MAX($QKTN_MAX(WIDTH'length,32),$QKTN_MAX
    ($QKTN_MAX(WIDTH'length,32),SQ_WIDTH'length))))))+(conv_integer((ext((ext
    (TOTAL_WIDTH,$QKTN_MAX($QKTN_MAX(WIDTH'length,32),SQ_WIDTH'length)) rem ext
    (SQ_WIDTH,$QKTN_MAX($QKTN_MAX(WIDTH'length,32),SQ_WIDTH'length))) *
     integer_to_std(64,$QKTN_MAX($QKTN_MAX(WIDTH'length,32),SQ_WIDTH'length)
    ),$QKTN_MAX($QKTN_MAX(WIDTH'length,32),SQ_WIDTH'length))))-1) downto
     conv_integer(((ext(ext(TOTAL_WIDTH,$QKTN_MAX($QKTN_MAX(WIDTH'length,32
    ),$QKTN_MAX($QKTN_MAX(WIDTH'length,32),SQ_WIDTH'length))) * integer_to_std
    (64,$QKTN_MAX($QKTN_MAX(WIDTH'length,32),$QKTN_MAX($QKTN_MAX(WIDTH'length,32
    ),SQ_WIDTH'length))),$QKTN_MAX($QKTN_MAX(WIDTH'length,32),$QKTN_MAX
    ($QKTN_MAX(WIDTH'length,32),SQ_WIDTH'length)))) - (ext((ext
    (TOTAL_WIDTH,$QKTN_MAX($QKTN_MAX(WIDTH'length,32),$QKTN_MAX($QKTN_MAX
    (WIDTH'length,32),SQ_WIDTH'length))) rem ext(SQ_WIDTH,$QKTN_MAX($QKTN_MAX
    (WIDTH'length,32),$QKTN_MAX($QKTN_MAX(WIDTH'length,32),SQ_WIDTH'length)))) *
     integer_to_std(64,$QKTN_MAX($QKTN_MAX(WIDTH'length,32),$QKTN_MAX($QKTN_MAX
    (WIDTH'length,32),SQ_WIDTH'length))),$QKTN_MAX($QKTN_MAX(WIDTH'length,32
    ),$QKTN_MAX($QKTN_MAX(WIDTH'length,32),SQ_WIDTH'length))))))),abs
    (conv_integer(((ext(ext((ext(TOTAL_WIDTH,$QKTN_MAX($QKTN_MAX(WIDTH'length,32
    ),SQ_WIDTH'length)) rem ext(SQ_WIDTH,$QKTN_MAX($QKTN_MAX(WIDTH'length,32
    ),SQ_WIDTH'length))),$QKTN_MAX($QKTN_MAX(WIDTH'length,32),SQ_WIDTH'length))
     * integer_to_std(64,$QKTN_MAX($QKTN_MAX(WIDTH'length,32),SQ_WIDTH'length)
    ),$QKTN_MAX($QKTN_MAX(WIDTH'length,32),SQ_WIDTH'length))) - integer_to_std
    (1,$QKTN_MAX($QKTN_MAX(WIDTH'length,32),SQ_WIDTH'length)))))+1) ;
  end generate ;
  overflow_err : ixc_error
    generic map(SIZE => 1,UCLK_COND => GF2_1XCB)
    port map (
       overflow
    ) ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
