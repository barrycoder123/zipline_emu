architecture module of ixc_ptx_port is
  -- quickturn always_on
  type DUMMY6 is array(integer range <>) of std_logic_vector(63 downto 0) ;
  -- quickturn CVASTRPROP MODULE HDLICE ALWAYS_ON TRUE
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component ixc_uClkGen
    port (
    uclk : out std_logic ) ;
  end component ;

  component ixc_rec_ts
    port (
      recTs : in std_logic := 'X' ;
      ecmTs : out std_logic_vector(39 downto 0) ;
      tbSync : out std_logic ;
    recAck : out std_logic ) ;
  end component ;

  component Q_EV_WOR_START
    port (
    A : in std_logic := 'X' ) ;
  end component ;

  signal fclk : std_logic ;
  signal uClk : std_logic ;
  signal ecmTime : std_logic_vector(39 downto 0) ;
  signal tbSync : std_logic ;
  signal recTs : std_logic ;
  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic ;
  signal DUMMY3 : std_logic ;
  signal DUMMY4 : std_logic ;
  signal DUMMY5 : std_logic ;
  signal holdClk : std_logic ;
  signal s2h_event : std_logic ;
  signal s2h_recTs : std_logic ;
  attribute _2_state_ of s2h_recTs: signal is 1 ;
  signal m_s2h : DUMMY6(0 to conv_integer((ext(ext(S2H_PL,$QKTN_MAX
  (S2H_W'length,32)) * ext(S2H_SL1,$QKTN_MAX(S2H_W'length,32)),$QKTN_MAX
  (S2H_W'length,32))))) ;
  attribute _2_state_ of m_s2h: signal is 1 ;
  signal s2h_port : std_logic_vector(conv_integer((ext(S2H_PW,$QKTN_MAX
  (S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX(S2H_W'length,32)))) downto 0)
   ;
  attribute _2_state_ of s2h_port: signal is 1 ;
  signal s2h_en : std_logic_vector(conv_integer((ext(S2H_SL1,$QKTN_MAX
  (S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX(S2H_W'length,32)))) downto 0)
   ;
  attribute _2_state_ of s2h_en: signal is 1 ;
  signal s2h_rptr : std_logic_vector((S2H_SA - 1) downto 0) ;
  attribute _2_state_ of s2h_rptr: signal is 1 ;
  signal s2h_last : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of s2h_last: signal is 1 ;
  signal s2h_cnt : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of s2h_cnt: signal is 1 ;
  signal s2h_cntP : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of s2h_cntP: signal is 1 ;
  signal _zz_s2hp : std_logic_vector(conv_integer(((ext(ext(S2H_PW,$QKTN_MAX
  (S2H_W'length,32)) * ext(S2H_SL1,$QKTN_MAX(S2H_W'length,32)),$QKTN_MAX
  (S2H_W'length,32))) - integer_to_std(1,$QKTN_MAX(S2H_W'length,32)))) downto 0)
   ;
  attribute _2_state_ of _zz_s2hp: signal is 1 ;
  signal i : integer ;
  signal recData : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of recData: signal is 1 ;
  signal m_h2s : DUMMY6(0 to conv_integer(((ext(ext(H2S_PL,$QKTN_MAX
  (H2S_W'length,32)) * ext(H2S_SL1,$QKTN_MAX(H2S_W'length,32)),$QKTN_MAX
  (H2S_W'length,32))) - integer_to_std(1,$QKTN_MAX(H2S_W'length,32))))) ;
  attribute _2_state_ of m_h2s: signal is 1 ;
  signal h2s_port : std_logic_vector(conv_integer((ext(H2S_PW,$QKTN_MAX
  (H2S_W'length,32)) - integer_to_std(1,$QKTN_MAX(H2S_W'length,32)))) downto 0)
   ;
  attribute _2_state_ of h2s_port: signal is 1 ;
  signal h2s_en : std_logic_vector(conv_integer((ext(H2S_SL1,$QKTN_MAX
  (H2S_W'length,32)) - integer_to_std(1,$QKTN_MAX(H2S_W'length,32)))) downto 0)
   ;
  attribute _2_state_ of h2s_en: signal is 1 ;
  signal h2s_wptr : std_logic_vector((H2S_SA - 1) downto 0) ;
  attribute _2_state_ of h2s_wptr: signal is 1 ;
  signal h2s_cnt : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of h2s_cnt: signal is 1 ;
  signal h2sp : std_logic_vector(conv_integer(((ext(ext(H2S_PW,$QKTN_MAX
  (H2S_W'length,32)) * ext(H2S_SL1,$QKTN_MAX(H2S_W'length,32)),$QKTN_MAX
  (H2S_W'length,32))) - integer_to_std(1,$QKTN_MAX(H2S_W'length,32)))) downto 0)
   ;
  attribute _2_state_ of h2sp: signal is 1 ;
  signal h2s_header : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of h2s_header: signal is 1 ;
  signal h2s_notifyP : std_logic ;
  attribute _2_state_ of h2s_notifyP: signal is 1 ;
  signal h2s_event : std_logic ;
  attribute _2_state_ of h2s_event: signal is 1 ;
  signal h2s_eventP : std_logic ;
  attribute _2_state_ of h2s_eventP: signal is 1 ;
  signal s2h_notifyR : std_logic ;
  attribute _2_state_ of s2h_notifyR: signal is 1 ;
  signal state : std_logic_vector(1 downto 0) ;
  attribute _2_state_ of state: signal is 1 ;
  signal ptxSync : std_logic ;
  attribute _2_state_ of ptxSync: signal is 1 ;
  signal ptxBusy : std_logic ;
  attribute _2_state_ of ptxBusy: signal is 1 ;
  signal ptxHoldEcm : std_logic ;
  attribute _2_state_ of ptxHoldEcm: signal is 1 ;
  -- quickturn fast_clock fclk
  -- quickturn use_hardmacro_pack m_s2h
  -- quickturn use_hardmacro_pack m_h2s

begin
  s2h_event <= boolean_to_std(s2h_last(0) /= s2h_cnt(0)) ;
  uckg : ixc_uClkGen
    port map (
       uClk
    ) ;
  rci : ixc_rec_ts
    port map (
       s2h_recTs
      ,ecmTime
      ,tbSync
      ,recTs
    ) ;

  process --:o2311
  (*)
  begin
    if (recTs = '1') then
      recData <= ext(std_logic_vector'(tbSync & ecmTime & s2h_cnt),64) ;
    end if;
  end process ;

  process --:o2312
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      m_s2h(conv_integer((ext(ext(S2H_PL,$QKTN_MAX(S2H_W'length,32)) * ext
      (S2H_SL1,$QKTN_MAX(S2H_W'length,32)),$QKTN_MAX(S2H_W'length,32))))) <=
       recData ;
    end if ;
  end process ;

  process --:o2314
  (*)
  begin
    for i in 0 to integer'PRED(conv_integer(S2H_SL1)) loop --:o2315
      if (s2h_en(i) = '1') then
        _zz_s2hp(conv_integer((ext(integer_to_std(i,$QKTN_MAX(S2H_W'length,32))
         * ext(S2H_PW,$QKTN_MAX(S2H_W'length,32)),$QKTN_MAX(S2H_W'length,32))))+
        (conv_integer(S2H_PW)-1) downto conv_integer((ext(integer_to_std
        (i,$QKTN_MAX(S2H_W'length,32)) * ext(S2H_PW,$QKTN_MAX(S2H_W'length,32)
        ),$QKTN_MAX(S2H_W'length,32))))) <= ext(s2h_port,(conv_integer(S2H_PW)))
         ;
      end if;
    end loop;
  end process ;

  process --:o2320
  (*)
    constant DUMMY7 : integer := abs(conv_integer((ext(S2HW,$QKTN_MAX
    (S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX(S2H_W'length,32)))))+1 ;
    variable DUMMY8 : std_logic_vector(1 to DUMMY7+64) ;
  begin
    if (ext(S2H_W,$QKTN_MAX(S2H_W'length,32)) = integer_to_std(0,$QKTN_MAX
    (S2H_W'length,32))) then
      s2h_last <= ext(_zz_s2hp,64) ;
    else
      DUMMY8 := ext(_zz_s2hp,abs(conv_integer((ext(S2HW,$QKTN_MAX
      (S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX(S2H_W'length,32)))))+65) ;
      s2h <= DUMMY8(65 to DUMMY7+64) ;
      s2h_last <= DUMMY8(1 to 64) ;
    end if;
  end process ;

  process --:o2329
  (*)
  begin
    for i in 0 to integer'PRED(conv_integer(S2H_PL)) loop --:o2330
      s2h_port((i * 64)+(64-1) downto (i * 64)) <= m_s2h(conv_integer(((ext(ext
      (s2h_rptr,$QKTN_MAX(abs((S2H_SA - 1))+1,$QKTN_MAX(S2H_W'length,32))) * ext
      (S2H_PL,$QKTN_MAX(abs((S2H_SA - 1))+1,$QKTN_MAX(S2H_W'length,32))
      ),$QKTN_MAX(abs((S2H_SA - 1))+1,$QKTN_MAX(S2H_W'length,32)))) +
       integer_to_std(i,$QKTN_MAX(abs((S2H_SA - 1))+1,$QKTN_MAX(S2H_W'length,32)
      ))))) ;
    end loop;
  end process ;

  process --:o2353
  (*)
  begin
    h2s_event <= boolean_to_std(h2s_notify /= h2s_notifyP) ;
  end process ;
  Generate1 : if genblk1 : (((PTYPE = 2 or PTYPE = 4) and ext(H2S_W,$QKTN_MAX
  (H2S_W'length,32)) <= integer_to_std(512,$QKTN_MAX(H2S_W'length,32))))
   generate
  begin

    process --:o2363
    (uClk)
      variable h2s_header_DUMMY0 : std_logic_vector(63 downto 0) ;
    begin
      if (uClk'event and uClk = '1') then
        h2s_header_DUMMY0 := ext(std_logic_vector'(tbSync & ecmTime & std_logic'
        ('1') & h2s_cnt),64) ;
        if (h2s_en /= "0") then
          m_h2s(0) <= h2s_header_DUMMY0 ;
        end if;
      end if ;
      h2s_header <= transport h2s_header_DUMMY0;
    end process ;
  else DUMMY9 : generate
  begin

    process --:o2370
    (*)
      variable h2s_header_DUMMY1 : std_logic_vector(63 downto 0) ;
      variable h2sp_DUMMY2 : std_logic_vector(conv_integer(((ext(ext
      (H2S_PW,$QKTN_MAX(H2S_W'length,32)) * ext(H2S_SL1,$QKTN_MAX
      (H2S_W'length,32)),$QKTN_MAX(H2S_W'length,32))) - integer_to_std
      (1,$QKTN_MAX(H2S_W'length,32)))) downto 0) ;
      variable h2s_port_DUMMY3 : std_logic_vector(conv_integer((ext
      (H2S_PW,$QKTN_MAX(H2S_W'length,32)) - integer_to_std(1,$QKTN_MAX
      (H2S_W'length,32)))) downto 0) ;
    begin
      h2s_header_DUMMY1 := h2s_header;
      h2sp_DUMMY2 := h2sp;
      h2s_port_DUMMY3 := h2s_port;
      h2s_header_DUMMY1 := ext(std_logic_vector'(tbSync & ecmTime & h2s_event &
       h2s_cnt),64) ;
      h2sp_DUMMY2 := ext(std_logic_vector'(h2s & h2s_header_DUMMY1),abs
      (conv_integer(((ext(ext(H2S_PW,$QKTN_MAX(H2S_W'length,32)) * ext
      (H2S_SL1,$QKTN_MAX(H2S_W'length,32)),$QKTN_MAX(H2S_W'length,32))) -
       integer_to_std(1,$QKTN_MAX(H2S_W'length,32)))))+1) ;
      h2s_port_DUMMY3 := ext(it_multiple_concat(std_logic'('0'),conv_integer
      (H2S_PW)),abs(conv_integer((ext(H2S_PW,$QKTN_MAX(H2S_W'length,32)) -
       integer_to_std(1,$QKTN_MAX(H2S_W'length,32)))))+1) ;
      for i in 0 to integer'PRED(conv_integer(H2S_SL1)) loop --:o2374
        h2s_port_DUMMY3 := (ext(h2s_port_DUMMY3,abs(conv_integer((ext
        (H2S_PW,$QKTN_MAX(H2S_W'length,32)) - integer_to_std(1,$QKTN_MAX
        (H2S_W'length,32)))))+1) or it_cond_op((h2s_en(i))='1',ext(h2sp_DUMMY2
        (conv_integer((ext(integer_to_std(i,$QKTN_MAX(H2S_W'length,32)) * ext
        (H2S_PW,$QKTN_MAX(H2S_W'length,32)),$QKTN_MAX(H2S_W'length,32))))+
        (conv_integer(H2S_PW)-1) downto conv_integer((ext(integer_to_std
        (i,$QKTN_MAX(H2S_W'length,32)) * ext(H2S_PW,$QKTN_MAX(H2S_W'length,32)
        ),$QKTN_MAX(H2S_W'length,32))))),abs(conv_integer((ext(H2S_PW,$QKTN_MAX
        (H2S_W'length,32)) - integer_to_std(1,$QKTN_MAX(H2S_W'length,32)))))+1
        ),ext(it_multiple_concat(std_logic'('0'),conv_integer(H2S_PW)),abs
        (conv_integer((ext(H2S_PW,$QKTN_MAX(H2S_W'length,32)) - integer_to_std
        (1,$QKTN_MAX(H2S_W'length,32)))))+1))) ;
      end loop;
      h2s_header <= transport h2s_header_DUMMY1;
      h2sp <= h2sp_DUMMY2;
      h2s_port <= h2s_port_DUMMY3;
    end process ;

    process --:o2379
    (uClk)
    begin
      if (uClk'event and uClk = '1') then
        if (h2s_en /= "0") then
          for i in 0 to integer'PRED(conv_integer(H2S_PL)) loop --:o2381
            m_h2s(conv_integer(((ext(ext(h2s_wptr,$QKTN_MAX(abs((H2S_SA - 1)
            )+1,$QKTN_MAX(H2S_W'length,32))) * ext(H2S_PL,$QKTN_MAX(abs((H2S_SA
             - 1))+1,$QKTN_MAX(H2S_W'length,32))),$QKTN_MAX(abs((H2S_SA - 1)
            )+1,$QKTN_MAX(H2S_W'length,32)))) + integer_to_std(i,$QKTN_MAX(abs(
            (H2S_SA - 1))+1,$QKTN_MAX(H2S_W'length,32)))))) <= h2s_port((i * 64
            )+(64-1) downto (i * 64)) ;
          end loop;
        end if;
      end if ;
    end process ;
  end generate ;
  s2h_notify <= s2h_notifyR ;
  DUMMY1 <= '1' when ((ptxBusy)='1' or (s2h_event)='1') else 'Z' ;
  DUMMY5 <= '1' when (ptxHoldEcm)='1' else 'Z' ;
  Generate2 : if genblk2 : ((PTYPE = 0 or PTYPE = 2 or PTYPE = 4)) generate
    signal asyncOn : std_logic ;
    signal nbrun : std_logic ;
    signal ptxCallOn : std_logic ;
    signal callOn : std_logic ;
    signal stopOn : std_logic ;
    signal doneInit : std_logic ;
    attribute _2_state_ of doneInit: signal is 1 ;
  begin
    asyncOn <= s2h_last(9) ;
    nbrun <= s2h_last(10) ;
    ptxCallOn <= s2h_last(11) ;
    callOn <= boolean_to_std(((h2s_event)='1' or ext(state,32) /=
     "00000000000000000000000000000000")) ;
    stopOn <= boolean_to_std(((h2s_event)='1' and (nbrun = '0'))) ;
    Generate3 : if genblk1 : (PTYPE = 0) generate
    begin
      holdClk <= boolean_to_std(((callOn)='1' and (asyncOn = '0') and (ptxCallOn
       = '0') and (DUMMY4 = '0'))) ;
      DUMMY2 <= '1' when (holdClk)='1' else 'Z' ;
      qhclk : Q_EV_WOR_START
        port map (
           holdClk
        ) ;
    elsif DUMMY10 : (PTYPE = 2) generate
    begin
      holdClk <= boolean_to_std(((callOn)='1' and (asyncOn = '0') and (DUMMY4 =
       '0'))) ;
      DUMMY2 <= '1' when (holdClk)='1' else 'Z' ;
      qhclk : Q_EV_WOR_START
        port map (
           holdClk
        ) ;
    else DUMMY11 : generate
    begin
      DUMMY0 <= '1' when (stopOn)='1' else 'Z' ;
      qstp : Q_EV_WOR_START
        port map (
           stopOn
        ) ;
    end generate ;

    process --:o2457
    (*)
    begin
      ptxHoldEcm <= '0' ;

      case state is
        when  "10"  =>
          if ((s2h_last(7 downto 0) /= s2h_cntP and ext(S2H_W,$QKTN_MAX
          (S2H_W'length,32)) = integer_to_std(0,$QKTN_MAX(S2H_W'length,32))))
           then
            ptxHoldEcm <= '1' ;
          end if;
        when  "11"  =>
          if ((ext(s2h_rptr,$QKTN_MAX(abs((S2H_SA - 1))+1,$QKTN_MAX
          (S2H_W'length,32))) = (ext(S2H_SL,$QKTN_MAX(abs((S2H_SA - 1)
          )+1,$QKTN_MAX(S2H_W'length,32))) - integer_to_std(1,$QKTN_MAX(abs(
          (S2H_SA - 1))+1,$QKTN_MAX(S2H_W'length,32)))) and ext(S2H_W,$QKTN_MAX
          (S2H_W'length,32)) /= integer_to_std(0,$QKTN_MAX(S2H_W'length,32))))
           then
            ptxHoldEcm <= '1' ;
          end if;
        when others => null ;
      end case;
    end process ;

    process --:o2471
    (uClk)
      variable h2s_wptr_DUMMY4 : std_logic_vector((H2S_SA - 1) downto 0) ;
      variable h2s_en_DUMMY5 : std_logic_vector(conv_integer((ext
      (H2S_SL1,$QKTN_MAX(H2S_W'length,32)) - integer_to_std(1,$QKTN_MAX
      (H2S_W'length,32)))) downto 0) ;
      variable h2s_cnt_DUMMY6 : std_logic_vector(7 downto 0) ;
      variable s2h_rptr_DUMMY7 : std_logic_vector((S2H_SA - 1) downto 0) ;
      variable s2h_en_DUMMY8 : std_logic_vector(conv_integer((ext
      (S2H_SL1,$QKTN_MAX(S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX
      (S2H_W'length,32)))) downto 0) ;
      variable s2h_cnt_DUMMY9 : std_logic_vector(7 downto 0) ;
      variable s2h_notifyR_DUMMY10 : std_logic ;
      variable s2h_recTs_DUMMY11 : std_logic ;
    begin
      if (uClk'event and uClk = '1') then

        case state is
          when  "00"  =>
            ptxBusy <= '0' ;
            if ((doneInit = '0')) then
              doneInit <= '1' ;
              call_gf <= '1' ;
              h2s_wptr_DUMMY4 := integer_to_std(0,abs((H2S_SA - 1))+1) ;
              h2s_en_DUMMY5 := ext("1",abs(conv_integer((ext(H2S_SL1,$QKTN_MAX
              (H2S_W'length,32)) - integer_to_std(1,$QKTN_MAX(H2S_W'length,32)))
              ))+1) ;
            end if;
            if (h2s_event = '1') then
              h2s_notifyP <= h2s_notify ;
              ptxBusy <= '1' ;
              if (ext(H2S_SL1,$QKTN_MAX(H2S_W'length,32)) = integer_to_std
              (1,$QKTN_MAX(H2S_W'length,32))) then
                h2s_cnt_DUMMY6 := ext((ext(h2s_cnt_DUMMY6,32) +
                 "00000000000000000000000000000001"),8) ;
                h2s_wptr_DUMMY4 := integer_to_std(0,abs((H2S_SA - 1))+1) ;
                h2s_en_DUMMY5 := ext("1",abs(conv_integer((ext(H2S_SL1,$QKTN_MAX
                (H2S_W'length,32)) - integer_to_std(1,$QKTN_MAX(H2S_W'length,32)
                ))))+1) ;
                state <= std_logic_vector'("10") ;
                s2h_rptr_DUMMY7 := fxt(ext(ext(S2H_SL1,$QKTN_MAX(abs((S2H_SA - 1
                ))+1,$QKTN_MAX(S2H_W'length,32))) - integer_to_std(1,$QKTN_MAX
                (abs((S2H_SA - 1))+1,$QKTN_MAX(S2H_W'length,32))),abs((S2H_SA -
                 1))+1),abs((S2H_SA - 1))+1) ;
                s2h_en_DUMMY8 := ext(S2H_EN_LAST,abs(conv_integer((ext
                (S2H_SL1,$QKTN_MAX(S2H_W'length,32)) - integer_to_std
                (1,$QKTN_MAX(S2H_W'length,32)))))+1) ;
              else
                h2s_wptr_DUMMY4 := integer_to_std(1,abs((H2S_SA - 1))+1) ;
                h2s_en_DUMMY5 := shl(h2s_en_DUMMY5,integer_to_std(1,32)) ;
                state <= std_logic_vector'("01") ;
              end if;
            end if;
          when  "01"  =>
            if (ext(h2s_wptr_DUMMY4,$QKTN_MAX(abs((H2S_SA - 1))+1,$QKTN_MAX
            (H2S_W'length,32))) < (ext(H2S_SL1,$QKTN_MAX(abs((H2S_SA - 1)
            )+1,$QKTN_MAX(H2S_W'length,32))) - integer_to_std(1,$QKTN_MAX(abs(
            (H2S_SA - 1))+1,$QKTN_MAX(H2S_W'length,32))))) then
              h2s_wptr_DUMMY4 := (ext(h2s_wptr_DUMMY4,abs((H2S_SA - 1))+1) + ext
              ("1",abs((H2S_SA - 1))+1)) ;
              h2s_en_DUMMY5 := shl(h2s_en_DUMMY5,integer_to_std(1,32)) ;
            else
              h2s_cnt_DUMMY6 := ext((ext(h2s_cnt_DUMMY6,32) +
               "00000000000000000000000000000001"),8) ;
              h2s_wptr_DUMMY4 := integer_to_std(0,abs((H2S_SA - 1))+1) ;
              h2s_en_DUMMY5 := ext("1",abs(conv_integer((ext(H2S_SL1,$QKTN_MAX
              (H2S_W'length,32)) - integer_to_std(1,$QKTN_MAX(H2S_W'length,32)))
              ))+1) ;
              state <= std_logic_vector'("10") ;
              s2h_rptr_DUMMY7 := fxt(ext(ext(S2H_SL1,$QKTN_MAX(abs((S2H_SA - 1)
              )+1,$QKTN_MAX(S2H_W'length,32))) - integer_to_std(1,$QKTN_MAX(abs(
              (S2H_SA - 1))+1,$QKTN_MAX(S2H_W'length,32))),abs((S2H_SA - 1))+1
              ),abs((S2H_SA - 1))+1) ;
              s2h_en_DUMMY8 := ext(S2H_EN_LAST,abs(conv_integer((ext
              (S2H_SL1,$QKTN_MAX(S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX
              (S2H_W'length,32)))))+1) ;
            end if;
          when  "10"  =>
            h2s_en_DUMMY5 := integer_to_std(0,abs(conv_integer((ext
            (H2S_SL1,$QKTN_MAX(H2S_W'length,32)) - integer_to_std(1,$QKTN_MAX
            (H2S_W'length,32)))))+1) ;
            s2h_cnt_DUMMY9 := s2h_last(7 downto 0) ;
            ptxBusy <= '0' ;
            if (s2h_cnt_DUMMY9 /= s2h_cntP) then
              s2h_cntP <= s2h_cnt_DUMMY9 ;
              ptxBusy <= '1' ;
              if (ext(S2H_W,$QKTN_MAX(S2H_W'length,32)) = integer_to_std
              (0,$QKTN_MAX(S2H_W'length,32))) then
                s2h_notifyR_DUMMY10 := not(s2h_notifyR_DUMMY10) ;
                s2h_recTs_DUMMY11 := not(s2h_recTs_DUMMY11) ;
                h2s_wptr_DUMMY4 := integer_to_std(0,abs((H2S_SA - 1))+1) ;
                h2s_en_DUMMY5 := ext("1",abs(conv_integer((ext(H2S_SL1,$QKTN_MAX
                (H2S_W'length,32)) - integer_to_std(1,$QKTN_MAX(H2S_W'length,32)
                ))))+1) ;
                state <= std_logic_vector'("00") ;
                s2h_en_DUMMY8 := integer_to_std(0,abs(conv_integer((ext
                (S2H_SL1,$QKTN_MAX(S2H_W'length,32)) - integer_to_std
                (1,$QKTN_MAX(S2H_W'length,32)))))+1) ;
              else
                state <= std_logic_vector'("11") ;
                s2h_rptr_DUMMY7 := integer_to_std(0,abs((S2H_SA - 1))+1) ;
                s2h_en_DUMMY8 := ext("1",abs(conv_integer((ext(S2H_SL1,$QKTN_MAX
                (S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX(S2H_W'length,32)
                ))))+1) ;
              end if;
            end if;
          when  "11"  =>
            if (ext(s2h_rptr_DUMMY7,$QKTN_MAX(abs((S2H_SA - 1))+1,$QKTN_MAX
            (S2H_W'length,32))) = (ext(S2H_SL,$QKTN_MAX(abs((S2H_SA - 1)
            )+1,$QKTN_MAX(S2H_W'length,32))) - integer_to_std(1,$QKTN_MAX(abs(
            (S2H_SA - 1))+1,$QKTN_MAX(S2H_W'length,32))))) then
              s2h_notifyR_DUMMY10 := not(s2h_notifyR_DUMMY10) ;
              s2h_recTs_DUMMY11 := not(s2h_recTs_DUMMY11) ;
              h2s_wptr_DUMMY4 := integer_to_std(0,abs((H2S_SA - 1))+1) ;
              h2s_en_DUMMY5 := ext("1",abs(conv_integer((ext(H2S_SL1,$QKTN_MAX
              (H2S_W'length,32)) - integer_to_std(1,$QKTN_MAX(H2S_W'length,32)))
              ))+1) ;
              state <= std_logic_vector'("00") ;
              s2h_en_DUMMY8 := integer_to_std(0,abs(conv_integer((ext
              (S2H_SL1,$QKTN_MAX(S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX
              (S2H_W'length,32)))))+1) ;
            else
              s2h_rptr_DUMMY7 := (ext(s2h_rptr_DUMMY7,abs((S2H_SA - 1))+1) + ext
              ("1",abs((S2H_SA - 1))+1)) ;
              s2h_en_DUMMY8 := shl(s2h_en_DUMMY8,integer_to_std(1,32)) ;
            end if;
          when others => null ;
        end case;
      end if ;
      h2s_wptr <= transport h2s_wptr_DUMMY4;
      h2s_en <= h2s_en_DUMMY5;
      h2s_cnt <= h2s_cnt_DUMMY6;
      s2h_rptr <= s2h_rptr_DUMMY7;
      s2h_en <= s2h_en_DUMMY8;
      s2h_cnt <= s2h_cnt_DUMMY9;
      s2h_notifyR <= s2h_notifyR_DUMMY10;
      s2h_recTs <= s2h_recTs_DUMMY11;
    end process ;
  else DUMMY12 : generate
    signal nbrun : std_logic ;
    signal syncPtiCall : std_logic ;
    signal holdClk : std_logic ;
    signal ptxSyncRtn : std_logic ;
    signal stopOn : std_logic ;
    signal s2h_notifyL : std_logic ;
    attribute _2_state_ of s2h_notifyL: signal is 1 ;
  begin
    nbrun <= s2h_last(9) ;
    syncPtiCall <= s2h_last(10) ;
    holdClk <= boolean_to_std(((ptxSync = '0') and (syncPtiCall)='1' and (
    (h2s_event)='1' or state /= std_logic_vector'("10")) and (DUMMY4 = '0'))) ;
    ptxSyncRtn <= (ptxSync and h2s_event) ;
    stopOn <= boolean_to_std(((ptxSyncRtn)='1' and (nbrun = '0'))) ;
    Generate4 : if genblk1 : (PTYPE = 1) generate
    begin
      DUMMY0 <= '1' when (stopOn)='1' else 'Z' ;
      qStop : Q_EV_WOR_START
        port map (
           stopOn
        ) ;
      DUMMY3 <= '1' when (h2s_event)='1' else 'Z' ;
      DUMMY2 <= '1' when (holdClk)='1' else 'Z' ;
      qhclk : Q_EV_WOR_START
        port map (
           holdClk
        ) ;
    end generate ;

    process --:o2565
    (*)
    begin
      ptxHoldEcm <= '0' ;

      case state is
        when  "00"  =>
          if ((s2h_last(7 downto 0) /= s2h_cntP and ext(S2H_W,$QKTN_MAX
          (S2H_W'length,32)) = integer_to_std(0,$QKTN_MAX(S2H_W'length,32))))
           then
            ptxHoldEcm <= '1' ;
          end if;
        when  "01"  =>
          if (ext(s2h_rptr,$QKTN_MAX(abs((S2H_SA - 1))+1,$QKTN_MAX
          (S2H_W'length,32))) = (ext(S2H_SL,$QKTN_MAX(abs((S2H_SA - 1)
          )+1,$QKTN_MAX(S2H_W'length,32))) - integer_to_std(1,$QKTN_MAX(abs(
          (S2H_SA - 1))+1,$QKTN_MAX(S2H_W'length,32))))) then
            ptxHoldEcm <= '1' ;
          end if;
        when others => null ;
      end case;
    end process ;

    process --:o2580
    (uClk)
      variable h2s_en_DUMMY12 : std_logic_vector(conv_integer((ext
      (H2S_SL1,$QKTN_MAX(H2S_W'length,32)) - integer_to_std(1,$QKTN_MAX
      (H2S_W'length,32)))) downto 0) ;
      variable s2h_cnt_DUMMY13 : std_logic_vector(7 downto 0) ;
      variable s2h_notifyR_DUMMY14 : std_logic ;
      variable s2h_recTs_DUMMY15 : std_logic ;
      variable s2h_en_DUMMY16 : std_logic_vector(conv_integer((ext
      (S2H_SL1,$QKTN_MAX(S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX
      (S2H_W'length,32)))) downto 0) ;
      variable h2s_wptr_DUMMY17 : std_logic_vector((H2S_SA - 1) downto 0) ;
      variable s2h_rptr_DUMMY18 : std_logic_vector((S2H_SA - 1) downto 0) ;
      variable h2s_cnt_DUMMY19 : std_logic_vector(7 downto 0) ;
    begin
      if (uClk'event and uClk = '1') then

        case state is
          when  "00"  =>
            ptxBusy <= '0' ;
            h2s_en_DUMMY12 := integer_to_std(0,abs(conv_integer((ext
            (H2S_SL1,$QKTN_MAX(H2S_W'length,32)) - integer_to_std(1,$QKTN_MAX
            (H2S_W'length,32)))))+1) ;
            s2h_cnt_DUMMY13 := s2h_last(7 downto 0) ;
            ptxSync <= s2h_last(8) ;
            if (s2h_cnt_DUMMY13 /= s2h_cntP) then
              s2h_cntP <= s2h_cnt_DUMMY13 ;
              ptxBusy <= '1' ;
              if (ext(S2H_W,$QKTN_MAX(S2H_W'length,32)) = integer_to_std
              (0,$QKTN_MAX(S2H_W'length,32))) then
                s2h_notifyR_DUMMY14 := it_cond_op(PTYPE = 3,std_logic'('1'),not
                (s2h_notifyR_DUMMY14)) ;
                s2h_recTs_DUMMY15 := not(s2h_recTs_DUMMY15) ;
                s2h_en_DUMMY16 := integer_to_std(0,abs(conv_integer((ext
                (S2H_SL1,$QKTN_MAX(S2H_W'length,32)) - integer_to_std
                (1,$QKTN_MAX(S2H_W'length,32)))))+1) ;
                state <= std_logic_vector'("10") ;
                h2s_wptr_DUMMY17 := integer_to_std(0,abs((H2S_SA - 1))+1) ;
                h2s_en_DUMMY12 := ext("1",abs(conv_integer((ext
                (H2S_SL1,$QKTN_MAX(H2S_W'length,32)) - integer_to_std
                (1,$QKTN_MAX(H2S_W'length,32)))))+1) ;
              else
                state <= std_logic_vector'("01") ;
                s2h_rptr_DUMMY18 := integer_to_std(0,abs((S2H_SA - 1))+1) ;
                s2h_en_DUMMY16 := integer_to_std(1,abs(conv_integer((ext
                (S2H_SL1,$QKTN_MAX(S2H_W'length,32)) - integer_to_std
                (1,$QKTN_MAX(S2H_W'length,32)))))+1) ;
              end if;
            else
              s2h_rptr_DUMMY18 := fxt(ext(ext(S2H_SL1,$QKTN_MAX(abs((S2H_SA - 1)
              )+1,$QKTN_MAX(S2H_W'length,32))) - integer_to_std(1,$QKTN_MAX(abs(
              (S2H_SA - 1))+1,$QKTN_MAX(S2H_W'length,32))),abs((S2H_SA - 1))+1
              ),abs((S2H_SA - 1))+1) ;
              s2h_en_DUMMY16 := ext(S2H_EN_LAST,abs(conv_integer((ext
              (S2H_SL1,$QKTN_MAX(S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX
              (S2H_W'length,32)))))+1) ;
            end if;
          when  "01"  =>
            if (ext(s2h_rptr_DUMMY18,$QKTN_MAX(abs((S2H_SA - 1))+1,$QKTN_MAX
            (S2H_W'length,32))) = (ext(S2H_SL,$QKTN_MAX(abs((S2H_SA - 1)
            )+1,$QKTN_MAX(S2H_W'length,32))) - integer_to_std(1,$QKTN_MAX(abs(
            (S2H_SA - 1))+1,$QKTN_MAX(S2H_W'length,32))))) then
              s2h_notifyR_DUMMY14 := it_cond_op(PTYPE = 3,std_logic'('1'),not
              (s2h_notifyR_DUMMY14)) ;
              s2h_recTs_DUMMY15 := not(s2h_recTs_DUMMY15) ;
              s2h_en_DUMMY16 := integer_to_std(0,abs(conv_integer((ext
              (S2H_SL1,$QKTN_MAX(S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX
              (S2H_W'length,32)))))+1) ;
              state <= std_logic_vector'("10") ;
              h2s_wptr_DUMMY17 := integer_to_std(0,abs((H2S_SA - 1))+1) ;
              h2s_en_DUMMY12 := ext("1",abs(conv_integer((ext(H2S_SL1,$QKTN_MAX
              (H2S_W'length,32)) - integer_to_std(1,$QKTN_MAX(H2S_W'length,32)))
              ))+1) ;
            else
              s2h_rptr_DUMMY18 := (ext(s2h_rptr_DUMMY18,abs((S2H_SA - 1))+1) +
               ext("1",abs((S2H_SA - 1))+1)) ;
              s2h_en_DUMMY16 := shl(s2h_en_DUMMY16,integer_to_std(1,32)) ;
            end if;
          when  "10"  =>
            ptxBusy <= '0' ;
            if (PTYPE = 3) then
              s2h_notifyR_DUMMY14 := '0' ;
            end if;
            if (h2s_event = '1') then
              h2s_notifyP <= h2s_notify ;
              ptxBusy <= '1' ;
              if (ext(H2S_SL1,$QKTN_MAX(H2S_W'length,32)) = integer_to_std
              (1,$QKTN_MAX(H2S_W'length,32))) then
                h2s_cnt_DUMMY19 := ext((ext(h2s_cnt_DUMMY19,32) +
                 "00000000000000000000000000000001"),8) ;
                h2s_wptr_DUMMY17 := integer_to_std(0,abs((H2S_SA - 1))+1) ;
                h2s_en_DUMMY12 := ext("1",abs(conv_integer((ext
                (H2S_SL1,$QKTN_MAX(H2S_W'length,32)) - integer_to_std
                (1,$QKTN_MAX(H2S_W'length,32)))))+1) ;
                state <= std_logic_vector'("00") ;
                s2h_rptr_DUMMY18 := fxt(ext(ext(S2H_SL1,$QKTN_MAX(abs((S2H_SA -
                 1))+1,$QKTN_MAX(S2H_W'length,32))) - integer_to_std(1,$QKTN_MAX
                (abs((S2H_SA - 1))+1,$QKTN_MAX(S2H_W'length,32))),abs((S2H_SA -
                 1))+1),abs((S2H_SA - 1))+1) ;
                s2h_en_DUMMY16 := ext(S2H_EN_LAST,abs(conv_integer((ext
                (S2H_SL1,$QKTN_MAX(S2H_W'length,32)) - integer_to_std
                (1,$QKTN_MAX(S2H_W'length,32)))))+1) ;
              else
                h2s_wptr_DUMMY17 := integer_to_std(1,abs((H2S_SA - 1))+1) ;
                h2s_en_DUMMY12 := shl(h2s_en_DUMMY12,integer_to_std(1,32)) ;
                state <= std_logic_vector'("11") ;
              end if;
            end if;
          when  "11"  =>
            if (ext(h2s_wptr_DUMMY17,$QKTN_MAX(abs((H2S_SA - 1))+1,$QKTN_MAX
            (H2S_W'length,32))) < (ext(H2S_SL1,$QKTN_MAX(abs((H2S_SA - 1)
            )+1,$QKTN_MAX(H2S_W'length,32))) - integer_to_std(1,$QKTN_MAX(abs(
            (H2S_SA - 1))+1,$QKTN_MAX(H2S_W'length,32))))) then
              h2s_wptr_DUMMY17 := (ext(h2s_wptr_DUMMY17,abs((H2S_SA - 1))+1) +
               ext("1",abs((H2S_SA - 1))+1)) ;
              h2s_en_DUMMY12 := shl(h2s_en_DUMMY12,integer_to_std(1,32)) ;
            else
              h2s_cnt_DUMMY19 := ext((ext(h2s_cnt_DUMMY19,32) +
               "00000000000000000000000000000001"),8) ;
              h2s_wptr_DUMMY17 := integer_to_std(0,abs((H2S_SA - 1))+1) ;
              h2s_en_DUMMY12 := integer_to_std(1,abs(conv_integer((ext
              (H2S_SL1,$QKTN_MAX(H2S_W'length,32)) - integer_to_std(1,$QKTN_MAX
              (H2S_W'length,32)))))+1) ;
              state <= std_logic_vector'("00") ;
              s2h_rptr_DUMMY18 := fxt(ext(ext(S2H_SL1,$QKTN_MAX(abs((S2H_SA - 1)
              )+1,$QKTN_MAX(S2H_W'length,32))) - integer_to_std(1,$QKTN_MAX(abs(
              (S2H_SA - 1))+1,$QKTN_MAX(S2H_W'length,32))),abs((S2H_SA - 1))+1
              ),abs((S2H_SA - 1))+1) ;
              s2h_en_DUMMY16 := ext(S2H_EN_LAST,abs(conv_integer((ext
              (S2H_SL1,$QKTN_MAX(S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX
              (S2H_W'length,32)))))+1) ;
            end if;
          when others => null ;
        end case;
      end if ;
      h2s_en <= transport h2s_en_DUMMY12;
      s2h_cnt <= s2h_cnt_DUMMY13;
      s2h_notifyR <= s2h_notifyR_DUMMY14;
      s2h_recTs <= s2h_recTs_DUMMY15;
      s2h_en <= s2h_en_DUMMY16;
      h2s_wptr <= h2s_wptr_DUMMY17;
      s2h_rptr <= s2h_rptr_DUMMY18;
      h2s_cnt <= h2s_cnt_DUMMY19;
    end process ;
  end generate ;
end module;
