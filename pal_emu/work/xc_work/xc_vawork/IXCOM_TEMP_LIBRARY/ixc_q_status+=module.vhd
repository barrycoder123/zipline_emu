architecture module of ixc_q_status is
  -- quickturn always_on
  type DUMMY3 is array(integer range <>) of std_logic_vector(63 downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE ALWAYS_ON TRUE
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component ixc_tbcpo_push
    generic (
      ARCH : integer := 0
    ) ;
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

  component ixc_gf2_latch
    generic (
      W : integer := 1
    ) ;
    port (
      q : out std_logic_vector((W - 1) downto 0) ;
      d : in std_logic_vector((W - 1) downto 0) := (others => 'X') ;
    en : in std_logic := 'X' ) ;
  end component ;

  component ixc_uClkGen
    port (
    uclk : out std_logic ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal uClk : std_logic ;
  signal fclk : std_logic ;
  signal DUMMY0 : std_logic ;
  signal GFLock : std_logic ;
  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic_vector(47 downto 0) ;
  signal simTime : std_logic_vector(47 downto 0) ;
  signal busy : std_logic ;
  signal ixc_gf2_qstatus_buf : DUMMY3(0 to conv_integer((ext(BUF_SIZE,$QKTN_MAX
  (NUM_QS'length,32)) - integer_to_std(1,$QKTN_MAX(NUM_QS'length,32))))) ;
  attribute _2_state_ of ixc_gf2_qstatus_buf: signal is 1 ;
  signal buf0 : std_logic_vector(61 downto 0) ;
  attribute _2_state_ of buf0: signal is 1 ;
  signal scan : std_logic_vector(9 downto 0) ;
  attribute _2_state_ of scan: signal is 1 ;
  signal sb : std_logic_vector(9 downto 0) ;
  attribute _2_state_ of sb: signal is 1 ;
  signal wptr : std_logic_vector(9 downto 0) ;
  attribute _2_state_ of wptr: signal is 1 ;
  signal wptrP : std_logic_vector(9 downto 0) ;
  attribute _2_state_ of wptrP: signal is 1 ;
  signal reqId : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of reqId: signal is 1 ;
  signal QwptrP : std_logic_vector(conv_integer(((ext(integer_to_std
  (18,$QKTN_MAX(32,NUM_QS'length)) * ext(NUM_QS,$QKTN_MAX(32,NUM_QS'length)
  ),$QKTN_MAX(32,NUM_QS'length))) - integer_to_std(1,$QKTN_MAX(32,NUM_QS'length)
  ))) downto 0) ;
  attribute _2_state_ of QwptrP: signal is 1 ;
  signal QwptrL : std_logic_vector(conv_integer(((ext(integer_to_std
  (18,$QKTN_MAX(32,NUM_QS'length)) * ext(NUM_QS,$QKTN_MAX(32,NUM_QS'length)
  ),$QKTN_MAX(32,NUM_QS'length))) - integer_to_std(1,$QKTN_MAX(32,NUM_QS'length)
  ))) downto 0) ;
  attribute _2_state_ of QwptrL: signal is 1 ;
  signal QwpS : std_logic_vector(conv_integer(((ext(integer_to_std(54,$QKTN_MAX
  (NUM_QS'length,32)) * ext(N3,$QKTN_MAX(NUM_QS'length,32)),$QKTN_MAX
  (NUM_QS'length,32))) - integer_to_std(1,$QKTN_MAX(NUM_QS'length,32)))) downto
   0) ;
  attribute _2_state_ of QwpS: signal is 1 ;
  signal tbSync : std_logic ;
  attribute _2_state_ of tbSync: signal is 1 ;
  signal tbSyncRoot : std_logic ;
  attribute _2_state_ of tbSyncRoot: signal is 1 ;
  signal pushEn : std_logic ;
  attribute _2_state_ of pushEn: signal is 1 ;
  signal pushAddr : std_logic_vector(9 downto 0) ;
  attribute _2_state_ of pushAddr: signal is 1 ;
  signal pushLen : std_logic_vector(9 downto 0) ;
  attribute _2_state_ of pushLen: signal is 1 ;
  signal pushId : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of pushId: signal is 1 ;
  signal Qen3 : std_logic ;
  attribute _2_state_ of Qen3: signal is 1 ;
  signal pollQs : std_logic ;
  attribute _2_state_ of pollQs: signal is 1 ;
  signal pollState : std_logic_vector(1 downto 0) ;
  attribute _2_state_ of pollState: signal is 1 ;
  signal pushCtlWord : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of pushCtlWord: signal is 1 ;

  procedure fsmReqId ( signal GFReset  : in std_logic;  variable GFLock  : in
   std_logic;  signal pollState  : inout std_logic_vector(1 downto 0);  signal
   pollQ  : in std_logic;  signal QwptrP  : inout std_logic_vector(conv_integer(
  ((ext(integer_to_std(18,$QKTN_MAX(32,NUM_QS'length)) * ext(NUM_QS,$QKTN_MAX
  (32,NUM_QS'length)),$QKTN_MAX(32,NUM_QS'length))) - integer_to_std(1,$QKTN_MAX
  (32,NUM_QS'length)))) downto 0);  variable QwptrL  : in std_logic_vector
  (conv_integer(((ext(integer_to_std(18,$QKTN_MAX(32,NUM_QS'length)) * ext
  (NUM_QS,$QKTN_MAX(32,NUM_QS'length)),$QKTN_MAX(32,NUM_QS'length))) -
   integer_to_std(1,$QKTN_MAX(32,NUM_QS'length)))) downto 0);  variable
   tbSyncRoot  : in std_logic;  variable scan  : inout std_logic_vector(9 downto
   0);  signal QwpS  : inout std_logic_vector(conv_integer(((ext(integer_to_std
  (54,$QKTN_MAX(NUM_QS'length,32)) * ext(N3,$QKTN_MAX(NUM_QS'length,32)
  ),$QKTN_MAX(NUM_QS'length,32))) - integer_to_std(1,$QKTN_MAX(NUM_QS'length,32)
  ))) downto 0);  variable wptr  : in std_logic_vector(9 downto 0);  variable
   nrqsBusy  : in std_logic;  variable reqId  : inout std_logic_vector(7 downto
   0);  variable simTime  : in std_logic_vector(47 downto 0);  signal wptrP  :
   inout std_logic_vector(9 downto 0);  signal pushId  : inout std_logic_vector
  (63 downto 0);  signal buf0  : out std_logic_vector(61 downto 0);  signal
   pushEn  : out std_logic;  signal tbSync  : out std_logic;  signal pushAddr  :
   out std_logic_vector(9 downto 0);  signal pushLen  : out std_logic_vector(9
   downto 0)) is
    variable DUMMY4 : std_logic_vector(0 to 31) ;
    variable i : integer := 0 ;
  begin
    if (GFReset = '1') then
      scan := "0000000000" ;
      QwpS <= integer_to_std(0,abs(conv_integer(((ext(integer_to_std
      (54,$QKTN_MAX(NUM_QS'length,32)) * ext(N3,$QKTN_MAX(NUM_QS'length,32)
      ),$QKTN_MAX(NUM_QS'length,32))) - integer_to_std(1,$QKTN_MAX
      (NUM_QS'length,32)))))+1) ;
      QwptrP <= integer_to_std(0,abs(conv_integer(((ext(integer_to_std
      (18,$QKTN_MAX(32,NUM_QS'length)) * ext(NUM_QS,$QKTN_MAX(32,NUM_QS'length)
      ),$QKTN_MAX(32,NUM_QS'length))) - integer_to_std(1,$QKTN_MAX
      (32,NUM_QS'length)))))+1) ;
      wptrP <= "0000000000" ;
      reqId := "00000000" ;
      buf0 <= "00000000000000000000000000000000000000000000000000000000000000" ;
      pushEn <= '0' ;
      pushId <=
       "0000000000000000000000000000000000000000000000000000000000000000" ;
      pollState <= "00" ;
      tbSync <= '0' ;
    elsif ((GFLock = '0')) then
      DUMMY4 := ext(pollState,32);

      case DUMMY4  is
        when  "00000000000000000000000000000000"  =>
          if (pollQ = '1') then
            scan := "0000000000" ;
            for i in 0 to integer'PRED(conv_integer(NUM_QS)) loop --:o444
              QwpS((i * 18)+(18-1) downto (i * 18)) <= (QwptrL((i * 18)+(18-1)
               downto (i * 18)) - QwptrP((i * 18)+(18-1) downto (i * 18))) ;
            end loop;
            QwptrP <= QwptrL ;
            wptrP <= "0000000001" ;
            tbSync <= '0' ;
            pollState <= "01" ;
          else
            tbSync <= tbSyncRoot ;
          end if;
        when  "00000000000000000000000000000001"  =>
          scan := ext(ext(ext(scan,$QKTN_MAX($QKTN_MAX(NUM_QS'length,32
          ),MAX_MEM_PORTS'length)) + ext(SBLK,$QKTN_MAX($QKTN_MAX
          (NUM_QS'length,32),MAX_MEM_PORTS'length)),10),10) ;
          if (ext(scan,$QKTN_MAX(NUM_QS'length,32)) >= ext(N3,$QKTN_MAX
          (NUM_QS'length,32))) then
            pollState <= "10" ;
          end if;
          QwpS <= shr(QwpS,(ext((ext(ext(SBLK,$QKTN_MAX($QKTN_MAX
          (NUM_QS'length,32),MAX_MEM_PORTS'length)) * integer_to_std(3,$QKTN_MAX
          ($QKTN_MAX(NUM_QS'length,32),MAX_MEM_PORTS'length)),$QKTN_MAX
          ($QKTN_MAX(NUM_QS'length,32),MAX_MEM_PORTS'length))) * integer_to_std
          (18,$QKTN_MAX($QKTN_MAX(NUM_QS'length,32),MAX_MEM_PORTS'length)
          ),$QKTN_MAX($QKTN_MAX(NUM_QS'length,32),MAX_MEM_PORTS'length)))) ;
          wptrP <= wptr ;
        when  "00000000000000000000000000000010"  =>
          if (((ROOT = 0) or (nrqsBusy = '0'))) then
            reqId := ext((ext(reqId,32) + "00000000000000000000000000000001"),8)
             ;
            buf0 <= ext(std_logic_vector'(simTime & wptr & reqId),62) ;
            tbSync <= tbSyncRoot ;
            if (ext(wptrP,32) /= "00000000000000000000000000000000") then
              pushEn <= '1' ;
              pushAddr <= "0000000000" ;
              pushLen <= wptrP ;
              pushId <= (pushId +
               "0000000000000000000000000000000000000000000000000000000000000001"
              ) ;
            end if;
            pollState <= "11" ;
          end if;
        when  "00000000000000000000000000000011"  =>
          pushEn <= '0' ;
          tbSync <= tbSyncRoot ;
          if ((pollQ = '0')) then
            pollState <= "00" ;
          end if;
        when others => null ;
      end case;
    end if;
  end fsmReqId;
  signal DUMMY5 :  std_logic ;
  -- quickturn use_hardmacro_pack ixc_gf2_qstatus_buf
  -- quickturn fast_clock fclk

begin
  GFLock <= '0' ;
  simTime <= DUMMY2 when ROOT /= 0 else
   "000000000000000000000000000000000000000000000000" ;
  busy <= it_conv_std_logic(integer_to_std(ROOT,32) and ((ext(cqBusy,32) or ext
  (qsBusy,32)) or ext(nrqsBusy,32))) ;

  process --:o383
  (*)
  begin
    tbSyncRoot <= it_conv_std_logic(it_cond_op((ROOT)/=0,ext(DUMMY1,32
    ),"00000000000000000000000000000000")) ;
  end process ;
  Generate1 : if genblk1 : (((IS_SV)/=0 and (ROOT)/=0)) generate
  begin
    tpo : ixc_tbcpo_push
      generic map(ARCH => ARCH)
       ;
  end generate ;

  process --:o399
  (*)
    variable wptr_DUMMY0 : std_logic_vector(9 downto 0) ;
    variable Qen3_DUMMY1 : std_logic ;
  begin
    wptr_DUMMY0 := wptr;
    Qen3_DUMMY1 := Qen3;
    ixc_gf2_qstatus_buf(0) <= std_logic_vector'(tbSync & busy & buf0) ;
    wptr_DUMMY0 := wptrP ;
    for sb in conv_integer(integer_to_std(0,10)) to integer'PRED(conv_integer
    (SBLK)) loop --:o402
      if (ext(wptr_DUMMY0,$QKTN_MAX(NUM_QS'length,32)) <= ext(N3,$QKTN_MAX
      (NUM_QS'length,32))) then
        Qen3_DUMMY1 := boolean_to_std(QwpS((54 * sb)+(54-1) downto (54 * sb)) /=
         "000000000000000000000000000000000000000000000000000000") ;
        if (Qen3_DUMMY1 = '1') then
          ixc_gf2_qstatus_buf(conv_integer(wptr_DUMMY0)) <= ext
          (std_logic_vector'(scan(9 downto LG_SBLK) & integer_to_std(sb,10)(
          (LG_SBLK - 1) downto 0) & QwpS((sb * 54)+(54-1) downto (sb * 54))),64)
           ;
        end if;
        wptr_DUMMY0 := (wptr_DUMMY0 + ext(Qen3_DUMMY1,10)) ;
      end if;
    end loop;
    wptr <= transport wptr_DUMMY0;
    Qen3 <= Qen3_DUMMY1;
  end process ;
  pollQFF : ixc_gf2_ff
    generic map(W => 1)
    port map (
       pollQs
      ,pollQ
    ) ;
  QwptrLD : ixc_gf2_latch
    generic map(W => conv_integer((ext(integer_to_std(18,$QKTN_MAX
    (NUM_QS'length,32)) * ext(NUM_QS,$QKTN_MAX(NUM_QS'length,32)),$QKTN_MAX
    (NUM_QS'length,32)))))
    port map (
       QwptrL
      ,Qwptr
      ,DUMMY5
    ) ;
  DUMMY5 <= (pollQ and not(pollQs)) ;
  uckg : ixc_uClkGen
    port map (
       uClk
    ) ;
  Generate2 : if genblk2 : ((IS_PTM)='1') generate
  begin

    process --:o426
    (uClk)
      variable scan_DUMMY2 : std_logic_vector(9 downto 0) ;
      variable reqId_DUMMY3 : std_logic_vector(7 downto 0) ;
    begin
      if (uClk'event and uClk = '1') then
        fsmReqId
        (DUMMY0,GFLock,pollState,pollQ,QwptrP,QwptrL,tbSyncRoot,scan_DUMMY2,QwpS,wptr,nrqsBusy,reqId_DUMMY3,simTime,wptrP,pushId,buf0,pushEn,tbSync,pushAddr,pushLen
        ) ;
      end if ;
      scan <= transport scan_DUMMY2;
      reqId <= reqId_DUMMY3;
    end process ;
  else DUMMY6 : generate
  begin

    process --:o426
    (fclk)
      variable scan_DUMMY4 : std_logic_vector(9 downto 0) ;
      variable reqId_DUMMY5 : std_logic_vector(7 downto 0) ;
    begin
      if (fclk'event and fclk = '1') then
        fsmReqId
        (DUMMY0,GFLock,pollState,pollQ,QwptrP,QwptrL,tbSyncRoot,scan_DUMMY4,QwpS,wptr,nrqsBusy,reqId_DUMMY5,simTime,wptrP,pushId,buf0,pushEn,tbSync,pushAddr,pushLen
        ) ;
      end if ;
      scan <= transport scan_DUMMY4;
      reqId <= reqId_DUMMY5;
    end process ;
  end generate ;

  process --:o491
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      pushCtlWord(15 downto 0) <= ext(pushId,16) ;
      pushCtlWord(39 downto 16) <= ext(pushLen,24) ;
      pushCtlWord(63 downto 40) <= ext(pushAddr,24) ;
    end if ;
  end process ;

  process --:o496
  (*)
  begin
    ixc_gf2_qstatus_buf(conv_integer((ext(BUF_SIZE,$QKTN_MAX(NUM_QS'length,32))
     - integer_to_std(1,$QKTN_MAX(NUM_QS'length,32))))) <= pushCtlWord ;
  end process ;
  qsBusy <= boolean_to_std((ext(pollState,32) =
   "00000000000000000000000000000001" or ext(pollState,32) =
   "00000000000000000000000000000010")) ;
  Generate3 : if genblk3 : ((ROOT = 0)) generate
  begin
    nrqsBusy <= '1' when (qsBusy)='1' else 'Z' ;
  end generate ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
