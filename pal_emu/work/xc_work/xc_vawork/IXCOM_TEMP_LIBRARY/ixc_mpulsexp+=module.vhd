architecture module of ixc_mpulseXp is
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
  h1 : ecm_holdToEOT
    port map (
       evh
      ,ev
    ) ;
  oe <= not(evh) ;
  p <= ev ;
  _zzqnthw : Q_NOT_TOUCH
     ;
end module;
