architecture module of ixc_sampleXp is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_EV_WOR_START
    port (
    A : in std_logic := 'X' ) ;
  end component ;

  signal fclk : std_logic ;
  signal DUMMY0 : std_logic ;
  signal DUMMY1 : std_logic ;
  signal _zzsv : std_logic_vector((WIDTH - 1) downto 0) ;
  signal DUMMY2 : std_logic ;
  attribute _2_state_ of DUMMY2: signal is 1 ;
  -- quickturn fast_clock fclk

begin
  Generate1 : if genblk1 : (DUMMY3 = 4) generate
  begin

    process --:o1231
    (*)
    begin
      if (not(DUMMY0) = '1') then
        _zzsv <= v ;
      end if;
    end process ;
    sv <= _zzsv ;
  elsif DUMMY4 : (DUMMY3 = 3) generate
    signal xpChg : std_logic ;
  begin
    xpChg <= boolean_to_std(ext(_zzsv,abs((WIDTH - 1))+1) /= ext(v,abs((WIDTH -
     1))+1)) ;

    process --:o1238
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        if (not(DUMMY0) = '1') then
          _zzsv <= v ;
        end if;
      end if ;
    end process ;
    DUMMY1 <= '1' when (xpChg)='1' else 'Z' ;
    sv <= _zzsv ;
    qes : Q_EV_WOR_START
      port map (
         xpChg
      ) ;
  elsif DUMMY5 : (DUMMY3 = 0) generate
  begin

    process --:o1254
    (fclk)
    begin
      if (fclk'event and fclk = '1') then
        if (not(DUMMY0) = '1') then
          _zzsv <= v ;
        end if;
      end if ;
    end process ;
    sv <= _zzsv ;
  else DUMMY6 : generate
  begin
    sv <= v ;
  end generate ;
end module;
