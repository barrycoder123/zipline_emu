architecture module of ixc_ptz_port is
  -- quickturn always_on
  type DUMMY2 is array(integer range <>) of std_logic_vector(63 downto 0) ;
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

  signal fclk : std_logic ;
  signal uClk : std_logic ;
  signal ecmTime : std_logic_vector(39 downto 0) ;
  signal tbSync : std_logic ;
  signal recTs : std_logic ;
  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal s2h_nxt : std_logic_vector(7 downto 0) ;
  signal s2h_event : std_logic ;
  signal s2h_recTs : std_logic ;
  attribute _2_state_ of s2h_recTs: signal is 1 ;
  signal m_s2h : DUMMY2(0 to conv_integer((ext((ext(ext(S2H_PL,$QKTN_MAX
  ($QKTN_MAX(S2H_W'length,32),SF_BL'length)) * ext(S2H_SL1,$QKTN_MAX($QKTN_MAX
  (S2H_W'length,32),SF_BL'length)),$QKTN_MAX($QKTN_MAX(S2H_W'length,32
  ),SF_BL'length))) * ext(SF_BL,$QKTN_MAX($QKTN_MAX(S2H_W'length,32
  ),SF_BL'length)),$QKTN_MAX($QKTN_MAX(S2H_W'length,32),SF_BL'length))))) ;
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
  signal sf_ptr : std_logic_vector((S2H_SA - 1) downto 0) ;
  attribute _2_state_ of sf_ptr: signal is 1 ;
  signal s2h_last : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of s2h_last: signal is 1 ;
  signal s2h_cnt : std_logic_vector(7 downto 0) ;
  attribute _2_state_ of s2h_cnt: signal is 1 ;
  signal _zz_s2hp : std_logic_vector(conv_integer(((ext(ext(S2H_PW,$QKTN_MAX
  (S2H_W'length,32)) * ext(S2H_SL1,$QKTN_MAX(S2H_W'length,32)),$QKTN_MAX
  (S2H_W'length,32))) - integer_to_std(1,$QKTN_MAX(S2H_W'length,32)))) downto 0)
   ;
  attribute _2_state_ of _zz_s2hp: signal is 1 ;
  signal i : integer ;
  signal recData : std_logic_vector(63 downto 0) ;
  attribute _2_state_ of recData: signal is 1 ;
  signal state : std_logic_vector(1 downto 0) ;
  attribute _2_state_ of state: signal is 1 ;
  signal ptxBusy : std_logic ;
  attribute _2_state_ of ptxBusy: signal is 1 ;
  signal ptxHoldEcm : std_logic ;
  attribute _2_state_ of ptxHoldEcm: signal is 1 ;
  -- quickturn fast_clock fclk
  -- quickturn use_hardmacro_pack m_s2h

begin
  s2h_nxt <= ext((ext(s2h_cnt,32) + "00000000000000000000000000000001"),8) ;
  s2h_event <= boolean_to_std(s2h_last(7 downto 0) = s2h_nxt) ;
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

  process --:o3687
  (*)
  begin
    if (recTs = '1') then
      recData <= ext(std_logic_vector'(tbSync & ecmTime & s2h_cnt),64) ;
    end if;
  end process ;

  process --:o3688
  (uClk)
  begin
    if (uClk'event and uClk = '1') then
      m_s2h(conv_integer((ext((ext(ext(S2H_PL,$QKTN_MAX($QKTN_MAX
      (S2H_W'length,32),SF_BL'length)) * ext(S2H_SL1,$QKTN_MAX($QKTN_MAX
      (S2H_W'length,32),SF_BL'length)),$QKTN_MAX($QKTN_MAX(S2H_W'length,32
      ),SF_BL'length))) * ext(SF_BL,$QKTN_MAX($QKTN_MAX(S2H_W'length,32
      ),SF_BL'length)),$QKTN_MAX($QKTN_MAX(S2H_W'length,32),SF_BL'length))))) <=
       recData ;
    end if ;
  end process ;
  Generate1 : if genblk1 : (ext(S2H_W,$QKTN_MAX(S2H_W'length,32)) =
   integer_to_std(0,$QKTN_MAX(S2H_W'length,32))) generate
  begin

    process --:o3691
    (*)
    begin
      s2h_last(7 downto 0) <= ext(m_s2h(conv_integer(s2h_rptr)),8) ;
    end process ;
  elsif DUMMY3 : (ext(S2H_W,$QKTN_MAX(S2H_W'length,32)) <= integer_to_std
  (56,$QKTN_MAX(S2H_W'length,32))) generate
  begin

    process --:o3696
    (*)
      constant DUMMY4 : integer := abs(conv_integer((ext(S2H_W,$QKTN_MAX
      (S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX(S2H_W'length,32)))))+1 ;
      variable DUMMY5 : std_logic_vector(1 to DUMMY4+8) ;
    begin
      DUMMY5 := ext(m_s2h(conv_integer(((ext(ext(s2h_rptr,$QKTN_MAX(abs((S2H_SA
       - 1))+1,32)) * integer_to_std(2,$QKTN_MAX(abs((S2H_SA - 1))+1,32)
      ),$QKTN_MAX(abs((S2H_SA - 1))+1,32))) + integer_to_std(1,$QKTN_MAX(abs(
      (S2H_SA - 1))+1,32))))),abs(conv_integer((ext(S2H_W,$QKTN_MAX
      (S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX(S2H_W'length,32)))))+9) ;
      s2h_last(7 downto 0) <= DUMMY5(DUMMY4+1 to DUMMY4+8) ;
      s2h(conv_integer((ext(S2H_W,$QKTN_MAX(S2H_W'length,32)) - integer_to_std
      (1,$QKTN_MAX(S2H_W'length,32)))) downto 0) <= DUMMY5(1 to DUMMY4) ;
    end process ;
  else DUMMY6 : generate
  begin

    process --:o3700
    (*)
    begin
      for i in 0 to integer'PRED(conv_integer(S2H_PL)) loop --:o3701
        s2h_port((i * 64)+(64-1) downto (i * 64)) <= m_s2h(conv_integer(((ext
        (ext(s2h_rptr,$QKTN_MAX(abs((S2H_SA - 1))+1,$QKTN_MAX(S2H_W'length,32)))
         * ext(S2H_PL,$QKTN_MAX(abs((S2H_SA - 1))+1,$QKTN_MAX(S2H_W'length,32))
        ),$QKTN_MAX(abs((S2H_SA - 1))+1,$QKTN_MAX(S2H_W'length,32)))) +
         integer_to_std(i,$QKTN_MAX(abs((S2H_SA - 1))+1,$QKTN_MAX
        (S2H_W'length,32)))))) ;
      end loop;
    end process ;

    process --:o3705
    (*)
    begin
      for i in 0 to integer'PRED(conv_integer(S2H_SL1)) loop --:o3706
        if (s2h_en(i) = '1') then
          _zz_s2hp(conv_integer((ext(integer_to_std(i,$QKTN_MAX(S2H_W'length,32)
          ) * ext(S2H_PW,$QKTN_MAX(S2H_W'length,32)),$QKTN_MAX(S2H_W'length,32))
          ))+(conv_integer(S2H_PW)-1) downto conv_integer((ext(integer_to_std
          (i,$QKTN_MAX(S2H_W'length,32)) * ext(S2H_PW,$QKTN_MAX(S2H_W'length,32)
          ),$QKTN_MAX(S2H_W'length,32))))) <= ext(s2h_port,(conv_integer(S2H_PW)
          )) ;
        end if;
      end loop;
    end process ;

    process --:o3710
    (*)
      constant DUMMY7 : integer := abs(conv_integer((ext(S2HW,$QKTN_MAX
      (S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX(S2H_W'length,32)))))+1 ;
      variable DUMMY8 : std_logic_vector(1 to DUMMY7+64) ;
    begin
      DUMMY8 := ext(_zz_s2hp,abs(conv_integer((ext(S2HW,$QKTN_MAX
      (S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX(S2H_W'length,32)))))+65) ;
      s2h <= DUMMY8(65 to DUMMY7+64) ;
      s2h_last <= DUMMY8(1 to 64) ;
    end process ;
  end generate ;
  DUMMY1 <= '1' when (ptxHoldEcm)='1' else 'Z' ;
  DUMMY0 <= '1' when ((ptxBusy)='1' or (s2h_event)='1') else 'Z' ;

  process --:o3735
  (*)
  begin
    ptxHoldEcm <= '0' ;

    case state is
      when  "00"  =>
        if (((s2h_event)='1' and ext(S2H_SL,$QKTN_MAX(S2H_W'length,32)) =
         integer_to_std(1,$QKTN_MAX(S2H_W'length,32)))) then
          ptxHoldEcm <= '1' ;
        end if;
      when  "01"  =>
        if (ext(s2h_rptr,$QKTN_MAX(abs((S2H_SA - 1))+1,$QKTN_MAX(S2H_W'length,32
        ))) = (ext(sf_ptr,$QKTN_MAX(abs((S2H_SA - 1))+1,$QKTN_MAX
        (S2H_W'length,32))) + (ext(S2H_SL,$QKTN_MAX(abs((S2H_SA - 1)
        )+1,$QKTN_MAX(S2H_W'length,32))) - integer_to_std(1,$QKTN_MAX(abs(
        (S2H_SA - 1))+1,$QKTN_MAX(S2H_W'length,32)))))) then
          ptxHoldEcm <= '1' ;
        end if;
      when others => null ;
    end case;
  end process ;

  process --:o3745
  (uClk)
    variable s2h_recTs_DUMMY0 : std_logic ;
    variable s2h_en_DUMMY1 : std_logic_vector(conv_integer((ext
    (S2H_SL1,$QKTN_MAX(S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX
    (S2H_W'length,32)))) downto 0) ;
    variable s2h_rptr_DUMMY2 : std_logic_vector((S2H_SA - 1) downto 0) ;
    variable sf_ptr_DUMMY3 : std_logic_vector((S2H_SA - 1) downto 0) ;
  begin
    if (uClk'event and uClk = '1') then

      case state is
        when  "00"  =>
          ptxBusy <= '0' ;
          if (s2h_event = '1') then
            ptxBusy <= '1' ;
            s2h_cnt <= s2h_last(7 downto 0) ;
            if (ext(S2H_SL,$QKTN_MAX(S2H_W'length,32)) = integer_to_std
            (1,$QKTN_MAX(S2H_W'length,32))) then
              s2h_notify <= '1' ;
              s2h_recTs_DUMMY0 := not(s2h_recTs_DUMMY0) ;
              s2h_en_DUMMY1 := integer_to_std(0,abs(conv_integer((ext
              (S2H_SL1,$QKTN_MAX(S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX
              (S2H_W'length,32)))))+1) ;
              state <= std_logic_vector'("10") ;
            else
              state <= std_logic_vector'("01") ;
              s2h_rptr_DUMMY2 := sf_ptr_DUMMY3 ;
              s2h_en_DUMMY1 := integer_to_std(1,abs(conv_integer((ext
              (S2H_SL1,$QKTN_MAX(S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX
              (S2H_W'length,32)))))+1) ;
            end if;
          else
            s2h_rptr_DUMMY2 := ext(ext(ext(sf_ptr_DUMMY3,$QKTN_MAX(abs((S2H_SA -
             1))+1,$QKTN_MAX(S2H_W'length,32))) + (ext(S2H_SL1,$QKTN_MAX(abs(
            (S2H_SA - 1))+1,$QKTN_MAX(S2H_W'length,32))) - integer_to_std
            (1,$QKTN_MAX(abs((S2H_SA - 1))+1,$QKTN_MAX(S2H_W'length,32)))),abs(
            (S2H_SA - 1))+1),abs((S2H_SA - 1))+1) ;
            s2h_en_DUMMY1 := ext(S2H_EN_LAST,abs(conv_integer((ext
            (S2H_SL1,$QKTN_MAX(S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX
            (S2H_W'length,32)))))+1) ;
          end if;
        when  "01"  =>
          if (ext(s2h_rptr_DUMMY2,$QKTN_MAX(abs((S2H_SA - 1))+1,$QKTN_MAX
          (S2H_W'length,32))) = (ext(sf_ptr_DUMMY3,$QKTN_MAX(abs((S2H_SA - 1)
          )+1,$QKTN_MAX(S2H_W'length,32))) + (ext(S2H_SL,$QKTN_MAX(abs((S2H_SA -
           1))+1,$QKTN_MAX(S2H_W'length,32))) - integer_to_std(1,$QKTN_MAX(abs(
          (S2H_SA - 1))+1,$QKTN_MAX(S2H_W'length,32)))))) then
            s2h_notify <= '1' ;
            s2h_recTs_DUMMY0 := not(s2h_recTs_DUMMY0) ;
            s2h_en_DUMMY1 := integer_to_std(0,abs(conv_integer((ext
            (S2H_SL1,$QKTN_MAX(S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX
            (S2H_W'length,32)))))+1) ;
            state <= std_logic_vector'("10") ;
          else
            s2h_rptr_DUMMY2 := (ext(s2h_rptr_DUMMY2,abs((S2H_SA - 1))+1) + ext
            ("1",abs((S2H_SA - 1))+1)) ;
            s2h_en_DUMMY1 := shl(s2h_en_DUMMY1,integer_to_std(1,32)) ;
          end if;
        when  "10"  =>
          s2h_notify <= '0' ;
          state <= std_logic_vector'("00") ;
          sf_ptr_DUMMY3 := ext(ext(ext(sf_ptr_DUMMY3,$QKTN_MAX(abs((S2H_SA - 1)
          )+1,$QKTN_MAX(S2H_W'length,32))) + ext(S2H_SL1,$QKTN_MAX(abs((S2H_SA -
           1))+1,$QKTN_MAX(S2H_W'length,32))),abs((S2H_SA - 1))+1),abs((S2H_SA -
           1))+1) ;
          if (ext(sf_ptr_DUMMY3,$QKTN_MAX(abs((S2H_SA - 1))+1,$QKTN_MAX
          ($QKTN_MAX(S2H_W'length,32),SF_BL'length))) = (ext(ext
          (S2H_SL1,$QKTN_MAX(abs((S2H_SA - 1))+1,$QKTN_MAX($QKTN_MAX
          (S2H_W'length,32),SF_BL'length))) * ext(SF_BL,$QKTN_MAX(abs((S2H_SA -
           1))+1,$QKTN_MAX($QKTN_MAX(S2H_W'length,32),SF_BL'length))),$QKTN_MAX
          (abs((S2H_SA - 1))+1,$QKTN_MAX($QKTN_MAX(S2H_W'length,32),SF_BL'length
          ))))) then
            sf_ptr_DUMMY3 := integer_to_std(0,abs((S2H_SA - 1))+1) ;
          end if;
          s2h_rptr_DUMMY2 := ext(ext(ext(sf_ptr_DUMMY3,$QKTN_MAX(abs((S2H_SA - 1
          ))+1,$QKTN_MAX(S2H_W'length,32))) + (ext(S2H_SL1,$QKTN_MAX(abs((S2H_SA
           - 1))+1,$QKTN_MAX(S2H_W'length,32))) - integer_to_std(1,$QKTN_MAX(abs
          ((S2H_SA - 1))+1,$QKTN_MAX(S2H_W'length,32)))),abs((S2H_SA - 1))+1
          ),abs((S2H_SA - 1))+1) ;
          s2h_en_DUMMY1 := ext(S2H_EN_LAST,abs(conv_integer((ext
          (S2H_SL1,$QKTN_MAX(S2H_W'length,32)) - integer_to_std(1,$QKTN_MAX
          (S2H_W'length,32)))))+1) ;
        when others => null ;
      end case;
    end if ;
    s2h_recTs <= transport s2h_recTs_DUMMY0;
    s2h_en <= s2h_en_DUMMY1;
    s2h_rptr <= s2h_rptr_DUMMY2;
    sf_ptr <= sf_ptr_DUMMY3;
  end process ;
end module;
