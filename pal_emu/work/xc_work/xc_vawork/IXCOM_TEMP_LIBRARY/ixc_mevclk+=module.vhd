architecture module of ixc_mevClk is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_EV_WOR_START
    port (
    A : in std_logic := 'X' ) ;
  end component ;

  component Q_LPULSE
    port (
      A : in std_logic := 'X' ;
      Z : out std_logic ;
    S : in std_logic := 'X' ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal evs : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0)
   ;
  signal evOn : std_logic ;
  signal bEvOn : std_logic ;
  signal clkOnI : std_logic ;
  signal clkOn : std_logic ;
  signal mixOn : std_logic ;
  signal bEvWait : std_logic ;
  signal wEvWait : std_logic ;
  signal fclk : std_logic ;
  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal DUMMY2 : std_logic ;
  signal holdF : std_logic ;
  signal bwEn : std_logic ;
  signal ensD : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0)
   ;
  attribute _2_state_ of ensD: signal is 1 ;
  signal wEvOn : std_logic ;
  attribute _2_state_ of wEvOn: signal is 1 ;
  signal loopOn : std_logic ;
  attribute _2_state_ of loopOn: signal is 1 ;
  signal bEvOnD : std_logic ;
  attribute _2_state_ of bEvOnD: signal is 1 ;
  signal _zzev : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0)
   ;
  attribute _2_state_ of _zzev: signal is 1 ;
  signal _zzevp : std_logic_vector(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))) downto 0)
   ;
  attribute _2_state_ of _zzevp: signal is 1 ;
  signal bClkHoldD : std_logic ;
  attribute _2_state_ of bClkHoldD: signal is 1 ;
  signal holdFD : std_logic ;
  attribute _2_state_ of holdFD: signal is 1 ;
  signal _zzClkOn : std_logic ;
  attribute _2_state_ of _zzClkOn: signal is 1 ;
  -- quickturn fast_clock fclk

begin
  holdF <= it_conv_std_logic(((integer_to_std(HOLD,32) and ext(DUMMY7,32)) and
   ext(DUMMY1,32)) or ext(bClkHoldD,32)) ;
  bwEn <= it_conv_std_logic(ext(bwOn,32) or (ext(DUMMY7,32) and integer_to_std
  (HOLD,32))) ;
  genblk1 : for i in 0 to conv_integer(WIDTH) - 1 generate
  begin
    Generate1 : if genblk1 : ((IS_EDGED(i))='1') generate
    begin
      Generate2 : if genblk1 : ((POLARITY(i))='1') generate
      begin

        process --:o3007
        (clks(i))
        begin
          if (clks(i)'event and clks(i) = '0') then
            _zzev(i) <= not(_zzev(i)) ;
          end if ;
        end process ;
      else DUMMY8 : generate
      begin

        process --:o3009
        (clks(i))
        begin
          if (clks(i)'event and clks(i) = '1') then
            _zzev(i) <= not(_zzev(i)) ;
          end if ;
        end process ;
      end generate ;

      process --:o3011
      (fclk)
      begin
        if (fclk'event and fclk = '1') then
          if (DUMMY1 = '1') then
            _zzevp(i) <= _zzev(i) ;
          end if;
        end if ;
      end process ;
      evs(i) <= (DUMMY1 and (_zzev(i) xor _zzevp(i))) ;
    else DUMMY9 : generate
    begin
      Generate3 : if genblk1 : ((POLARITY(i))='1') generate
      begin
        evs(i) <= (DUMMY1 and clks(i)) ;
      else DUMMY10 : generate
      begin

        process --:o3017
        (fclk)
        begin
          if (fclk'event and fclk = '1') then
            if (DUMMY1 = '1') then
              _zzev(i) <= clks(i) ;
            end if;
          end if ;
        end process ;
        evs(i) <= (DUMMY1 and (_zzev(i) xor clks(i))) ;
      end generate ;
    end generate ;
  end generate ;

  process --:o3024
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      ensD <= ext(ens,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
       integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) ;
    end if ;
  end process ;
  evOn <= or_reduce((((ext(evs,abs(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) and
   ext(ensD,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
   integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1)) and not(ext(DMS,abs
  (conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std
  (1,$QKTN_MAX(WIDTH'length,32)))))+1))) and not(ext(WAIT_EV,abs(conv_integer(
  (ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX
  (WIDTH'length,32)))))+1)))) ;
  bEvOn <= or_reduce(((((ext(evs,abs(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) and
   ext(ens,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
   integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1)) and ext(ensD,abs
  (conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std
  (1,$QKTN_MAX(WIDTH'length,32)))))+1)) and ext(DMS,abs(conv_integer((ext
  (WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX
  (WIDTH'length,32)))))+1)) and not(ext(WAIT_EV,abs(conv_integer((ext
  (WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX
  (WIDTH'length,32)))))+1)))) ;
  bEvWait <= bEvOn ;
  mixOn <= or_reduce((((ext(evs,abs(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) and
   ext(ensD,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
   integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1)) and ext(DM,abs
  (conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std
  (1,$QKTN_MAX(WIDTH'length,32)))))+1)) and not(ext(WAIT_EV,abs(conv_integer(
  (ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX
  (WIDTH'length,32)))))+1)))) ;
  wEvWait <= or_reduce(((ext(evs,abs(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) and
   ext(ens,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
   integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1)) and ext(WAIT_EV,abs
  (conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) - integer_to_std
  (1,$QKTN_MAX(WIDTH'length,32)))))+1))) ;
  Generate4 : if genblk2 : ((WAIT_EV)/="0") generate
  begin

    process --:o3042
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        wEvOn <= wEvWait ;
      end if ;
    end process ;
  else DUMMY11 : generate
  begin

    process --:o3044
    (*)
    begin
      wEvOn <= '0' ;
    end process ;
  end generate ;
  Generate5 : if genblk3 : ((DUMMY3)/="0") generate
  begin

    process --:o3048
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        loopOn <= DUMMY5 ;
      end if ;
    end process ;
  else DUMMY12 : generate
  begin

    process --:o3050
    (*)
    begin
      loopOn <= '0' ;
    end process ;
  end generate ;
  Generate6 : if genblk4 : (((ext(DMS,abs(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) and
   not(ext(WAIT_EV,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
   integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1)))/="0")) generate
  begin

    process --:o3054
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        if (not(DUMMY1) = '1') then
          bEvOnD <= '0' ;
        else
          bEvOnD <= bEvOn ;
        end if;
      end if ;
    end process ;
    clkOnI <= (((evOn and not(mixOn)) or bEvOnD) or wEvOn) ;
  else DUMMY13 : generate
  begin
    clkOnI <= (evOn or wEvOn) ;
  end generate ;

  process --:o3066
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      bClkHoldD <= DUMMY2 ;
    end if ;
  end process ;

  process --:o3070
  (fclk)
  begin
    if (fclk'event and fclk = '1') then
      holdFD <= holdF ;
    end if ;
  end process ;

  process --:o3073
  (*)
  begin
    if (((clkOnI)='1' or (loopOn)='1')) then
      _zzClkOn <= '1' ;
    elsif (not(holdFD) = '1') then
      _zzClkOn <= '0' ;
    end if;
  end process ;
  clkOn <= (not(holdF) and _zzClkOn) ;
  active <= (clkOnI or _zzClkOn) ;
  busy <= loopOn ;
  bwOn <= it_conv_std_logic((ext(bEvWait,DUMMY3'length) or ext
  (wEvWait,DUMMY3'length)) or (ext(DUMMY3,DUMMY3'length) and ext
  (DUMMY5,DUMMY3'length))) ;
  DUMMY0 <= '1' when (bwEn)='1' else 'Z' ;
  Generate7 : if genblk5 : (((ext(DMS,abs(conv_integer((ext(WIDTH,$QKTN_MAX
  (WIDTH'length,32)) - integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1) and
   not(ext(WAIT_EV,abs(conv_integer((ext(WIDTH,$QKTN_MAX(WIDTH'length,32)) -
   integer_to_std(1,$QKTN_MAX(WIDTH'length,32)))))+1)))/="0")) generate
  begin
    qi1 : Q_EV_WOR_START
      port map (
         bEvWait
      ) ;
  end generate ;
  Generate8 : if genblk6 : ((WAIT_EV)/="0") generate
  begin
    qi2 : Q_EV_WOR_START
      port map (
         wEvWait
      ) ;
  end generate ;
  Generate9 : if genblk7 : ((DUMMY3)/="0") generate
  begin
    qi3 : Q_EV_WOR_START
      port map (
         DUMMY5
      ) ;
  end generate ;
  Generate10 : if genblk8 : ((HOLD)/=0) generate
  begin
    qi4 : Q_EV_WOR_START
      port map (
         DUMMY7
      ) ;
  end generate ;
  p0 : Q_LPULSE
    port map (
       Z => xclk
      ,A => clkOn
    ) ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
