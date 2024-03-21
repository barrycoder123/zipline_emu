architecture module of ixc_mtoggle is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_EVDECT
    port (
      Q : out std_logic ;
      A : in std_logic := 'X' ;
    OE : in std_logic := 'X' ) ;
  end component ;

  component ecm_holdToEOT
    port (
      evh : out std_logic ;
    ev : in std_logic := 'X' ) ;
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

  signal oe : std_logic ;
  signal ev : std_logic ;
  signal clk : std_logic ;
  signal _zztg : std_logic ;
  attribute _2_state_ of _zztg: signal is 1 ;

begin
  genblk1 : for i in 0 to conv_integer(WIDTH) - 1 generate
  begin
    dect : Q_EVDECT
      port map (
         ev
        ,v(i)
        ,oe
      ) ;
  end generate ;
  Generate1 : if genblk2 : ((RTLONLY)/=0) generate
  begin
    oe <= '1' ;
  else DUMMY0 : generate
    signal evh : std_logic ;
  begin
    h1 : ecm_holdToEOT
      port map (
         evh
        ,ev
      ) ;
    oe <= not(evh) ;
  end generate ;
  Generate2 : if genblk3 : ((PULSE)/=0) generate
  begin
    p1 : Q_LPULSE
      port map (
         Z => p
        ,A => ev
      ) ;
  else DUMMY1 : generate
  begin
    p1 : Q_LPULSE
      port map (
         Z => clk
        ,A => ev
      ) ;

    process --:o2892
    (clk)
    begin
      if (clk'event and clk = '1') then
        _zztg <= not(_zztg) ;
      end if ;
    end process ;
    p <= _zztg ;
  end generate ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
