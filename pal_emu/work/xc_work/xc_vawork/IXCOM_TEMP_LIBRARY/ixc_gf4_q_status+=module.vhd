architecture module of ixc_gf4_q_status is
  -- quickturn always_on
  type DUMMY5 is array(integer range <>) of std_logic_vector(63 downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component ixc_uClkGen
    port (
    uclk : out std_logic ) ;
  end component ;

  component ixc_tbcpo_push
    generic (
      ARCH : integer := 0
    ) ;
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

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal fclk : std_logic ;
  signal uClk : std_logic ;
  signal DUMMY1 : std_logic ;
  signal GFLock : std_logic ;
  signal DUMMY2 : std_logic ;
  signal callEmuEv : std_logic ;
  signal oneStepPI : std_logic ;
  signal pstatus : std_logic_vector(conv_integer(((ext(ext(NUM_GRP_64,$QKTN_MAX
  (NUM_PKT_QS'length,32)) * integer_to_std(64,$QKTN_MAX(NUM_PKT_QS'length,32)
  ),$QKTN_MAX(NUM_PKT_QS'length,32))) - integer_to_std(1,$QKTN_MAX
  (NUM_PKT_QS'length,32)))) downto 0) ;
  signal groupEncoding : std_logic_vector(63 downto 0) ;
  signal pollQ : std_logic ;
  signal busy : std_logic ;
  signal writeEn : std_logic ;
  signal DUMMY3 : std_logic ;
  signal DUMMY4 : std_logic ;
  signal ixc_gf2_q_status_buf : DUMMY5(0 to conv_integer((ext(DEPTH,$QKTN_MAX
  (NUM_PKT_QS'length,32)) - integer_to_std(1,$QKTN_MAX(NUM_PKT_QS'length,32)))))
   ;
  attribute _2_state_ of ixc_gf2_q_status_buf: signal is 1 ;
  signal simT : std_logic_vector(62 downto 0) ;
  attribute _2_state_ of simT: signal is 1 ;
  signal pollEnD : std_logic_vector(conv_integer((ext(LEVEL,$QKTN_MAX
  (LEVEL'length,32)) - integer_to_std(1,$QKTN_MAX(LEVEL'length,32)))) downto 0)
   ;
  attribute _2_state_ of pollEnD: signal is 1 ;
  signal statusD : std_logic_vector(conv_integer((ext(NUM_PKT_QS,$QKTN_MAX
  (NUM_PKT_QS'length,32)) - integer_to_std(1,$QKTN_MAX(NUM_PKT_QS'length,32))))
   downto 0) ;
  attribute _2_state_ of statusD: signal is 1 ;
  signal DUMMY0 : std_logic_vector(62 downto 0) ;
  attribute _2_state_ of DUMMY0: signal is 1 ;
  signal simTime : std_logic_vector(conv_integer(((ext(ext(PQ2QS_DLY,$QKTN_MAX
  ($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32)) * integer_to_std(63,$QKTN_MAX
  ($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32)),$QKTN_MAX($QKTN_MAX
  (LEVEL'length,GF2_1XCB'length),32))) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
  (LEVEL'length,GF2_1XCB'length),32)))) downto 0) ;
  attribute _2_state_ of simTime: signal is 1 ;
  signal pollState : std_logic_vector(1 downto 0) ;
  attribute _2_state_ of pollState: signal is 1 ;
  signal pushEn : std_logic ;
  attribute _2_state_ of pushEn: signal is 1 ;
  signal pushAddr : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  attribute _2_state_ of pushAddr: signal is 1 ;
  signal pushLen : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  attribute _2_state_ of pushLen: signal is 1 ;
  signal wptr : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  attribute _2_state_ of wptr: signal is 1 ;
  signal pushId : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of pushId: signal is 1 ;
  signal j : integer ;
  attribute _2_state_ of j: signal is 1 ;
  signal pushCtlWord : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of pushCtlWord: signal is 1 ;

  procedure fsmPollEnD ( signal GFReset  : in std_logic;  variable GFLock  : in
   std_logic;  signal pollEnD  : inout std_logic_vector(conv_integer((ext
  (LEVEL,$QKTN_MAX(LEVEL'length,32)) - integer_to_std(1,$QKTN_MAX
  (LEVEL'length,32)))) downto 0);  signal pollEn  : in std_logic;  signal status
    : in std_logic_vector(conv_integer((ext(NUM_PKT_QS,$QKTN_MAX
  (NUM_PKT_QS'length,32)) - integer_to_std(1,$QKTN_MAX(NUM_PKT_QS'length,32))))
   downto 0);  signal statusD  : out std_logic_vector(conv_integer((ext
  (NUM_PKT_QS,$QKTN_MAX(NUM_PKT_QS'length,32)) - integer_to_std(1,$QKTN_MAX
  (NUM_PKT_QS'length,32)))) downto 0)) is
  begin
    if (GFReset = '1') then
      pollEnD <= integer_to_std(0,abs(conv_integer((ext(LEVEL,$QKTN_MAX
      (LEVEL'length,32)) - integer_to_std(1,$QKTN_MAX(LEVEL'length,32)))))+1) ;
      statusD <= integer_to_std(0,abs(conv_integer((ext(NUM_PKT_QS,$QKTN_MAX
      (NUM_PKT_QS'length,32)) - integer_to_std(1,$QKTN_MAX(NUM_PKT_QS'length,32)
      ))))+1) ;
    elsif ((GFLock = '0')) then
      if (ext(LEVEL,$QKTN_MAX(LEVEL'length,32)) > integer_to_std(1,$QKTN_MAX
      (LEVEL'length,32))) then
        pollEnD <= ext(std_logic_vector'(pollEn & pollEnD(conv_integer((ext
        (LEVEL,$QKTN_MAX(LEVEL'length,32)) - integer_to_std(1,$QKTN_MAX
        (LEVEL'length,32)))) downto 1)),abs(conv_integer((ext(LEVEL,$QKTN_MAX
        (LEVEL'length,32)) - integer_to_std(1,$QKTN_MAX(LEVEL'length,32)))))+1)
         ;
      else
        pollEnD <= ext(pollEn,abs(conv_integer((ext(LEVEL,$QKTN_MAX
        (LEVEL'length,32)) - integer_to_std(1,$QKTN_MAX(LEVEL'length,32)))))+1)
         ;
      end if;
      statusD <= ext(status,abs(conv_integer((ext(NUM_PKT_QS,$QKTN_MAX
      (NUM_PKT_QS'length,32)) - integer_to_std(1,$QKTN_MAX(NUM_PKT_QS'length,32)
      ))))+1) ;
    end if;
  end fsmPollEnD;

  procedure fsmPollState ( signal GFReset  : in std_logic;  variable GFLock  :
   in std_logic;  signal pollState  : inout std_logic_vector(1 downto 0); 
   variable pollQ  : in std_logic;  variable statusOut  : in std_logic; 
   variable wptr  : in std_logic_vector((ADDR_SIZE - 1) downto 0);  signal
   pushId  : inout std_logic_vector(63 downto 0);  signal pushEn  : out
   std_logic;  signal pushAddr  : out std_logic_vector((ADDR_SIZE - 1) downto 0
  );  signal pushLen  : out std_logic_vector((ADDR_SIZE - 1) downto 0)) is
    variable DUMMY6 : std_logic_vector(0 to 31) ;
  begin
    if (GFReset = '1') then
      pushEn <= '0' ;
      pushId <=
       "0000000000000000000000000000000000000000000000000000000000000000" ;
      pollState <= "00" ;
    elsif ((GFLock = '0')) then
      DUMMY6 := ext(pollState,32);

      case DUMMY6  is
        when  "00000000000000000000000000000000"  =>
          if (pollQ = '1') then
            if (statusOut = '1') then
              pushEn <= '1' ;
              pushAddr <= integer_to_std(0,abs((ADDR_SIZE - 1))+1) ;
              pushLen <= wptr ;
              pushId <= (pushId +
               "0000000000000000000000000000000000000000000000000000000000000001"
              ) ;
            end if;
            pollState <= "01" ;
          end if;
        when  "00000000000000000000000000000001"  =>
          pushEn <= '0' ;
          if ((pollQ = '0')) then
            pollState <= "00" ;
          end if;
        when others => null ;
      end case;
    end if;
  end fsmPollState;
  -- quickturn use_hardmacro_pack ixc_gf2_q_status_buf
  -- quickturn fast_clock fclk

begin
  GFLock <= '0' ;
  pstatus <= ext(statusD,abs(conv_integer(((ext(ext(NUM_GRP_64,$QKTN_MAX
  (NUM_PKT_QS'length,32)) * integer_to_std(64,$QKTN_MAX(NUM_PKT_QS'length,32)
  ),$QKTN_MAX(NUM_PKT_QS'length,32))) - integer_to_std(1,$QKTN_MAX
  (NUM_PKT_QS'length,32)))))+1) ;
  pollQ <= (pollEn and and_reduce(pollEnD)) ;
  busy <= ((pollReq or pollEn) or or_reduce(pollEnD)) ;
  writeEn <= boolean_to_std((ext(pollState,32) =
   "00000000000000000000000000000000" and (pollQ)='1')) ;
  uckg : ixc_uClkGen
    port map (
       uClk
    ) ;
  Generate1 : if genblk1 : (((IS_SV)/=0 and (ROOT)/=0)) generate
  begin
    tpo : ixc_tbcpo_push
      generic map(ARCH => ARCH)
       ;
  end generate ;
  Generate2 : if genblk2 : ((GF2_1XCB)/="0") generate
  begin

    process --:o1263
    (uClk)
    begin
      if (uClk'event and uClk = '1') then
        fsmPollEnD(DUMMY1,GFLock,pollEnD,pollEn,status,statusD) ;
      end if ;
    end process ;
  else DUMMY7 : generate
  begin

    process --:o1263
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        fsmPollEnD(DUMMY1,GFLock,pollEnD,pollEn,status,statusD) ;
      end if ;
    end process ;
  end generate ;
  Generate3 : if genblk3 : ((GF2_1XCB)/="0") generate
  begin
    simTLD : ixc_gf2_latch
      generic map(W => 63)
      port map (
         simT
        ,DUMMY0
        ,uClk
      ) ;
  else DUMMY8 : generate
  begin

    process --:o1281
    (*)
    begin
      simT <= DUMMY0 ;
    end process ;
  end generate ;
  Generate4 : if genblk4 : ((ROOT)/=0) generate

    procedure fsmSimTime ( variable GFLock  : in std_logic;  signal simTime  :
     inout std_logic_vector(conv_integer(((ext(ext(PQ2QS_DLY,$QKTN_MAX($QKTN_MAX
    (LEVEL'length,GF2_1XCB'length),32)) * integer_to_std(63,$QKTN_MAX($QKTN_MAX
    (LEVEL'length,GF2_1XCB'length),32)),$QKTN_MAX($QKTN_MAX
    (LEVEL'length,GF2_1XCB'length),32))) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
    (LEVEL'length,GF2_1XCB'length),32)))) downto 0);  variable simT  : in
     std_logic_vector(62 downto 0)) is
    begin
      if ((GFLock = '0')) then
        if (ext(PQ2QS_DLY,$QKTN_MAX($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32))
         > integer_to_std(1,$QKTN_MAX($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32
        ))) then
          simTime <= ext(std_logic_vector'(simT & simTime(conv_integer(((ext(ext
          (PQ2QS_DLY,$QKTN_MAX($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32)) *
           integer_to_std(63,$QKTN_MAX($QKTN_MAX(LEVEL'length,GF2_1XCB'length
          ),32)),$QKTN_MAX($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32))) -
           integer_to_std(1,$QKTN_MAX($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32
          )))) downto 63)),abs(conv_integer(((ext(ext(PQ2QS_DLY,$QKTN_MAX
          ($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32)) * integer_to_std
          (63,$QKTN_MAX($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32)),$QKTN_MAX
          ($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32))) - integer_to_std
          (1,$QKTN_MAX($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32)))))+1) ;
        else
          simTime <= ext(simT,abs(conv_integer(((ext(ext(PQ2QS_DLY,$QKTN_MAX
          ($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32)) * integer_to_std
          (63,$QKTN_MAX($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32)),$QKTN_MAX
          ($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32))) - integer_to_std
          (1,$QKTN_MAX($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32)))))+1) ;
        end if;
      end if;
    end fsmSimTime;
  begin
    Generate5 : if genblk1 : ((GF2_1XCB)/="0") generate
    begin

      process --:o1288
      (uClk)
      begin
        if (uClk'event and uClk = '1') then
          fsmSimTime(GFLock,simTime,simT) ;
        end if ;
      end process ;
    else DUMMY9 : generate
    begin

      process --:o1288
      (fclk)
      begin
        if (fclk'event and fclk = '1') then
          fsmSimTime(GFLock,simTime,simT) ;
        end if ;
      end process ;
    end generate ;
  end generate ;
  genblk5 : for i in 0 to 63 generate
  begin
    Generate6 : if genblk1 : (integer_to_std(i,$QKTN_MAX(NUM_PKT_QS'length,32))
     < ext(NUM_GRP_64,$QKTN_MAX(NUM_PKT_QS'length,32))) generate
    begin
      groupEncoding(i) <= or_reduce(pstatus((i * 64)+(64-1) downto (i * 64))) ;
    else DUMMY10 : generate
    begin
      groupEncoding(i) <= '0' ;
    end generate ;
  end generate ;
  statusOut <= or_reduce(groupEncoding) ;
  Generate7 : if genblk6 : ((GF2_1XCB)/="0") generate
  begin

    process --:o1321
    (uClk)
    begin
      if (uClk'event and uClk = '1') then
        fsmPollState
        (DUMMY1,GFLock,pollState,pollQ,statusOut,wptr,pushId,pushEn,pushAddr,pushLen
        ) ;
      end if ;
    end process ;
  else DUMMY11 : generate
  begin

    process --:o1321
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        fsmPollState
        (DUMMY1,GFLock,pollState,pollQ,statusOut,wptr,pushId,pushEn,pushAddr,pushLen
        ) ;
      end if ;
    end process ;
  end generate ;

  process --:o1352
  (*)
    variable wptr_DUMMY0 : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  begin
    wptr_DUMMY0 := wptr;
    ixc_gf2_q_status_buf(0) <= std_logic_vector'(simTime(62 downto 0) & DUMMY2)
     ;
    wptr_DUMMY0 := integer_to_std(1,abs((ADDR_SIZE - 1))+1) ;
    if (writeEn = '1') then
      ixc_gf2_q_status_buf(1) <= groupEncoding ;
      wptr_DUMMY0 := integer_to_std(2,abs((ADDR_SIZE - 1))+1) ;
    end if;
    for j in 2 to integer'PRED(conv_integer(ext(ext(DEPTH,$QKTN_MAX
    (NUM_PKT_QS'length,32)) - integer_to_std(1,$QKTN_MAX(NUM_PKT_QS'length,32)
    ),32))) loop --:o1359
      if (((writeEn)='1' and (pstatus(((j - 2) * 64)+(64-1) downto ((j - 2) * 64
      )))/="0")) then
        ixc_gf2_q_status_buf(conv_integer(wptr_DUMMY0)) <= pstatus(((j - 2) * 64
        )+(64-1) downto ((j - 2) * 64)) ;
        wptr_DUMMY0 := ext(ext(ext(wptr_DUMMY0,$QKTN_MAX(abs((ADDR_SIZE - 1)
        )+1,32)) + integer_to_std(1,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,32)),abs(
        (ADDR_SIZE - 1))+1),abs((ADDR_SIZE - 1))+1) ;
      end if;
    end loop;
    wptr <= transport wptr_DUMMY0;
  end process ;
  Generate8 : if genblk7 : ((ROOT)/=0) generate
  begin
    Generate9 : if genblk1 : ((IS_SV)/=0) generate
    begin
      DUMMY3 <= '1' when (busy)='1' else 'Z' ;
    else DUMMY12 : generate
    begin
      DUMMY4 <= '1' when (busy)='1' else 'Z' ;
    end generate ;
  end generate ;

  process --:o1376
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      pushCtlWord(15 downto 0) <= ext(pushId,16) ;
      pushCtlWord(39 downto 16) <= ext(pushLen,24) ;
      pushCtlWord(63 downto 40) <= ext(pushAddr,24) ;
    end if ;
  end process ;

  process --:o1381
  (*)
  begin
    ixc_gf2_q_status_buf(conv_integer((ext(DEPTH,$QKTN_MAX(NUM_PKT_QS'length,32)
    ) - integer_to_std(1,$QKTN_MAX(NUM_PKT_QS'length,32))))) <= pushCtlWord ;
  end process ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
