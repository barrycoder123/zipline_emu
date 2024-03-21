architecture module of ixc_mpulse is
  -- quickturn CVASTRPROP MODULE HDLICE PROP_IXCOM_MOD TRUE
  component Q_EVDECT
    port (
      Q : out std_logic ;
      A : in std_logic := 'X' ;
    OE : in std_logic := 'X' ) ;
  end component ;

  component Q_LPULSE
    port (
      A : in std_logic := 'X' ;
      Z : out std_logic ;
    S : in std_logic := 'X' ) ;
  end component ;

  component ecm_holdToEOT
    port (
      evh : out std_logic ;
    ev : in std_logic := 'X' ) ;
  end component ;

  component Q_NOT_TOUCH
    port (
    sig : in std_logic := 'X' ) ;
  end component ;

  signal ev : std_logic ;
  signal evh : std_logic ;
  signal oe : std_logic ;

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
  Generate1 : if genblk2 : (PULSE = 1) generate
  begin
    p1 : Q_LPULSE
      port map (
         Z => p
        ,A => ev
      ) ;
  else DUMMY0 : generate
  begin
    p <= (evh or ev) ;
  end generate ;
  h1 : ecm_holdToEOT
    port map (
       evh
      ,ev
    ) ;
  oe <= not(evh) ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
