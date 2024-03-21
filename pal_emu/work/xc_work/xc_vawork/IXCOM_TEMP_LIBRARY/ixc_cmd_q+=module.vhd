architecture module of ixc_cmd_q is
  -- quickturn always_on
  type DUMMY7 is array(integer range <>) of std_logic_vector(63 downto 0) ;
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

  component ixc_gf2_ff
    generic (
      W : integer := 1 ;
      GF2_1XCB : integer := 0
    ) ;
    port (
      q : out std_logic_vector((W - 1) downto 0) ;
    d : in std_logic_vector((W - 1) downto 0) := (others => 'X') ) ;
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

  component ixc_q_status
    generic (
      NUM_QS : std_logic_vector := signed(integer_to_std(9,32)) ;
      ROOT : integer := 1 ;
      MAX_MEM_PORTS : std_logic_vector := signed(integer_to_std(64,32)) ;
      IS_SV : integer := 1 ;
      ARCH : integer := 0
    ) ;
    port (
      Qwptr : in std_logic_vector(conv_integer(((ext(integer_to_std(18,$QKTN_MAX
      (32,NUM_QS'length)) * ext(NUM_QS,$QKTN_MAX(32,NUM_QS'length)),$QKTN_MAX
      (32,NUM_QS'length))) - integer_to_std(1,$QKTN_MAX(32,NUM_QS'length))))
       downto 0) := (others => 'X') ;
      pollQ : in std_logic := 'X' ;
      cqBusy : in std_logic := 'X' ;
      qsBusy : out std_logic ;
    nrqsBusy : inout std_logic := 'X' ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal fclk : std_logic ;
  signal uClk : std_logic ;
  signal DUMMY1 : std_logic ;
  signal GFLock : std_logic ;
  signal pollQ : std_logic ;
  signal fill : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  signal DUMMY6 : std_logic ;
  signal DUMMY4 : std_logic ;
  signal cmdEn8Cnt : std_logic_vector((LG_WIDTH - 1) downto 0) ;
  signal fillN : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  signal overflow : std_logic ;
  signal cqBusy : std_logic ;
  signal qsBusy : std_logic ;
  signal DUMMY2 : std_logic ;
  signal DUMMY3 : std_logic ;
  signal DUMMY5 : std_logic_vector(12 downto 0) ;
  signal busy : std_logic ;
  signal ixc_gf2_cmd_buf : DUMMY7(0 to signed_int((BUF_SIZE -
   "00000000000000000000000000000001"))) ;
  attribute _2_state_ of ixc_gf2_cmd_buf: signal is 1 ;
  signal wptr : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  attribute _2_state_ of wptr: signal is 1 ;
  signal wptrP : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  attribute _2_state_ of wptrP: signal is 1 ;
  signal wptrS : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  attribute _2_state_ of wptrS: signal is 1 ;
  signal rptr : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  attribute _2_state_ of rptr: signal is 1 ;
  signal simT : std_logic_vector(62 downto 0) ;
  attribute _2_state_ of simT: signal is 1 ;
  signal pollEnD : std_logic_vector(conv_integer((ext(LEVEL,$QKTN_MAX
  (LEVEL'length,32)) - integer_to_std(1,$QKTN_MAX(LEVEL'length,32)))) downto 0)
   ;
  attribute _2_state_ of pollEnD: signal is 1 ;
  signal DUMMY0 : std_logic_vector(62 downto 0) ;
  attribute _2_state_ of DUMMY0: signal is 1 ;
  signal simTime : std_logic_vector(conv_integer(((ext(ext(P2C_DLY,$QKTN_MAX
  ($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32)) * integer_to_std(63,$QKTN_MAX
  ($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32)),$QKTN_MAX($QKTN_MAX
  (LEVEL'length,GF2_1XCB'length),32))) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
  (LEVEL'length,GF2_1XCB'length),32)))) downto 0) ;
  attribute _2_state_ of simTime: signal is 1 ;
  signal pollState : std_logic ;
  attribute _2_state_ of pollState: signal is 1 ;
  signal pushEn : std_logic ;
  attribute _2_state_ of pushEn: signal is 1 ;
  signal pushAddr : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  attribute _2_state_ of pushAddr: signal is 1 ;
  signal pushLen : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
  attribute _2_state_ of pushLen: signal is 1 ;
  signal pushId : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of pushId: signal is 1 ;
  signal full : std_logic ;
  signal cmdEnInD : std_logic_vector(conv_integer(((ext(ext(WIDTH,$QKTN_MAX
  (NUM_QS'length,32)) * integer_to_std(8,$QKTN_MAX(NUM_QS'length,32)),$QKTN_MAX
  (NUM_QS'length,32))) - integer_to_std(1,$QKTN_MAX(NUM_QS'length,32)))) downto
   0) ;
  attribute _2_state_ of cmdEnInD: signal is 1 ;
  signal cmdEnInC : std_logic_vector(conv_integer(((ext(ext(WIDTH,$QKTN_MAX
  (NUM_QS'length,32)) * integer_to_std(8,$QKTN_MAX(NUM_QS'length,32)),$QKTN_MAX
  (NUM_QS'length,32))) - integer_to_std(1,$QKTN_MAX(NUM_QS'length,32)))) downto
   0) ;
  attribute _2_state_ of cmdEnInC: signal is 1 ;
  signal cmdDataInD : std_logic_vector(conv_integer(((ext(ext(WIDTH,$QKTN_MAX
  (NUM_QS'length,32)) * integer_to_std(56,$QKTN_MAX(NUM_QS'length,32)),$QKTN_MAX
  (NUM_QS'length,32))) - integer_to_std(1,$QKTN_MAX(NUM_QS'length,32)))) downto
   0) ;
  attribute _2_state_ of cmdDataInD: signal is 1 ;
  signal cmdDataInC : std_logic_vector(conv_integer(((ext(ext(WIDTH,$QKTN_MAX
  (NUM_QS'length,32)) * integer_to_std(56,$QKTN_MAX(NUM_QS'length,32)),$QKTN_MAX
  (NUM_QS'length,32))) - integer_to_std(1,$QKTN_MAX(NUM_QS'length,32)))) downto
   0) ;
  attribute _2_state_ of cmdDataInC: signal is 1 ;
  signal cmdEn8 : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (NUM_QS'length,32)) - integer_to_std(1,$QKTN_MAX(NUM_QS'length,32)))) downto 0
  ) ;
  attribute _2_state_ of cmdEn8: signal is 1 ;
  signal cmdEn8C : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (NUM_QS'length,32)) - integer_to_std(1,$QKTN_MAX(NUM_QS'length,32)))) downto 0
  ) ;
  attribute _2_state_ of cmdEn8C: signal is 1 ;
  signal cmdEnOutC : std_logic ;
  attribute _2_state_ of cmdEnOutC: signal is 1 ;
  signal Qwptr : std_logic_vector(conv_integer(((ext((ext(NUM_QS,$QKTN_MAX
  ($QKTN_MAX(NUM_QS'length,ROOT'length),32)) + ext(ROOT,$QKTN_MAX($QKTN_MAX
  (NUM_QS'length,ROOT'length),32))) * integer_to_std(18,$QKTN_MAX($QKTN_MAX
  (NUM_QS'length,ROOT'length),32)),$QKTN_MAX($QKTN_MAX(NUM_QS'length,ROOT'length
  ),32))) - integer_to_std(1,$QKTN_MAX($QKTN_MAX(NUM_QS'length,ROOT'length),32))
  )) downto 0) ;
  attribute _2_state_ of Qwptr: signal is 1 ;
  signal pushCtlWord : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of pushCtlWord: signal is 1 ;

  procedure fsmPollEnD ( signal GFReset  : in std_logic;  variable GFLock  : in
   std_logic;  signal pollEnD  : inout std_logic_vector(conv_integer((ext
  (LEVEL,$QKTN_MAX(LEVEL'length,32)) - integer_to_std(1,$QKTN_MAX
  (LEVEL'length,32)))) downto 0);  signal pollEn  : in std_logic) is
  begin
    if (GFReset = '1') then
      pollEnD <= integer_to_std(0,abs(conv_integer((ext(LEVEL,$QKTN_MAX
      (LEVEL'length,32)) - integer_to_std(1,$QKTN_MAX(LEVEL'length,32)))))+1) ;
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
    end if;
  end fsmPollEnD;

  procedure fsmPollState ( signal GFReset  : in std_logic;  variable GFLock  :
   in std_logic;  signal pollState  : inout std_logic;  variable pollQ  : in
   std_logic;  variable wptrP  : in std_logic_vector((ADDR_SIZE - 1) downto 0); 
   signal rptr  : inout std_logic_vector((ADDR_SIZE - 1) downto 0);  signal
   pushId  : inout std_logic_vector(63 downto 0);  signal wptrS  : inout
   std_logic_vector((ADDR_SIZE - 1) downto 0);  signal pushEn  : out std_logic; 
   signal pushAddr  : out std_logic_vector((ADDR_SIZE - 1) downto 0);  signal
   pushLen  : out std_logic_vector((ADDR_SIZE - 1) downto 0)) is
    variable DUMMY8 : std_logic_vector(0 to 31) ;
  begin
    if (GFReset = '1') then
      wptrS <= integer_to_std(0,abs((ADDR_SIZE - 1))+1) ;
      rptr <= integer_to_std(0,abs((ADDR_SIZE - 1))+1) ;
      pushEn <= '0' ;
      pushId <=
       "0000000000000000000000000000000000000000000000000000000000000000" ;
      pollState <= '0' ;
    elsif ((GFLock = '0')) then
      DUMMY8 := ext(pollState,32);

      case DUMMY8  is
        when  "00000000000000000000000000000000"  =>
          if (pollQ = '1') then
            wptrS <= wptrP ;
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
          if ((pollQ = '0')) then
            rptr <= wptrS ;
            pollState <= '0' ;
          end if;
        when others => null ;
      end case;
    end if;
  end fsmPollState;

  procedure fsmWptrP ( signal GFReset  : in std_logic;  variable GFLock  : in
   std_logic;  variable cmdEn8Cnt  : in std_logic_vector((LG_WIDTH - 1) downto 0
  );  signal wptrP  : inout std_logic_vector((ADDR_SIZE - 1) downto 0)) is
  begin
    if (GFReset = '1') then
      wptrP <= integer_to_std(0,abs((ADDR_SIZE - 1))+1) ;
    elsif ((GFLock = '0')) then
      wptrP <= ext(ext((ext(wptrP,$QKTN_MAX($QKTN_MAX(abs((ADDR_SIZE - 1))+1,abs
      ((LG_WIDTH - 1))+1),$QKTN_MAX(ROOT'length,32))) + ext(cmdEn8Cnt,$QKTN_MAX
      ($QKTN_MAX(abs((ADDR_SIZE - 1))+1,abs((LG_WIDTH - 1))+1),$QKTN_MAX
      (ROOT'length,32)))) + it_cond_op((cmdEn8Cnt)/="0",ext(ROOT,$QKTN_MAX
      ($QKTN_MAX(abs((ADDR_SIZE - 1))+1,abs((LG_WIDTH - 1))+1),$QKTN_MAX
      (ROOT'length,32))),integer_to_std(0,$QKTN_MAX($QKTN_MAX(abs((ADDR_SIZE - 1
      ))+1,abs((LG_WIDTH - 1))+1),$QKTN_MAX(ROOT'length,32)))),abs((ADDR_SIZE -
       1))+1),abs((ADDR_SIZE - 1))+1) ;
    end if;
  end fsmWptrP;

  procedure fsmQwptr ( signal GFReset  : in std_logic;  variable GFLock  : in
   std_logic;  variable cmdDataInD  : in std_logic_vector(conv_integer(((ext(ext
  (WIDTH,$QKTN_MAX(NUM_QS'length,32)) * integer_to_std(56,$QKTN_MAX
  (NUM_QS'length,32)),$QKTN_MAX(NUM_QS'length,32))) - integer_to_std(1,$QKTN_MAX
  (NUM_QS'length,32)))) downto 0);  signal Qwptr  : inout std_logic_vector
  (conv_integer(((ext((ext(NUM_QS,$QKTN_MAX($QKTN_MAX(NUM_QS'length,ROOT'length
  ),32)) + ext(ROOT,$QKTN_MAX($QKTN_MAX(NUM_QS'length,ROOT'length),32))) *
   integer_to_std(18,$QKTN_MAX($QKTN_MAX(NUM_QS'length,ROOT'length),32)
  ),$QKTN_MAX($QKTN_MAX(NUM_QS'length,ROOT'length),32))) - integer_to_std
  (1,$QKTN_MAX($QKTN_MAX(NUM_QS'length,ROOT'length),32)))) downto 0)) is
    variable i : integer := 0 ;
    variable DUMMY9 : integer := 0 ;
  begin
    if (GFReset = '1') then
      for i in 0 to integer'PRED(conv_integer(NUM_QS)) loop --:o761
        Qwptr(conv_integer((ext((integer_to_std(i,$QKTN_MAX(32,ROOT'length)) +
         ext(ROOT,$QKTN_MAX(32,ROOT'length))) * integer_to_std(18,$QKTN_MAX
        (32,ROOT'length)),$QKTN_MAX(32,ROOT'length))))+(18-1) downto
         conv_integer((ext((integer_to_std(i,$QKTN_MAX(32,ROOT'length)) + ext
        (ROOT,$QKTN_MAX(32,ROOT'length))) * integer_to_std(18,$QKTN_MAX
        (32,ROOT'length)),$QKTN_MAX(32,ROOT'length))))) <= "000000000000000000"
         ;
      end loop;
    elsif ((GFLock = '0')) then
      for DUMMY9 in 0 to integer'PRED(conv_integer(NUM_QS)) loop --:o766
        Qwptr(conv_integer((ext((integer_to_std(DUMMY9,$QKTN_MAX(32,ROOT'length)
        ) + ext(ROOT,$QKTN_MAX(32,ROOT'length))) * integer_to_std(18,$QKTN_MAX
        (32,ROOT'length)),$QKTN_MAX(32,ROOT'length))))+(18-1) downto
         conv_integer((ext((integer_to_std(DUMMY9,$QKTN_MAX(32,ROOT'length)) +
         ext(ROOT,$QKTN_MAX(32,ROOT'length))) * integer_to_std(18,$QKTN_MAX
        (32,ROOT'length)),$QKTN_MAX(32,ROOT'length))))) <= (Qwptr(conv_integer(
        (ext((integer_to_std(DUMMY9,$QKTN_MAX(32,ROOT'length)) + ext
        (ROOT,$QKTN_MAX(32,ROOT'length))) * integer_to_std(18,$QKTN_MAX
        (32,ROOT'length)),$QKTN_MAX(32,ROOT'length))))+(18-1) downto
         conv_integer((ext((integer_to_std(DUMMY9,$QKTN_MAX(32,ROOT'length)) +
         ext(ROOT,$QKTN_MAX(32,ROOT'length))) * integer_to_std(18,$QKTN_MAX
        (32,ROOT'length)),$QKTN_MAX(32,ROOT'length))))) + ext(cmdDataInD((DUMMY9
         * 7)+(7-1) downto (DUMMY9 * 7)),18)) ;
      end loop;
    end if;
  end fsmQwptr;
  signal DUMMY10 : std_logic_vector((conv_integer(WIDTH) - 1) downto 0) ;
  signal DUMMY11 : std_logic_vector((conv_integer(WIDTH) - 1) downto 0) ;
  signal DUMMY12 : std_logic_vector(conv_integer(((ext(integer_to_std
  (18,$QKTN_MAX(32,$QKTN_MAX(NUM_QS'length,ROOT'length))) * ext((ext
  (NUM_QS,$QKTN_MAX(NUM_QS'length,ROOT'length)) + ext(ROOT,$QKTN_MAX
  (NUM_QS'length,ROOT'length))),$QKTN_MAX(32,$QKTN_MAX(NUM_QS'length,ROOT'length
  ))),$QKTN_MAX(32,$QKTN_MAX(NUM_QS'length,ROOT'length)))) - integer_to_std
  (1,$QKTN_MAX(32,$QKTN_MAX(NUM_QS'length,ROOT'length))))) downto 0) ;
  -- quickturn use_hardmacro_pack ixc_gf2_cmd_buf
  -- quickturn fast_clock fclk

begin
  GFLock <= '0' ;
  pollQ <= (pollEn and and_reduce(pollEnD)) ;
  fill <= (ext(wptrP,abs((ADDR_SIZE - 1))+1) - ext(rptr,abs((ADDR_SIZE - 1))+1))
   ;
  DUMMY4 <= '1' when full = '1' else 'Z' ;
  fillN <= ext(ext((ext(fill,$QKTN_MAX($QKTN_MAX(abs((ADDR_SIZE - 1))+1,abs(
  (LG_WIDTH - 1))+1),$QKTN_MAX(ROOT'length,32))) + ext(cmdEn8Cnt,$QKTN_MAX
  ($QKTN_MAX(abs((ADDR_SIZE - 1))+1,abs((LG_WIDTH - 1))+1),$QKTN_MAX
  (ROOT'length,32)))) + it_cond_op((cmdEn8Cnt)/="0",ext(ROOT,$QKTN_MAX($QKTN_MAX
  (abs((ADDR_SIZE - 1))+1,abs((LG_WIDTH - 1))+1),$QKTN_MAX(ROOT'length,32))
  ),integer_to_std(0,$QKTN_MAX($QKTN_MAX(abs((ADDR_SIZE - 1))+1,abs((LG_WIDTH -
   1))+1),$QKTN_MAX(ROOT'length,32)))),abs((ADDR_SIZE - 1))+1),abs((ADDR_SIZE -
   1))+1) ;
  overflow <= boolean_to_std(ext(fillN,abs((ADDR_SIZE - 1))+1) < ext(fill,abs(
  (ADDR_SIZE - 1))+1)) ;
  uckg : ixc_uClkGen
    port map (
       uClk
    ) ;
  Generate1 : if genblk1 : ((GF2_1XCB)/="0") generate
  begin

    process --:o555
    (uClk)
    begin
      if (uClk'event and uClk = '1') then
        fsmPollEnD(DUMMY1,GFLock,pollEnD,pollEn) ;
      end if ;
    end process ;
  else DUMMY13 : generate
  begin

    process --:o555
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        fsmPollEnD(DUMMY1,GFLock,pollEnD,pollEn) ;
      end if ;
    end process ;
  end generate ;
  Generate2 : if genblk2 : ((GF2_1XCB)/="0") generate
  begin
    simTLD : ixc_gf2_latch
      generic map(W => 63)
      port map (
         simT
        ,DUMMY0
        ,uClk
      ) ;
  else DUMMY14 : generate
  begin

    process --:o571
    (*)
    begin
      simT <= DUMMY0 ;
    end process ;
  end generate ;
  Generate3 : if genblk3 : ((ROOT)/="0") generate

    procedure fsmSimTime ( variable GFLock  : in std_logic;  signal simTime  :
     inout std_logic_vector(conv_integer(((ext(ext(P2C_DLY,$QKTN_MAX($QKTN_MAX
    (LEVEL'length,GF2_1XCB'length),32)) * integer_to_std(63,$QKTN_MAX($QKTN_MAX
    (LEVEL'length,GF2_1XCB'length),32)),$QKTN_MAX($QKTN_MAX
    (LEVEL'length,GF2_1XCB'length),32))) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
    (LEVEL'length,GF2_1XCB'length),32)))) downto 0);  variable simT  : in
     std_logic_vector(62 downto 0)) is
    begin
      if ((GFLock = '0')) then
        if (ext(P2C_DLY,$QKTN_MAX($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32)) >
         integer_to_std(1,$QKTN_MAX($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32))
        ) then
          simTime <= ext(std_logic_vector'(simT & simTime(conv_integer(((ext(ext
          (P2C_DLY,$QKTN_MAX($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32)) *
           integer_to_std(63,$QKTN_MAX($QKTN_MAX(LEVEL'length,GF2_1XCB'length
          ),32)),$QKTN_MAX($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32))) -
           integer_to_std(1,$QKTN_MAX($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32
          )))) downto 63)),abs(conv_integer(((ext(ext(P2C_DLY,$QKTN_MAX
          ($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32)) * integer_to_std
          (63,$QKTN_MAX($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32)),$QKTN_MAX
          ($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32))) - integer_to_std
          (1,$QKTN_MAX($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32)))))+1) ;
        else
          simTime <= ext(simT,abs(conv_integer(((ext(ext(P2C_DLY,$QKTN_MAX
          ($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32)) * integer_to_std
          (63,$QKTN_MAX($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32)),$QKTN_MAX
          ($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32))) - integer_to_std
          (1,$QKTN_MAX($QKTN_MAX(LEVEL'length,GF2_1XCB'length),32)))))+1) ;
        end if;
      end if;
    end fsmSimTime;
  begin
    Generate4 : if genblk1 : ((GF2_1XCB)/="0") generate
    begin

      process --:o578
      (uClk)
      begin
        if (uClk'event and uClk = '1') then
          fsmSimTime(GFLock,simTime,simT) ;
        end if ;
      end process ;
    else DUMMY15 : generate
    begin

      process --:o578
      (fclk)
      begin
        if (fclk'event and fclk = '1') then
          fsmSimTime(GFLock,simTime,simT) ;
        end if ;
      end process ;
    end generate ;
  end generate ;
  Generate5 : if genblk4 : ((GF2_1XCB)/="0") generate
  begin

    process --:o596
    (uClk)
    begin
      if (uClk'event and uClk = '1') then
        fsmPollState
        (DUMMY1,GFLock,pollState,pollQ,wptrP,rptr,pushId,wptrS,pushEn,pushAddr,pushLen
        ) ;
      end if ;
    end process ;
  else DUMMY16 : generate
  begin

    process --:o596
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        fsmPollState
        (DUMMY1,GFLock,pollState,pollQ,wptrP,rptr,pushId,wptrS,pushEn,pushAddr,pushLen
        ) ;
      end if ;
    end process ;
  end generate ;

  process --:o641
  (*)
  begin
    if (DUMMY6 = '1') then
      full <= boolean_to_std(ext(fill,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,$QKTN_MAX
      ($QKTN_MAX(LEVEL'length,32),$QKTN_MAX($QKTN_MAX(NUM_QS'length,32
      ),ROOT'length)))) >= (shl(integer_to_std(1,$QKTN_MAX(abs((ADDR_SIZE - 1)
      )+1,$QKTN_MAX($QKTN_MAX(LEVEL'length,32),$QKTN_MAX($QKTN_MAX
      (NUM_QS'length,32),ROOT'length)))),integer_to_std(ADDR_SIZE,32)) - (ext(
      (ext(LEVEL,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,$QKTN_MAX($QKTN_MAX
      (LEVEL'length,32),$QKTN_MAX($QKTN_MAX(NUM_QS'length,32),ROOT'length)))) +
       integer_to_std(8,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,$QKTN_MAX($QKTN_MAX
      (LEVEL'length,32),$QKTN_MAX($QKTN_MAX(NUM_QS'length,32),ROOT'length))))) *
       (ext(WIDTH,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,$QKTN_MAX($QKTN_MAX
      (LEVEL'length,32),$QKTN_MAX($QKTN_MAX(NUM_QS'length,32),ROOT'length)))) +
       ext(ROOT,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,$QKTN_MAX($QKTN_MAX
      (LEVEL'length,32),$QKTN_MAX($QKTN_MAX(NUM_QS'length,32),ROOT'length))))
      ),$QKTN_MAX(abs((ADDR_SIZE - 1))+1,$QKTN_MAX($QKTN_MAX(LEVEL'length,32
      ),$QKTN_MAX($QKTN_MAX(NUM_QS'length,32),ROOT'length))))))) ;
    else
      full <= boolean_to_std(ext(fill,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,$QKTN_MAX
      ($QKTN_MAX(LEVEL'length,32),$QKTN_MAX($QKTN_MAX(NUM_QS'length,32
      ),ROOT'length)))) >= (shl(integer_to_std(1,$QKTN_MAX(abs((ADDR_SIZE - 1)
      )+1,$QKTN_MAX($QKTN_MAX(LEVEL'length,32),$QKTN_MAX($QKTN_MAX
      (NUM_QS'length,32),ROOT'length)))),integer_to_std(ADDR_SIZE,32)) - (ext(
      (ext(LEVEL,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,$QKTN_MAX($QKTN_MAX
      (LEVEL'length,32),$QKTN_MAX($QKTN_MAX(NUM_QS'length,32),ROOT'length)))) +
       integer_to_std(4,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,$QKTN_MAX($QKTN_MAX
      (LEVEL'length,32),$QKTN_MAX($QKTN_MAX(NUM_QS'length,32),ROOT'length))))) *
       (ext(WIDTH,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,$QKTN_MAX($QKTN_MAX
      (LEVEL'length,32),$QKTN_MAX($QKTN_MAX(NUM_QS'length,32),ROOT'length)))) +
       ext(ROOT,$QKTN_MAX(abs((ADDR_SIZE - 1))+1,$QKTN_MAX($QKTN_MAX
      (LEVEL'length,32),$QKTN_MAX($QKTN_MAX(NUM_QS'length,32),ROOT'length))))
      ),$QKTN_MAX(abs((ADDR_SIZE - 1))+1,$QKTN_MAX($QKTN_MAX(LEVEL'length,32
      ),$QKTN_MAX($QKTN_MAX(NUM_QS'length,32),ROOT'length))))))) ;
    end if;
  end process ;
  pollReq <= it_conv_std_logic(ext(ROOT,ROOT'length) and boolean_to_std(ext
  (wptrP,abs((ADDR_SIZE - 1))+1) /= ext(wptrS,abs((ADDR_SIZE - 1))+1
  ),ROOT'length)) ;

  process --:o662
  (*)
    variable cmdEnInC_DUMMY0 : std_logic_vector(conv_integer(((ext(ext
    (WIDTH,$QKTN_MAX(NUM_QS'length,32)) * integer_to_std(8,$QKTN_MAX
    (NUM_QS'length,32)),$QKTN_MAX(NUM_QS'length,32))) - integer_to_std
    (1,$QKTN_MAX(NUM_QS'length,32)))) downto 0) ;
    variable i : integer := 0 ;
    variable cmdEn8C_DUMMY1 : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
    (NUM_QS'length,32)) - integer_to_std(1,$QKTN_MAX(NUM_QS'length,32)))) downto
     0) ;
    variable DUMMY17 : integer := 0 ;
  begin
    cmdEnInC_DUMMY0 := cmdEnInC;
    cmdEn8C_DUMMY1 := cmdEn8C;
    if (((DUMMY1)='1' or (GFLock)='1')) then
      cmdEnInC_DUMMY0 := integer_to_std(0,abs(conv_integer(((ext(ext
      (WIDTH,$QKTN_MAX(NUM_QS'length,32)) * integer_to_std(8,$QKTN_MAX
      (NUM_QS'length,32)),$QKTN_MAX(NUM_QS'length,32))) - integer_to_std
      (1,$QKTN_MAX(NUM_QS'length,32)))))+1) ;
      cmdDataInC <= integer_to_std(0,abs(conv_integer(((ext(ext(WIDTH,$QKTN_MAX
      (NUM_QS'length,32)) * integer_to_std(56,$QKTN_MAX(NUM_QS'length,32)
      ),$QKTN_MAX(NUM_QS'length,32))) - integer_to_std(1,$QKTN_MAX
      (NUM_QS'length,32)))))+1) ;
      for i in 0 to integer'PRED(conv_integer(WIDTH)) loop --:o666
        cmdEn8C_DUMMY1(i) := '0' ;
      end loop;
      cmdEnOutC <= '0' ;
    else
      cmdEnInC_DUMMY0 := ext(cmdEnIn,abs(conv_integer(((ext(ext(WIDTH,$QKTN_MAX
      (NUM_QS'length,32)) * integer_to_std(8,$QKTN_MAX(NUM_QS'length,32)
      ),$QKTN_MAX(NUM_QS'length,32))) - integer_to_std(1,$QKTN_MAX
      (NUM_QS'length,32)))))+1) ;
      cmdDataInC <= ext(cmdDataIn,abs(conv_integer(((ext(ext(WIDTH,$QKTN_MAX
      (NUM_QS'length,32)) * integer_to_std(56,$QKTN_MAX(NUM_QS'length,32)
      ),$QKTN_MAX(NUM_QS'length,32))) - integer_to_std(1,$QKTN_MAX
      (NUM_QS'length,32)))))+1) ;
      for DUMMY17 in 0 to integer'PRED(conv_integer(WIDTH)) loop --:o674
        cmdEn8C_DUMMY1(DUMMY17) := or_reduce(cmdEnInC_DUMMY0((8 * DUMMY17)+(8-1)
         downto (8 * DUMMY17))) ;
      end loop;
      cmdEnOutC <= or_reduce(cmdEn8C_DUMMY1) ;
    end if;
    cmdEnInC <= transport cmdEnInC_DUMMY0;
    cmdEn8C <= cmdEn8C_DUMMY1;
  end process ;
  cmdEnFF : ixc_gf2_ff
    generic map(W => conv_integer((ext(ext(WIDTH,$QKTN_MAX(NUM_QS'length,32)) *
     integer_to_std(8,$QKTN_MAX(NUM_QS'length,32)),$QKTN_MAX(NUM_QS'length,32)))
    ),GF2_1XCB => conv_integer(GF2_1XCB))
    port map (
       cmdEnInD
      ,cmdEnInC
    ) ;
  cmdDataFF : ixc_gf2_ff
    generic map(W => conv_integer((ext(ext(WIDTH,$QKTN_MAX(NUM_QS'length,32)) *
     integer_to_std(56,$QKTN_MAX(NUM_QS'length,32)),$QKTN_MAX(NUM_QS'length,32))
    )),GF2_1XCB => conv_integer(GF2_1XCB))
    port map (
       cmdDataInD
      ,cmdDataInC
    ) ;
  cmdEn8FF : ixc_gf2_ff
    generic map(W => conv_integer(WIDTH),GF2_1XCB => conv_integer(GF2_1XCB))
    port map (
       cmdEn8
      ,cmdEn8C
    ) ;
  cmdEnOutFF : ixc_gf2_ff
    generic map(W => conv_integer(WIDTH),GF2_1XCB => conv_integer(GF2_1XCB))
    port map (
       DUMMY10
      ,DUMMY11
    ) ;
  cmdEnOut <= it_conv_std_logic(DUMMY10) ;
  DUMMY11 <= ext(cmdEnOutC,abs((conv_integer(WIDTH) - 1))+1) ;

  process --:o686
  (*)
    variable wptr_DUMMY2 : std_logic_vector((ADDR_SIZE - 1) downto 0) ;
    variable id : integer := 0 ;
  begin
    wptr_DUMMY2 := wptr;
    if (ROOT /= "0") then
      if (cmdEnOut = '1') then
        ixc_gf2_cmd_buf(conv_integer(wptrP)) <= std_logic_vector'(std_logic'('1'
        ) & simTime(62 downto 0)) ;
      end if;
      wptr_DUMMY2 := (ext(wptrP,abs((ADDR_SIZE - 1))+1) + ext(cmdEnOut,abs(
      (ADDR_SIZE - 1))+1)) ;
    else
      wptr_DUMMY2 := wptrP ;
    end if;
    for id in 0 to integer'PRED(conv_integer(WIDTH)) loop --:o693
      if (cmdEn8(id) = '1') then
        ixc_gf2_cmd_buf(conv_integer(wptr_DUMMY2)) <= std_logic_vector'
        (integer_to_std(id,32)(7 downto 0) & cmdDataInD((56 * id)+(56-1) downto 
        (56 * id))) ;
      end if;
      wptr_DUMMY2 := (ext(wptr_DUMMY2,abs((ADDR_SIZE - 1))+1) + ext(cmdEn8(id
      ),abs((ADDR_SIZE - 1))+1)) ;
    end loop;
    wptr <= transport wptr_DUMMY2;
  end process ;
  popc : ixc_pop_cnt
    generic map(W => WIDTH,LG_W => LG_WIDTH)
    port map (
       cmdEn8
      ,cmdEn8Cnt
    ) ;
  Generate6 : if genblk5 : ((GF2_1XCB)/="0") generate
  begin

    process --:o703
    (uClk)
    begin
      if (uClk'event and uClk = '1') then
        fsmWptrP(DUMMY1,GFLock,cmdEn8Cnt,wptrP) ;
      end if ;
    end process ;
  else DUMMY18 : generate
  begin

    process --:o703
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        fsmWptrP(DUMMY1,GFLock,cmdEn8Cnt,wptrP) ;
      end if ;
    end process ;
  end generate ;
  overflow_err : ixc_error
    generic map(SIZE => 1,UCLK_COND => conv_integer(GF2_1XCB))
    port map (
       overflow
    ) ;
  cmdDataOut <= ext(cmdEn8Cnt,7) ;
  Generate7 : if genblk6 : ((ROOT)/="0") generate
  begin
    Generate8 : if genblk1 : ((GF2_1XCB)/="0") generate
    begin
      genblk1 : for i in 0 to conv_integer((ext(P2C_DLY,$QKTN_MAX($QKTN_MAX
      (LEVEL'length,GF2_1XCB'length),32)) + integer_to_std(1,$QKTN_MAX($QKTN_MAX
      (LEVEL'length,GF2_1XCB'length),32)))) - 1 generate
      begin
        DUMMY5((2 * i)+(2-1) downto (2 * i)) <= "11" ;
      end generate ;
    else DUMMY19 : generate
    begin
      genblk1 : for i in 0 to conv_integer((ext(P2C_DLY,$QKTN_MAX($QKTN_MAX
      (LEVEL'length,GF2_1XCB'length),32)) + integer_to_std(1,$QKTN_MAX($QKTN_MAX
      (LEVEL'length,GF2_1XCB'length),32)))) - 1 generate
      begin
        DUMMY5(i) <= '1' ;
      end generate ;
    end generate ;
  end generate ;
  cqBusy <= boolean_to_std(ext(wptrP,abs((ADDR_SIZE - 1))+1) /= ext(wptrS,abs(
  (ADDR_SIZE - 1))+1)) ;
  busy <= (cqBusy or qsBusy) ;
  Generate9 : if genblk7 : ((IS_SV)/=0) generate
  begin
    DUMMY2 <= '1' when (busy)='1' else 'Z' ;
  else DUMMY20 : generate
  begin
    DUMMY3 <= '1' when (busy)='1' else 'Z' ;
  end generate ;
  Generate10 : if genblk8 : ((ROOT)/="0") generate

    procedure fsmQwptrRoot ( signal GFReset  : in std_logic;  variable GFLock  :
     in std_logic;  variable cmdEn8Cnt  : in std_logic_vector((LG_WIDTH - 1)
     downto 0);  signal Qwptr  : inout std_logic_vector(conv_integer(((ext((ext
    (NUM_QS,$QKTN_MAX($QKTN_MAX(NUM_QS'length,ROOT'length),32)) + ext
    (ROOT,$QKTN_MAX($QKTN_MAX(NUM_QS'length,ROOT'length),32))) * integer_to_std
    (18,$QKTN_MAX($QKTN_MAX(NUM_QS'length,ROOT'length),32)),$QKTN_MAX($QKTN_MAX
    (NUM_QS'length,ROOT'length),32))) - integer_to_std(1,$QKTN_MAX($QKTN_MAX
    (NUM_QS'length,ROOT'length),32)))) downto 0)) is
    begin
      if (GFReset = '1') then
        Qwptr(0+(18-1) downto 0) <= "000000000000000000" ;
      elsif ((GFLock = '0')) then
        Qwptr(0+(18-1) downto 0) <= ext(ext((ext(Qwptr(0+(18-1) downto 0
        ),$QKTN_MAX($QKTN_MAX(18,abs((LG_WIDTH - 1))+1),$QKTN_MAX(ROOT'length,32
        ))) + ext(cmdEn8Cnt,$QKTN_MAX($QKTN_MAX(18,abs((LG_WIDTH - 1))+1
        ),$QKTN_MAX(ROOT'length,32)))) + it_cond_op((cmdEn8Cnt)/="0",ext
        (ROOT,$QKTN_MAX($QKTN_MAX(18,abs((LG_WIDTH - 1))+1),$QKTN_MAX
        (ROOT'length,32))),integer_to_std(0,$QKTN_MAX($QKTN_MAX(18,abs((LG_WIDTH
         - 1))+1),$QKTN_MAX(ROOT'length,32)))),18),18) ;
      end if;
    end fsmQwptrRoot;
  begin
    Generate11 : if genblk1 : ((GF2_1XCB)/="0") generate
    begin

      process --:o749
      (uClk)
      begin
        if (uClk'event and uClk = '1') then
          fsmQwptrRoot(DUMMY1,GFLock,cmdEn8Cnt,Qwptr) ;
        end if ;
      end process ;
    else DUMMY21 : generate
    begin

      process --:o749
      (fclk)
      begin
        if (fclk'event and fclk = '1') then
          fsmQwptrRoot(DUMMY1,GFLock,cmdEn8Cnt,Qwptr) ;
        end if ;
      end process ;
    end generate ;
  end generate ;
  Generate12 : if genblk9 : ((GF2_1XCB)/="0") generate
  begin

    process --:o759
    (uClk)
    begin
      if (uClk'event and uClk = '1') then
        fsmQwptr(DUMMY1,GFLock,cmdDataInD,Qwptr) ;
      end if ;
    end process ;
  else DUMMY22 : generate
  begin

    process --:o759
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        fsmQwptr(DUMMY1,GFLock,cmdDataInD,Qwptr) ;
      end if ;
    end process ;
  end generate ;
  qstat : ixc_q_status
    generic map(NUM_QS => (ext(NUM_QS,$QKTN_MAX(NUM_QS'length,ROOT'length)) +
     ext(ROOT,$QKTN_MAX(NUM_QS'length,ROOT'length))),ROOT => conv_integer(ROOT
    ),MAX_MEM_PORTS => integer_to_std(MAX_MEM_PORTS,32),IS_SV => IS_SV,ARCH =>
     ARCH)
    port map (
       DUMMY12
      ,pollQ
      ,cqBusy
      ,qsBusy
      ,nrqsBusy
    ) ;
  DUMMY12 <= ext(Qwptr,abs(conv_integer(((ext(integer_to_std(18,$QKTN_MAX
  (32,$QKTN_MAX(NUM_QS'length,ROOT'length))) * ext((ext(NUM_QS,$QKTN_MAX
  (NUM_QS'length,ROOT'length)) + ext(ROOT,$QKTN_MAX(NUM_QS'length,ROOT'length))
  ),$QKTN_MAX(32,$QKTN_MAX(NUM_QS'length,ROOT'length))),$QKTN_MAX(32,$QKTN_MAX
  (NUM_QS'length,ROOT'length)))) - integer_to_std(1,$QKTN_MAX(32,$QKTN_MAX
  (NUM_QS'length,ROOT'length))))))+1) ;

  process --:o777
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      pushCtlWord(15 downto 0) <= ext(pushId,16) ;
      pushCtlWord(39 downto 16) <= ext(pushLen,24) ;
      pushCtlWord(63 downto 40) <= ext(pushAddr,24) ;
    end if ;
  end process ;

  process --:o782
  (*)
  begin
    ixc_gf2_cmd_buf(signed_int((BUF_SIZE - "00000000000000000000000000000001")))
     <= pushCtlWord ;
  end process ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
